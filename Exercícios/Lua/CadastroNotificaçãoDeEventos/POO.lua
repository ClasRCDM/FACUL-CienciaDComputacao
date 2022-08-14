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

    -- Função | -- <<- Trata o tipo ->> --
    function POO:tip(tips) --:string
        while true do -- ->>
            if type(string.match(tips.value, '%d+')) == nil then
                print(tips.msg_error)

                io.write(tips.msg) tips.value = self:trat({
                    tipo = tips.tipo,
                    value = io.read('*line'),
                    msg = tips.msg,
                    msg_error = tips.msg_error
                })
            else
                break
            end
        end
        return tips -- <<-
    end

    -- Função | -- <<- Tratamento de tipos ->> --
    function POO:trat(v) --:string
        if v.tipo == 'string' then
            v.value = self:no_space(v.value)
            return self:tip(v)
        elseif v.tipo == 'int' then
            -- if type(v.value) == 'string' then
                -- pass
            -- end
        elseif v.tipo == 'char' then
            -- if type(v.value) == 'string' then
                -- pass
            -- end
        end
    end

    --
    return POO -- <<-
end
