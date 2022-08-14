-- POO | Otimizações --
do
    local POO = {} POO.__index = POO

    -- Função | format -- << >> --
    function POO:printf(...) print(string.format(...)) end

    --

    return POO
end
