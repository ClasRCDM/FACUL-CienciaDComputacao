do --:function_table

    -- POO | functions -- ->>
    local PROcc = {} PROcc.__index = PROcc -- Table:Class

    -- Função | -- Trata o tipo ->>
    function PROcc:registrationUser(usuarios, cads, user, p) --:Table =>>
        local usuario = nil
        -- ->> --------------- <<- --
        while true do
            if #usuarios == 0 or cads == 'S' then
                print(' - Cadastre um Usuário...')

                usuario = user.nv({
                    p:log('Nome: '); nome = p:trat({
                        tipo = "string",
                        value = io.read('*line'),
                        msg = 'Nome: ',
                        msg_error = 'Porfavor escreva seu nome!!'
                    }),
                    p:log('Idade: '); idade = p:trat({
                        tipo = "int",
                        value = io.read('*line'),
                        msg = 'Idade: ',
                        msg_error = 'Porfavor apenas números!'
                    }),
                    p:log('Sexo: '); genero = p:trat({
                        tipo = "char",
                        value = io.read('*line'),
                        msg = 'Sexo: ',
                        msg_error = 'Use masculino ou Feminino -> [F/M]'
                    })
                })

                table.insert(usuarios, usuario)
                cads = 'N'
            else
                p:printt('Você já contem um usuário salvo...')

                io.write('Gostaria de gadastrar um novo usuário? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then
                    break
                end
            end
        end
    end

    return PROcc
end
