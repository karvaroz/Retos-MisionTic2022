public class Novato extends Balon {

    String resitenciaMaxima;


    public Novato(String serial,  String velocidad, String tamaño, String resitenciaMaxima) {
        super(serial, velocidad, tamaño);
        this.resitenciaMaxima = resitenciaMaxima;
    }

    @Override
    public String toString() {
        return "\tBalon Novato - Serial: " + serial + "\n" +
               "\tvelocidad: " + velocidad + " km/h\n" +
               "\ttamaño: " + tamaño + "\n" + 
               "\tResitencia máxima: " + resitenciaMaxima + "kg";
    }

}