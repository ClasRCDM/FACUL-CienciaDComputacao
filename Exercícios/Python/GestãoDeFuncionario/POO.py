# -- POO | Otimizações --

# -- Função | -- <<- Desconto ->> --
def desconto(d, s): return (d * s) / 100

# -- Função | -- <<- Tratamento de string ->> --
def string(s, ms_error):
    while 1:
        input_str: str = input(s).strip().capitalize()
        if input_str.isalpha(): break
        else: print(ms_error)
    return str(input_str)

# -- Função | -- <<- Tratamento de int | float ->> --
def inteiro(i, ms_error):
    while 1:
        input_int: int = input(i).strip().capitalize()
        if input_int.isnumeric(): break
        else: print(ms_error)
    return int(input_int)
