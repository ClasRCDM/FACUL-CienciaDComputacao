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
        -- ->> --------------- <<- --
        tips =
        {
            value = io.read('*line'),
            msg = tips.msg,
            msg_error = tips.msg_error
        }
        return tips -- <<=
    end -- ->

    local function isalpha(tipo, value) return type(string.match(value, '%d+')) == tipo end
    local function back(t) return POO:tipif(t) end

    function POO:tip_string(ts) --:Table_string =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            -- Trata erros | Strings --
            if isalpha('string', ts.value) then
                print(ts.msg_error)
                self:log(ts.msg) ts = self:trat_string(back(ts))
            else break end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_char(ts) --:Table_char =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            if isalpha('string', ts.value) or #ts.value == 1 then
                if ts.value ~= 'F' and ts.value == 'M' then
                    break
                elseif ts.value ~= 'M' and ts.value == 'F' then
                    break
                else ts = back(ts) end
            else ts = back(ts) end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_int(ts) --:Table_int =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            -- Trata erros | Int --
            local r_isnumber = tonumber(ts.value) == nil
            local r_thisnumber = type(string.match(ts.value, '%d+')) ~= 'string'

            if not r_thisnumber and r_isnumber then
                ts = back(ts)
            elseif r_thisnumber then
                ts = back(ts)
            else break end
        end
        return ts -- <<=
    end -- <<-

    -- Função | -- <<- Tratamento de strigs ->> --
    function POO:trat_string(v) --:Table_string
        v.value = self:no_space(v.value)
        return self:tip_string(v)
    end

    -- Função | -- <<- Tratamento de ints ->> --
    function POO:trat_int(v) --:Table_int
        v.value = self:no_space(v.value)
        return self:tip_int(v)
    end

    -- Função | -- <<- Tratamento de chars ->> --
    function POO:trat_char(v) --:Table_char
        v.value = self:no_space(v.value)
        return self:tip_char(v)
    end

    --
    return POO -- <<-
end
