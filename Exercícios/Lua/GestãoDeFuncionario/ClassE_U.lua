-- Cadastros Gerais --
do --:Class_table

    -- Usuário | main -- ->>
    local Usuario = {} Usuario.__index = Usuario -- Table:Class

    function Usuario.nv(caract) --:Class_table =>
        local itc = setmetatable({}, Usuario)
        -- ->> --------------- <<- --
        itc.nome = caract.nome or 'None' --:string
        itc.tb_horas = caract.tb_horas or 'None' --:int
        itc.Dependentes = caract.Dependentes or 'None'--:char

        return itc -- <<=
    end -- <<-

    return Usuario --:Tables
end
