public class Balon {


    String serial;
    String tipo;
    String velocidad;
    String tamaño;


    public Balon(String serial, String velocidad, String tamaño) {
        this.serial = serial;
        this.velocidad = velocidad;
        this.tamaño = tamaño;
    }
   
    @Override
    public String toString() {
        return "Balon{" + "serial=" + serial + ", tipo=" + tipo + ", velocidad=" + velocidad + ", tama\u00f1o=" + tamaño + '}';
    }
    
}