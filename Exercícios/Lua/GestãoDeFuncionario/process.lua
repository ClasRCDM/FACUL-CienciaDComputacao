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
            else
                print('') --:\n
                p:printt('Você já contem um funcionário salvo...')

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
            bruto = nil,
            liquido = nil
        }

        salario.bruto = (users[1].tb_horas * 10) + (users[1].dependentes * 60)
        salario.liquido = salario.bruto - p:desc(5 + 8.5, salario.bruto)
        -- ->> --------------- <<- --
        print('Nome: ' .. users[1].nome)
        print('Salário bruto: $' .. salario.bruto+.0)
        print('Salário líquido: $' .. salario.liquido)
    end

    return PROcc
end
