-- Cadastro de informações do Usuario --
do -- Main program --

    -- Main Imports...
    local user = require('ClassE_U')
    local prs = require('process')

    -- POO Imports...
    local p = require "POO"

    -- Classe | main -- ->>
    local CTDe = {} CTDe.__index = CTDe -- Table:Class

    function CTDe.novo() --:Class_table
        local instancia = setmetatable({}, CTDe)
        -- ->> --------------- <<- --
        p:printt('->> __Porfavor registre seus dados!!__ <<-' .. '\n')

        instancia.usuarios = {} --:Table
        instancia.cads = nil --:char

        return instancia
    end

    -- Inicia o Casdastro de Eventos --
    function CTDe:runEvents() --:None
        self:userRegistration()
        self:userINFO()
        self:end_progm()
    end

    -- Cadastra o Usuário --
    function CTDe:userRegistration() --:Set_usuário
        print(' - Cadastre um Funcionário...')
        -- ->> --------------- <<- --
        prs:registrationUser(self.usuarios, self.cads, user, p)
    end
    -- <<-

    -- Cadastra o Usuário --
    function CTDe:userINFO() --:Set_usuário
        print('\n ->>- Informações...')
        -- ->> --------------- <<- --
        prs:INFOuser(self.usuarios, p)
    end
    -- <<-

    -- FIM
    function CTDe:end_progm() --:None
        p:printt('\n ->> - ENCERRAR... - <<-')
        -- ->> --------------- <<- --
        io.write('Gostaria de continuar o programa? ')
        self.cads = string.upper(p:no_space(io.read('*line')))

        if self.cads == 'S' then self:runEvents() end
    end -- <<-

    -- Classe | Chamada -- ->> <<-
    local CadastroDeEventos = CTDe.novo()
    CadastroDeEventos:runEvents()
end
