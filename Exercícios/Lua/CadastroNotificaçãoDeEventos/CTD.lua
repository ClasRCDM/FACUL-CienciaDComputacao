-- Cadastro de Notificação de Eventos --
do -- Main program --

    -- Main Imports...
    local user, event = require('ClassE_U')
    local prs = require('process')

    -- POO Imports...
    local p = require "POO"

    -- Classe | main -- ->>
    local CTDe = {} CTDe.__index = CTDe -- Table:Class

    function CTDe.novo() --:Class_table
        local instancia = setmetatable({}, CTDe)
        -- ->> --------------- <<- --
        p:printt('->> __Cadastro de Eventos__ <<-' .. '\n')

        instancia.usuarios = {} --:Table
        instancia.eventos = {} --:Table

        instancia.cads = nil --:char

        return instancia
    end

    -- Inicia o Casdastro de Eventos --
    function CTDe:runEvents() --:None
        self:userRegistration()
        self:eventRegistration()
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:Set_usuário
        print(' - Cadastre um Usuário...')
        -- ->> --------------- <<- --
        prs:registrationUser(self.usuarios, self.cads, user, p)
    end

    -- Cadastra o Evento --
    function CTDe:eventRegistration() --:Set_eventos
        -- ->> --------------- <<- --
        print('')
        prs:registrationEvent(self.eventos, self.cads, p)
    end
    -- <<-

    -- Classe | Chamada -- ->> <<-
    local CadastroDeEventos = CTDe.novo()
    CadastroDeEventos:runEvents()
end
