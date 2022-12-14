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

                table.insert(usuarios, usuario)
                cads = 'N'
                break
            else
                p:printt('Você já contem um usuário salvo...')

                io.write('\nGostaria de gadastrar um novo usuário? ')
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
                    }).value,
                    p:log('Endereço: '); endereco = p:tip_string_desc({
                        msg = 'Endereço: ',
                        value = p:no_space(io.read('*line')),
                        msg_error = 'Porfavor um Endereço valido!'
                    }).value,
                    p:log('Categoria: '); categoria = p:tip_char_cat({
                        msg = 'categoria: ',
                        value = p:no_space(io.read('*line')),
                        msg_error = 'Use apenas -> [[F/E/S/I]]'
                    }).value,
                    p:log('Horario: '); horario = p:trat_int({
                        msg = 'Horario: ',
                        value = io.read('*line'),
                        msg_error = 'Use apenas números'
                    }).value,
                    p:log('Descrição: '); descricao = io.read('*line'),
                })

                table.insert(eventos, evento)
                cads = 'N'
                break
            else
                p:printt('Você já contem '.. #eventos .. ' eventos ' ..'cadastrados...')

                io.write('\nGostaria de gadastrar mais um evento? ')
                cads = string.upper(p:no_space(io.read('*line')))

                if cads == 'N' then break end
            end
        end -- <<-
    end -- <<=

    -- Função | -- Salva usuário ->>
    function PROcc:saveUser(users, p) --:Table_string_text =>>
        local result = p:to_title(' - Usuários -- ->> ')
        -- ->> --------------- <<- --
        for user=1, #users do
            result = result .. p:to_base({
                index = user,
                items = p:to_item({
                    name = {
                        'Nome: ',
                        'Idade: ',
                        'Sexo: '
                    },
                    item = {
                        users[user].nome,
                        users[user].idade,
                        users[user].genero
                    }
                })
            })
        end return result -- <<=
    end -- <<-

    -- Função | -- Salva usuário ->>
    function PROcc:saveEvent(events, p) --:Table_string_text =>>
        local result = p:to_title('\n - Eventos -- ->> ')
        -- ->> --------------- <<- --
        for event=1, #events do
            result = result .. p:to_base({
                index = event,
                items = p:to_item({
                    name = {
                        'Nome do evento: ',
                        'Endereço : ',
                        'Categoria : ',
                        'Horario : ',
                        'Descrição : '
                    },
                    item = {
                        events[event].nome,
                        events[event].endereco,
                        events[event].categoria,
                        events[event].horario,
                        events[event].descricao
                    }
                })
            })
        end return result -- <<=
    end -- <<-

    return PROcc -- <<- <<=:
end
