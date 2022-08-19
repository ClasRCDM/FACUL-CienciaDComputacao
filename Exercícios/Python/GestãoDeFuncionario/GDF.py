# -- Cadastro de informações do Usuario --#

# Main Imports...
from ClassUser import Usuário as user

# POO Imports...


# -- Classe | main -- ->>
class GDF(object):
    """docstring for GDF."""
    __slots__ = 'usuários'

    def __init__(self):
        print('\t->> __Porfavor registre seus dados!!__ <<-\n')
        # -- ->> --------------- <<- -- #
        self.usuários: list  = []

    def run_Events(self):
        self.user_Registration()
        self.user_INFO()
        self.end_program()

    def user_Registration(self):
        print(' - Cadastre um Funcionário...')
        # -- ->> --------------- <<- -- #

    def user_INFO(self):
        print('\t\n ->>- Informações...')
        # -- ->> --------------- <<- -- #
        func = user({'nome': 'Raphael',
                     'tb_horas': 135,
                     'dependentes': 3})
        func.print()

    def end_program(self):
        print('\t\n ->> - ENCERRAR... - <<-')
        # -- ->> --------------- <<- -- #
        if str(input('Gostaria de continuar o programa? ')) in ['S', 's']:
            self.run_Events()


# -- Classe | Chamada -- ->> <<-
if __name__ == '__main__':
    CadastroDeFuncionario = GDF()
    CadastroDeFuncionario.run_Events()
