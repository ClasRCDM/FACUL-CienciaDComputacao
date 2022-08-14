-- Cadastros Gerais --
do --:Class_table

    -- Usuário | main -- >>
    local Usuario = {} Usuario.__index = Usuario -- Table:Class

    function Usuario.nv(caract) --:Class_table
        local itc = setmetatable({}, Usuario)
        -- ->> --------------- <<- --
        itc.nome = caract.nome or 'None' --:string
        itc.idade = caract.idade or 'None' --:int
        itc.genero = caract.genero or 'None'--:char

        return itc
    end

    -- Evento | main -- >>
    local Evento = {} Evento.__index = Evento -- Table:Class

    function Evento.nv(desct) --:Class_table
        local itc = setmetatable({}, Evento)
        -- ->> --------------- <<- --
        itc.nome = desct.nome or 'None' --:string
        itc.endereco = desct.endereco or 'None' --:string
        itc.categoria = desct.categoria or 'None' --:char
        itc.horario = desct.horario or 'None' --:int
        itc.descricao = desct.descricao or 'None' --:string

        return itc
    end
    -- <<

    return Usuario, Evento --:Tables
end
