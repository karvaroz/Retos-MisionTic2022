import java.util.Scanner;

public class Main {
   public static void main(String[] args) {
   Scanner entrada = new Scanner(System.in);
   int primerSemestre = entrada.nextInt();
   int segundoSemestre = (primerSemestre * 2) + 4;
   int tercerSemestre = Math.round((primerSemestre + segundoSemestre)/5);
   System. out. println(primerSemestre + " " + segundoSemestre + " " + tercerSemestre);

   if (tercerSemestre >= 0 && tercerSemestre <= 20){
     System. out. println("uno");
   } else if (tercerSemestre >= 21 && tercerSemestre <= 30){
     System. out. println("dos");
   } else if (tercerSemestre >= 31 && tercerSemestre <= 50){
    System. out. println("tres");     
   } else {
     System. out. println("cuatro");
   }
  }
    
}