-- Cadastro de informações do Usuario --
do -- Main program --

    -- Main Imports...
    local user = require('ClassUser')
    local prs = require('process')

    -- POO Imports...
    local p = require "POO"

    -- Classe | main -- ->>
    local GDF = {} GDF.__index = GDF -- Table:Class

    function GDF.novo() --:Class_table
        local instancia = setmetatable({}, GDF)
        -- ->> --------------- <<- --
        p:printt('->> __Porfavor registre seus dados!!__ <<-')

        instancia.usuarios = {} --:Table
        instancia.cads = nil --:char

        return instancia
    end

    -- Inicia o Casdastro de Eventos --
    function GDF:runEvents() --:None
        self:userRegistration()
        self:userINFO()
        self:end_progm()
    end

    -- Cadastra o Usuário --
    function GDF:userRegistration() --:Set_usuário
        print('\n - Cadastre um Funcionário...')
        -- ->> --------------- <<- --
        prs:registrationUser(self.usuarios, self.cads, user, p)
    end
    -- <<-

    -- Cadastra o Usuário --
    function GDF:userINFO() --:Set_usuário
        p:printt('\n ->>- Informações...')
        -- ->> --------------- <<- --
        prs:INFOuser(self.usuarios, p)
    end
    -- <<-

    -- FIM
    function GDF:end_progm() --:None
        p:printt('\n ->> - ENCERRAR... - <<-')
        -- ->> --------------- <<- --
        io.write('Gostaria de continuar o programa? ')
        self.cads = string.upper(p:no_space(io.read('*line')))

        if self.cads == 'S' then self:runEvents() end
    end -- <<-

    -- Classe | Chamada -- ->> <<-
    local CadastroDeFuncionario = GDF.novo()
    CadastroDeFuncionario:runEvents()
end
