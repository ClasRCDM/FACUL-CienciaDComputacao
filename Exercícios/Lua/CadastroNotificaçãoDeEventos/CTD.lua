-- Cadastro de Notificação de Eventos --
do
    -- Classe | main -- >>
    local CTDe = {} CTDe.__index = CTDe

    function CTDe.novo(name)
        local instancia = setmetatable({}, CTDe)
        instancia.name = name

        return instancia
    end

    function CTDe:runEvents()
        print(self.name)
    end
    -- <<

    local CadastroDeEventos = CTDe.novo('Boas vindas')
    CadastroDeEventos:runEvents()
end
