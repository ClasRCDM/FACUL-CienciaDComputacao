do --:function_table

    -- POO | functions -- ->>
    local PROcc = {} PROcc.__index = PROcc -- Table:Class

    -- Função | -- Trata o tipo ->>
    function PROcc:registrationUser(usuarios, cads, user, p) --:Table =>>
        local usuario = nil --:Table
        -- ->> --------------- <<- --
        while true do
            if #usuarios == 0 or cads == 'S' then
                usuario = user.nv({
                    p:log('Nome: '); nome = p:trat_string({
                        msg = 'Nome: ',
                        value = io.read('*line'),
                        msg_error = 'Porfavor escreva seu nome!!'
                    }),
                    p:log('Idade: '); idade = p:trat_int({
                        msg = 'Idade: ',
                        value = io.read('*line'),
                        msg_error = 'Porfavor apenas números!'
                    }).value,
                    p:log('Sexo: '); genero = p:trat_char({
                        msg = 'Sexo: ',
                        value = io.read('*line'),
                        msg_error = 'Use masculino ou Feminino -> [F/M]'
                    })
                })

                table.insert(usuarios, usuario)
                cads = 'N'
            else
                p:printt('Você já contem um usuário salvo...')

                io.write('Gostaria de gadastrar um novo usuário? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end
    end -- <<=

    function PROcc:registrationEvent(eventos, cads, p) --:Table =>>
        local evento = nil --:Table
        -- ->> --------------- <<- --
        while true do
            if #eventos == 0 or cads == 'S' then
                print(' - Cadastre um Evento...')
            else
                p:printt('Você já contem '.. #eventos .. ' eventos ' ..'cadastrados...')

                io.write('Gostaria de gadastrar mais um evento? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end
    end

    return PROcc
end
