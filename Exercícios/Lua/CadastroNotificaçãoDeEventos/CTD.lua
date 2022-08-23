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
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:Set_usuário
        print(' - Cadastre um Usuário...')
        -- ->> --------------- <<- --
        prs:registrationUser(self.usuarios, self.cads, clss.usuario, p)
    end

    -- Cadastra o Evento --
    function CTDe:eventRegistration() --:Set_eventos
        -- ->> --------------- <<- --
        print('\n - Cadastre um Evento...')
        prs:registrationEvent(self.eventos, self.cads, clss.evento, p)
    end
    -- <<-

    -- Fim --
    function CTDe:endprogram() --:
        function toString(res)
    		local result = ''
    		for i, moeda in ipairs(res) do
    			result = result .. 'Nome: ' .. (moeda.nome or '') .. '\n'
    			result = result .. 'Idade: ' .. (moeda.idade or '') .. '\n'
    			result = result .. 'Sexo: ' .. (moeda.sexo or '') .. '\n'
    			result = result .. '\n'
    		end
    		return result
    	end

        local nomeArqResultado = string.gsub('Tabela_de_Moedas', '%.%w+$', '.txt')
    	local arqResultado = io.open(nomeArqResultado, 'w')
        arqResultado:write(toString(resultado))
    end

    -- Classe | Chamada -- ->> <<-
    local CadastroDeEventos = CTDe.novo()
    CadastroDeEventos:runEvents()
end
