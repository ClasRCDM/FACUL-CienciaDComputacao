-- Cadastro de Notificação de Eventos --
do -- Main program --

    -- Main Imports...
    local clss = require('ClassE_U')
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
        self:endprogram()
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:Set_usuário
        -- ->> --------------- <<- --
        prs:registrationUser(self.usuarios, self.cads, clss.usuario, p)
    end

    -- Cadastra o Evento --
    function CTDe:eventRegistration() --:Set_eventos
        -- ->> --------------- <<- --
        prs:registrationEvent(self.eventos, self.cads, clss.evento, p)
    end
    -- <<-

    -- Fim --
    function CTDe:endprogram() --:
        p:printt('\n ->> - ENCERRAR... - <<-')
        -- ->> --------------- <<- --
        io.write('Gostaria de encerrar o programa? ')
        self.cads = string.upper(p:no_space(io.read('*line')))

        if self.cads == 'N' then self:runEvents() end

        -- ->> Salva dados <<- --
    	local arquivo = io.open('events.data.txt', 'w')
        -- ->> Salva usuários <<- --
        arquivo:write(prs:saveUser(self.usuarios, p))
        -- ->> Salva eventos <<- --
        arquivo:write(prs:saveEvent(self.eventos, p)) arquivo:close()
    end

    -- Classe | Chamada -- ->> <<-
    local CadastroDeEventos = CTDe.novo()
    CadastroDeEventos:runEvents()
end
