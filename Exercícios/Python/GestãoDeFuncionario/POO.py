# -- POO | Otimizações --

# -- Função | -- <<- Desconto ->> --
def desconto(d: int, s: int): return (d * s) / 100

# -- Função | -- <<- Tratamento de string ->> --
def tratamento(value, ms_error, obj):
    while 1:
        input_ = input(value).strip().capitalize()
        if obj['teste'](input_): break
        else: print(ms_error)
    return obj['tipo'](input_)

# -- Função | -- <<- Tratamento de string ->> --
def string(s, ms_error):
    return tratamento(s, ms_error,
    {'tipo': lambda v : str(v),
     'teste':  lambda v : v.isalpha()})

# -- Função | -- <<- Tratamento de int | float ->> --
def inteiro(i, ms_error):
    return tratamento(i, ms_error,
    {'tipo': lambda v : int(v),
     'teste':  lambda v : v.isnumeric()})
