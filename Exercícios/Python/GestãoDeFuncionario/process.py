from ClassUser import Usuário as user

# -- Função | -- Cadastra informações ->>
def registrationUser(usuários, cads):
    while 1:
        if len(usuários) == 0 or cads in ['S', 's']:
            print('\n - Cadastre um Funcionário...')

            usuário: dict = user({
            'nome': str(input('Nome: ')),
            'tb_horas': float(input('Horas trabalhadas: ')),
            'dependentes': int(input('Seus dependentes: '))
            })

            usuários.append(usuário)
            break
        else:
            print('\t\n - Você já contem um funcionário salvo...')

            cads = str(input('Gostaria de gadastrar um novo? '))
            if cads in ['N', 'n']:
                break
