// Cadastro de Notificação de Eventos -

import java.util.Scanner;

public class Eventos {
    private static char log;
    // Usuário - Cadastro
    private static String us_nome;
    private static int us_idade;
    private static char us_sexo;
    // Eventos - Cadastro
    // private static String ev_nome;
    // private static String ev_endereco;
    // private static char ev_categoria;
    // private static int ev_horario;
    // private static String ev_descricao;

    public static void main(String[] args) {
        Scanner getkeyboard = new Scanner(System.in);
        System.out.println("      < ----- Eventos ----- >");

        do{
            System.out.print("Deseja adicionar um Usuário? [S/N]: ");
            log = Character.toUpperCase(getkeyboard.next().charAt(0));

            if (log == 'S') {
                Usuario();
            }
        }while(log != 'N');
        System.out.println("Ok...");
    }
    public static void Usuario() {
        Scanner getkeyboard = new Scanner(System.in);
        System.out.println("----- < Cadastre um usuário > -----");

        do{
            System.out.print("Digite seu nome: ");
            us_nome = getkeyboard.nextLine();
        }while(us_nome.length() < 6 || us_nome.length() > 20);

        boolean noBreak = true;
        do{
            System.out.print("Digite sua idade: ");
            us_idade = getkeyboard.nextInt();

            if (us_idade > 14) {
                noBreak = false;
            } else {
                System.out.println("Porfavor apenas números, E acima de 14 anos!");
            }
        }while(noBreak);

        noBreak = true;
        do{
            System.out.print("Digite seu sexo: [M/F] ");
            us_sexo = Character.toUpperCase(getkeyboard.next().charAt(0));

            if (us_sexo != 'A' && us_sexo == 'M' || us_sexo == 'F') {
                noBreak = false;
            } else {
                System.out.println("Porfavor apenas use >> [M/F]");
            }
        }while(noBreak);
    }
}
