-- Cadastro de Notificação de Eventos --
do -- Main program --

    -- Imports...
    local user, event = require('ClassE_U')
    local p = require "POO"

    -- Classe | main -- >>
    local CTDe = {} CTDe.__index = CTDe -- Table:Class

    function CTDe.novo(name) --:Class_table
        local instancia = setmetatable({}, CTDe)
        -- ->> --------------- <<- --
        instancia.name = name

        return instancia
    end

    -- Inicia o Casdastro de Eventos --
    function CTDe:runEvents() --:None
        p:printf('Testando o %s...', self.name)
        self.userRegistration()
        self.eventRegistration()
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:None
        print('Registro de usuario')
    end

    -- Cadastra o Evento --
    function CTDe:eventRegistration() --:None
        print('Registro de eventos')
    end
    -- <<

    -- Classe | Chamada -- >>
    local CadastroDeEventos = CTDe.novo('Boas vindas')
    CadastroDeEventos:runEvents()
end
