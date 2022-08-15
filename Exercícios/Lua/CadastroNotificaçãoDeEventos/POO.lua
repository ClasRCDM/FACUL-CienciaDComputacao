-- POO | Otimizações --
do --:function_table

    -- POO | functions -- ->>
    local POO = {} POO.__index = POO -- Table:Class

    -- Função | -- <<- Format ->> --
    function POO:printf(...) print(string.format(...)) end --:None

    -- Função | -- <<- \t ->> --
    function POO:printt(...) print('\t' .. ...) end --:None

    -- Função | -- <<- Remove espaços ->> --
    function POO:no_space(s) return s:match( "^%s*(.-)%s*$" ) end --:string

    -- Função | -- <<- io.write ->> --
    function POO:log(...) io.write(...) end --:string

    -- Função | -- Trata o tipo ->>
    function POO:tipif(tips) --:Table =>>
        print(tips.msg_error)
        -- ->> --------------- <<- --
        self:log(tips.msg) tips.value = self:trat({
            tipo = tips.tipo,
            value = io.read('*line'),
            msg = tips.msg,
            msg_error = tips.msg_error
        })
        return tips.value -- <<=
    end

    function POO:tip(tips, tip) --:string =>>
        while true do
            if tip == 'int' then
                local r_isnumber = tonumber(tips.value) == nil
                local r_thisnumber = type(string.match(tips.value, '%d+')) ~= 'string'

                if not r_thisnumber and r_isnumber then
                    tips = self:tipif(tips)
                else break end
            elseif type(string.match(tips.value, '%d+')) == tip then
                tips = self:tipif(tips)
            else break end
        end
        return tips.value -- <<=
    end -- <<-

    -- Função | -- <<- Tratamento de tipos ->> --
    function POO:trat(v) --:Table_string
        v.value = self:no_space(v.value)
        return self:tip(v, v.tipo)
    end

    --
    return POO -- <<-
end
