# -- Usuário | main -- ->>
class Usuário(object):
    """docstring for Usuario."""

    def __init__(self, user: dict):
        self.nome: str = user['nome']
        self.tb_horas: float = user['tb_horas']
        self.dependentes: int = user['dependentes']

    def print(self):
        print(f'{self.nome}\n{self.tb_horas}\n{self.dependentes}\n')
# -- <<-
