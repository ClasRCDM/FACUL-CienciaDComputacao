def getscritp_lua(script: str, lua, indx: int = 1):
    with open(script, 'r') as ar:
        code: str = ''
        data = ar.readlines()

        lines = (line for index, line in enumerate(data) \
                 if indx-1 < index < len(data)-1)
        for line in lines:
            code = code + line.strip() + '\n'

        return lua.eval(code)
