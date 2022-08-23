do --:function_table

    -- POO | functions -- ->>
    local PROcc = {} PROcc.__index = PROcc -- Table:Class

    -- Função | -- Cadastra usuário ->>
    function PROcc:registrationUser(usuarios, cads, user, p) --:Table =>>
        local usuario = nil --:Table
        -- ->> --------------- <<- --
        while true do
            if #usuarios == 0 or cads == 'S' then
                print('\n - Cadastre um Usuário...')
                -- ->> --------------- <<- --
                usuario = user.nv({
                    p:log('Nome: '); nome = p:trat_string({
                        msg = 'Nome: ',
                        value = io.read('*line'),
                        msg_error = 'Porfavor escreva seu nome!!'
                    }).value,
                    p:log('Idade: '); idade = p:trat_int({
                        msg = 'Idade: ',
                        value = io.read('*line'),
                        msg_error = 'Porfavor apenas números!'
                    }).value,
                    p:log('Sexo: '); genero = p:trat_char({
                        msg = 'Sexo: ',
                        value = string.upper(io.read('*line')),
                        msg_error = 'Use masculino ou Feminino -> [M/F]'
                    }).value
                })

                table.insert(usuarios, usuario) cads = 'N'
            else
                p:printt('Você já contem um usuário salvo...')

                io.write('Gostaria de gadastrar um novo usuário? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end -- <<-
    end -- <<=

    -- Função | -- Cadastra evento ->>
    function PROcc:registrationEvent(eventos, cads, event, p) --:Table =>>
        local evento = nil --:Table
        -- ->> --------------- <<- --
        while true do
            if #eventos == 0 or cads == 'S' then
                print('\n - Cadastre um Evento...')
                -- ->> --------------- <<- --
                evento = event.nv({
                    p:log('Nome: '); nome = p:trat_string({
                        msg = 'Nome: ',
                        value = io.read('*line'),
                        msg_error = 'Porfavor escreva o nome do evento e sem números!!'
                    }),
                    p:log('Endereço: '); endereco = p:tip_string_desc({
                        msg = 'Endereço: ',
                        value = p:no_space(io.read('*line')),
                        msg_error = 'Porfavor um Endereço valido!'
                    }).value,
                    p:log('Categoria: '); categoria = p:tip_char_cat({
                        msg = 'categoria: ',
                        value = p:no_space(io.read('*line')),
                        msg_error = 'Use apenas -> [[F/E/S/I]]'
                    }),
                    p:log('Horario: '); horario = p:trat_int({
                        msg = 'Horario: ',
                        value = io.read('*line'),
                        msg_error = 'Use apenas números'
                    }),
                    p:log('Descrição: '); descricao = io.read('*line'),
                })

                table.insert(eventos, evento) cads = 'N'
                break
            else
                p:printt('Você já contem '.. #eventos .. ' eventos ' ..'cadastrados...')

                io.write('Gostaria de gadastrar mais um evento? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end -- <<-
    end -- <<=

    -- Função | -- Salva usuário ->>
    function PROcc:saveUser(users) --:Table_string_text
        local result = ''
        result = result .. ' - Usuários -- ->> ' .. '\n\n'
        for user=1, #users do
            result = result .. 'Index: ' .. (user or '') .. '\n'
            result = result .. '\tNome: ' .. (users[user].nome or '') .. '\n'
            result = result .. '\tIdade: ' .. (users[user].idade or '') .. '\n'
            result = result .. '\tSexo: ' .. (users[user].genero or '') .. '\n'
            result = result .. '-=-=-=-=-=-=-=-=-=-=' .. '\n'
        end return result
    end

    return PROcc -- <<- <<=:
end
