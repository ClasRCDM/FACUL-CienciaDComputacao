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
                    }),
                    p:log('Horas trabalhadas: '); idade = p:trat_int({
                        value = io.read('*line'),
                        msg = 'Horas trabalhadas: ',
                        msg_error = 'Não a necessidade de usar o H, use apenas números!'
                    }).value,
                    p:log('Dependentes: '); idade = p:trat_int({
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
    function PROcc:INFOuser(usuarios, cads, user, p) --:Table =>>
        print('') --:\n
        -- ->> --------------- <<- --
        print('Nome: None')
        print('Salário bruto: 0')
        print('Salário líquido: 0')
    end

    return PROcc
end
