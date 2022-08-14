-- Cadastros Gerais --
do --:Class_table

    -- Usuário | main -- >>
    local Usuario = {} Usuario.__index = Usuario -- Table:Class

    function Usuario.nv(nome, idade, genero) --:Class_table
        local itc = setmetatable({}, Usuario)
        -- ->> --------------- <<- --
        itc.nome = nome --:string
        itc.idade = idade --:int
        itc.genero = genero --:char

        return itc
    end

    -- Evento | main -- >>
    local Evento = {} Evento.__index = Evento -- Table:Class

    function Evento.nv(nome, idade, genero) --:Class_table
        local itc = setmetatable({}, Evento)
        -- ->> --------------- <<- --
        itc.nome = nome --:string
        itc.endereco = endereco --:string
        itc.categoria = categoria --:char
        itc.horario = horario --:int
        itc.descricao = descricao --:string

        return itc
    end
    -- <<

    return Usuario, Evento --:Tables
end
