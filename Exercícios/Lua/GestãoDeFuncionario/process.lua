do --:function_table

    -- POO | functions -- ->>
    local PROcc = {} PROcc.__index = PROcc -- Table:Class

    -- Função | -- Cadastra informações ->>
    function PROcc:registrationUser(usuarios, cads, user, p) --:Table =>>
        local usuario = nil --:Table
        -- ->> --------------- <<- --
        while true do
            if #usuarios == 0 or cads == 'S' then
                usuario = user.nv({
                    p:log('Nome: '); nome = p:trat_string({
                        value = io.read('*line'),
                        msg = 'Nome: ',
                        msg_error = 'Porfavor escreva seu nome!!'
                    }).value,
                    p:log('Horas trabalhadas: '); tb_horas = p:trat_int({
                        value = io.read('*line'),
                        msg = 'Horas trabalhadas: ',
                        msg_error = 'Não a necessidade de usar o H, use apenas números!'
                    }).value,
                    p:log('Dependentes: '); dependentes = p:trat_int({
                        value = io.read('*line'),
                        msg = 'Dependentes: ',
                        msg_error = 'Porfavor apenas números!'
                    }).value
                })

                table.insert(usuarios, usuario)
                cads = 'N'
                break
            else
                p:printt('\n - Você já contem um funcionário salvo...')

                io.write('Gostaria de gadastrar um novo? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end
    end -- <<=

    -- Função | -- Trabalha as informações ->>
    function PROcc:INFOuser(users, p) --:Table =>>
        local salario = --:Table_float
        {
            bruto = nil, --:float | int
            liquido = nil --:float | int
        }
        local func = 1 --:_
        -- ->> --------------- <<- --
        if #users > 1 then
            print([[
Você tem mais de um funcionário cadastro.
Caso queira o ultimo funcionário cadastro apenas aperte espaço,
ou o nome do mesmo para o ulitmo ou primeiro funcionário cadastrado,
também serve o index 1, 2, 3 e etc...]])

            while true do --:Loop
                ::loop:: --:Back to loop
                -- First
                p:log('\nQual funcionário? ')
                func = p:no_space(io.read('*line'))
                if func == '' or func == ' ' or func == nil then
                    func = 1
                    break
                end

                -- Index
                local r_isnumber = tonumber(func) == nil
                local r_thisnumber = type(string.match(func, '%d+')) ~= 'string'

                if not r_thisnumber and r_isnumber then
                    goto loop
                elseif r_thisnumber then
                    goto loop
                else
                    func = tonumber(func)
                    if func > #users then goto loop end
                    break
                end
            end
        end
        salario.bruto = (users[func].tb_horas * 10) + (users[func].dependentes * 60)
        salario.liquido = salario.bruto - p:desc(5 + 8.5, salario.bruto)
        -- ->> --------------- <<- --
        print('Nome: ' .. users[func].nome)
        print('Salário bruto: $' .. salario.bruto+.0)
        print('Salário líquido: $' .. salario.liquido)
    end

    return PROcc
end
