# -- Cadastro de informações do Usuario --#

# Main Imports...

# POO Imports...


# -- Classe | main -- ->>
class GDF(object):
    """docstring for GDF."""

    def __init__(self):
        super(GDF, self).__init__()
        # -- ->> --------------- <<- -- #
        print('\t->> __Porfavor registre seus dados!!__ <<-\n')
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

    def end_program(self):
        print('\t\n ->> - ENCERRAR... - <<-')
        # -- ->> --------------- <<- -- #
        if str(input('Gostaria de continuar o programa? ')) == 'S':
            self.run_Events()


# -- Classe | Chamada -- ->> <<-
if __name__ == '__main__':
    CadastroDeFuncionario = GDF()
    CadastroDeFuncionario.run_Events()
