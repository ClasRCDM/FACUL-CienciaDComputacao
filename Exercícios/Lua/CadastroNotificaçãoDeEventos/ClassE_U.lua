-- Cadastros Gerais --
do
    -- Usuário | main -- >>
    local Usuario = {} Usuario.__index = Usuario

    function Usuario.nv(nome, idade, genero)
        local itc = setmetatable({}, Usuario)
        -- ->> --------------- <<- --
        itc.nome = nome
        itc.idade = idade
        itc.genero = genero

        return itc
    end
    -- <<

    -- Evento | main -- >>
    local Evento = {} Evento.__index = Evento

    function Evento.nv(nome, idade, genero)
        local itc = setmetatable({}, Evento)
        -- ->> --------------- <<- --
        itc.nome = nome
        itc.endereco = endereco
        itc.categoria = categoria
        itc.horario = horario
        itc.descricao = descricao

        return itc
    end
    -- <<

end
