import java.util.ArrayList;

public class Supermercado {
    public static ArrayList<String> obtenerListaSinRepetir(ArrayList<String> listaProductos) {
        ArrayList<String> noRepetidos = new ArrayList<>();
        for (String listaProducto : listaProductos) {
            if (!noRepetidos.contains(listaProducto)) {
                noRepetidos.add(listaProducto);
            }
        }

        return noRepetidos;

    }


    public static ArrayList<Integer> verificarUbicacionProductos(ArrayList<Integer> posicionSugerida, ArrayList<String> productoPosicionReal, String producto) {
        ArrayList<Integer> posicion = new ArrayList<>();
        for (int i : posicionSugerida) {
            if (productoPosicionReal.get(i).equals(producto)) {
                posicion.add(i);
            }
        }

        return posicion;
    }


        public static ArrayList<String> entradaSinExhibicion(ArrayList<String> listallegada, ArrayList<String> listaExhibicion) {

        ArrayList<String> diferentes = new ArrayList<>();
        for (int i = 0; i < listallegada.size(); i++) {
            if (!listaExhibicion.contains(listallegada.get(i))) {
                diferentes.add(listallegada.get(i));
            }

        }

        return diferentes;

    }


public static Integer menorExhibicionEntrada(ArrayList<String> listallegada, ArrayList<String> listaExhibicion) {
        Integer contadorListaUno = 0;
        Integer contadorListaDos = 0;

        for (int i = 0; i < listallegada.size(); i++) {
            for (int j = 0; j < listaExhibicion.size(); j++) {
                  if (listallegada.get(i).equals(listaExhibicion.get(j))) {
                    contadorListaUno++;
                    
                }
            }
        }
        
        
        contadorListaUno = listallegada.size() -  contadorListaUno; 
        
        
        for (int i = 0; i < listaExhibicion.size(); i++) {
            for (int j = 0; j < listallegada.size(); j++) {
                if (listaExhibicion.get(i).equals(listallegada.get(j))) {
                    contadorListaDos++;

                }
            }
        }
        contadorListaDos = listaExhibicion.size() -  contadorListaDos; 

        if (contadorListaUno < contadorListaDos) {
            return contadorListaUno;
        } else {
            return contadorListaDos;

        }

    }

    
}