// Cadastro de Notificação de Eventos -

import java.util.Scanner;

public class CadastroDeEventos {
    // Variaveis -- >
    // Usuário - Cadastro
    private static String us_nome;
    private static int us_idade;
    private static char us_sexo;

    // Eventos - Cadastro
    private static String ev_nome;
    private static String ev_endereco;
    private static char ev_categoria;
    private static String ev_horario;
    private static String ev_descricao;

    // Program_main --
    public static void main(String[] args) {
        System.out.println("< ----- Cadastros! ----- >");

        Funcoes Cadastros = new Funcoes();
        char log = ' ';

        if (Cadastros.Cadastrar("Deseja adicionar um Usuário? [S/N]: ", log)) {
            CadastroUsuario();
        } else if (Cadastros.Cadastrar("Deseja criar um Evento? [S/N]: ", log)) {
            CadastroEventos();
        } else if (Cadastros.Cadastrar("Deseja consultar os eventos? [S/N]: ", log)) {
            ConsultaEventos();
        }
    }

    // Cadastra o Usuário. --
    public static void CadastroUsuario() {
        Scanner getkeyboard = new Scanner(System.in);
        System.out.println("\n----- < Cadastre um usuário > -----");

        do{
            System.out.print("Digite seu nome:\t");
            us_nome = getkeyboard.nextLine();
        }while(us_nome.length() < 6 || us_nome.length() > 20);

        boolean noBreak = true;
        do{
            System.out.print("Digite sua idade:\t");
            us_idade = getkeyboard.nextInt();

            if (us_idade > 13) {
                noBreak = false;
            } else {
                System.out.println("Porfavor apenas números, E acima de 14 anos!");
            }
        }while(noBreak);

        noBreak = true;
        do{
            System.out.print("Digite seu sexo: [M/F]\t");
            us_sexo = Character.toUpperCase(getkeyboard.next().charAt(0));

            if (us_sexo != 'A' && us_sexo == 'M' || us_sexo == 'F') {
                noBreak = false;
            } else {
                System.out.println("Porfavor apenas use >> [M/F]");
            }
        }while(noBreak);
        System.out.println("");
    }

    // Cria os eventos. --
    public static void CadastroEventos() {
        Scanner getkeyboard = new Scanner(System.in);
        System.out.println("\n< ----- Cadastre um Evento! ----- >");

        do{
            System.out.print("Digite o nome do evento: ");
            ev_nome = getkeyboard.nextLine();
        }while(ev_nome.length() < 10);
        do{
            System.out.print("Digite o endereço do evento: ");
            ev_endereco = getkeyboard.nextLine();
        }while(ev_endereco.length() < 5);

        do{
            System.out.print("Digite o horario: [Use :] ");
            ev_horario = getkeyboard.nextLine();
        }while(ev_horario.length() <= 3);

        do{
            System.out.print("Digite a discrição do evento: ");
            ev_endereco = getkeyboard.nextLine();
        }while(ev_endereco.length() < 5);

        System.out.println(">> Categorias:");
        System.out.println("   Festas[F] - Esportivos[E] - Shows[S] - Jogos[J]");

        boolean noBreak = true;
        do{
            System.out.println("<< [Apenas a primeira letra] --");
            System.out.print("Qual categoria: ");
            ev_categoria = Character.toUpperCase(getkeyboard.next().charAt(0));

            if (ev_categoria != 'A' && ev_categoria == 'F' || ev_categoria == 'E' || ev_categoria == 'S' || ev_categoria == 'J') {
                noBreak = false;
            } else {
                System.out.println("Porfavor apenas as categorias >> [F | E | S | J]");
            }
        }while(noBreak);
        System.out.println("");
    }

    // Consulta os eventos criados caso exista algum. --
    public static void ConsultaEventos() {

    }
}

public class Funcoes {
    public static boolean Cadastrar(String pergunta, char log) {
        Scanner getkeyboard = new Scanner(System.in);

        do{
            System.out.print(pergunta);
            log = Character.toUpperCase(getkeyboard.next().charAt(0));

            if (log == 'S') {
                return true;
            }
        }while(log != 'N');
        return false;
    }
}
