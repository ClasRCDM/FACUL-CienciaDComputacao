-- Cadastro de Notificação de Eventos --
do -- Main program --

    -- Imports...
    local user, event = require('ClassE_U')

    local p = require "POO"

    -- Classe | main -- ->>
    local CTDe = {} CTDe.__index = CTDe -- Table:Class

    function CTDe.novo() --:Class_table
        local instancia = setmetatable({}, CTDe)
        -- ->> --------------- <<- --
        p:printt('->> __Cadastro de Eventos__ <<-' .. '\n')

        instancia.usuarios = {
            usuario1 = {
                nome = 'Raphael',
                idade = 19,
                genero = 'M'
            }
        } --:Table
        instancia.eventos = {} --:Table

        return instancia
    end

    -- Inicia o Casdastro de Eventos --
    function CTDe:runEvents() --:None
        self:userRegistration()
        self:eventRegistration()
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:Set_usuário
        -- ->> --------------- <<- --
        local cads = 'None'
        while true do
            if self.usuarios == 0 or cads == 'S' then
                print(' - Cadastre um Usuário...')

                local usuario = user.nv({
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

                table.insert(self.usuarios, usuario)
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

    -- Cadastra o Evento --
    function CTDe:eventRegistration() --:Table_eventos
        -- pass
    end
    -- <<-

    -- Classe | Chamada -- ->> <<-
    local CadastroDeEventos = CTDe.novo()
    CadastroDeEventos:runEvents()
end
