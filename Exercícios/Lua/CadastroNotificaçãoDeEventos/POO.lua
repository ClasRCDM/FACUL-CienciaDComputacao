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
            msg = tips.msg,
            value = io.read('*line'),
            msg_error = tips.msg_error
        }
        return tips -- <<=
    end -- ->

    local function isalphaiqual(tipo, value) return type(string.match(value, '%d+')) == tipo end --:Boolean
    local function isalphadif(tipo, value) return type(string.match(value, '%d+')) ~= tipo end --:Boolean

    local function isnotnumber(valor) return tonumber(valor) == nil end --:Boolean

    local function back(t) return POO:tipif(t) end --:Table
    local function back_back(ts) --:Table_tips
        print(ts.msg_error)
        POO:log(ts.msg)
        return back(ts)
    end

    function POO:tip_string_desc(ts) --:Table_string =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            -- Trata erros | Strings --
            if isalphadif('string', ts.value) and isnotnumber(ts.value) or ts.value == '' then
                ts = back_back(ts)
            elseif not isnotnumber(ts.value) then
                ts = back_back(ts)
            else break end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_string(ts) --:Table_string =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            -- Trata erros | Strings --
            if isalphaiqual('string', ts.value) or ts.value == '' then
                ts = back_back(ts)
            else break end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_char(ts) --:Table_char =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            if isalphaiqual('string', ts.value) or #ts.value == 1 then
                if ts.value ~= 'F' and ts.value == 'M' then
                    break
                elseif ts.value ~= 'M' and ts.value == 'F' then
                    break
                else ts = back_back(ts) end
            else ts = back_back(ts) end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_char_cat(ts) --:Table_char =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            if isalphaiqual('string', ts.value) or #ts.value == 1 then
                if ts.value ~= 'F' and ts.value == 'E' then
                    break
                elseif ts.value ~= 'E' and ts.value == 'F' then
                    break
                else ts = back_back(ts) end
                if ts.value ~= 'S' and ts.value == 'I' then
                    break
                elseif ts.value ~= 'I' and ts.value == 'S' then
                    break
                else ts = back_back(ts) end
            else ts = back_back(ts) end
        end
        return ts -- <<=
    end -- ->

    function POO:tip_int(ts) --:Table_int =>>
        -- ->> --------------- <<- --
        while true do -- Loop
            -- Trata erros | Int --
            if not isalphadif('string', ts.value) and isnotnumber(ts.value) then
                ts = back_back(ts)
            elseif isalphadif('string', ts.value) then
                ts = back_back(ts)
            else break end
        end
        return ts -- <<=
    end -- <<-

    -- Função | -- <<- Tratamento de strigs ->> --
    function POO:trat_string(v) --:Table_string
        v.value = self:no_space(v.value)
        return self:tip_string(v, error)
    end

    -- Função | -- <<- Tratamento de ints ->> --
    function POO:trat_int(v) --:Table_int
        v.value = self:no_space(v.value)
        return self:tip_int(v)
    end

    -- Função | -- <<- Tratamento de chars ->> --
    function POO:trat_char(v) --:Table_char
        v.value = string.upper(self:no_space(v.value))
        return self:tip_char(v)
    end

    -- Função | -- Titulo ->>
    function POO:to_title(title) --:Table_string_text =>> <<=
        return title .. '\n\n' end -- <<-

    -- Função | -- Escrita base ->>
    function POO:to_base(text) --:Table_string_text =>>
        local result = ''
        result = result .. 'Index: ' .. (text.index or '') .. '\n'
        result = result .. text.items
        result = result .. '-=-=-=-=-=-=-=-=-=-=' .. '\n'
        return result -- <<=
    end -- <<-

    -- Função | -- Itens  ->>
    function POO:to_item(add) --:Table_string_text =>>
        local result = ''
        -- ->> --------------- <<- --
        for index=1, #add.item do
            result = result .. '\t' .. add.name[index] .. (add.item[index] or '')  .. '\n'
        end
        return result -- <<=
    end -- <<-

    --
    return POO -- <<-
end
