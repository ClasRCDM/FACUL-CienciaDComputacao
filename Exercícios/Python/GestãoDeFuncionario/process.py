from ClassUser import Usuário as user
from POO import *

# -- Função | -- Cadastra informações ->>
def registrationUser(usuários, cads):
    while 1:
        if len(usuários) == 0 or cads in ['S', 's']:
            print('\n - Cadastre um Funcionário...')
            # -- ->> --__________-- <<- -- #
            usuário: dict = user({
            'nome': string('Nome: ',
                           'Porfavor escreva seu nome sem números!!'),
            'tb_horas': inteiro('Horas trabalhadas: ',
                                'Porfavor apenas números!'),
            'dependentes': inteiro('Seus dependentes: ',
                                   'Porfavor apenas números!!')})
            # -- ->> --___-- <<- -- #
            usuários.append(usuário)
            break
        else:
            print('\t\n - Você já contem um funcionário salvo...')

            cads = str(input('Gostaria de gadastrar um novo? '))
            if cads in ['N', 'n']:
                break


# -- Função | -- Trabalha as informações ->>
def userINFO(users):
    salario: dict = {'liquido': None,
                     'bruto': None}
    func: int = 0 # --:_
    # -- ->> --------------- <<- -- #
    if len(users) > 1:
        print("""
Você tem mais de um funcionário cadastro.
Caso queira o ultimo funcionário cadastro apenas aperte espaço,
ou o nome do mesmo para o ulitmo ou primeiro funcionário cadastrado,
também serve o index 1, 2, 3 e etc...""")

        while 1:
            # -- First
            func = input('\nQual funcionário? ')
            if func == '' or func == ' ': break
            elif func.isnumeric():  #-- Index
                func = int(func)
                break
            elif func.isalpha():
                for index, user in enumerate(users):
                    if user.nome == func:
                        func = index
                break
            # -- Name

    salario['bruto'] = (users[func].tb_horas * 10) + (users[func].dependentes * 60)
    salario['liquido'] = salario['bruto'] - desconto(5 + 8.5, salario['bruto'])
    # -- ->> --------------- <<- -- #
    print(f'Nome: {users[func].nome}')
    print(f'Salário bruto: ${salario["bruto"]:.2f}')
    print(f'Salário líquido: ${salario["liquido"]:.2f}')
