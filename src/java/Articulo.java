/**
 *
 * @author primo
 */

import java.util.ArrayList;
import java.util.Iterator;

public class Articulo {
    
    String nombre;
    String descripcion;
    Float precio;
	
	public void Articulo(String nombre, String descripcion, Float precio){
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.precio=precio;
	}

	public static void setArtToLista(ArrayList<Articulo> articulo){
		articulo.add(new Articulo("Pantalla LED", "50 pulgadas full HD",(float)10500));
		articulo.add(new Articulo("Estereo SONY", "Sonido envolvente 7.1 canales",(float)8500));
		articulo.add(new Articulo("XBOX ONE", "Halo edition",(float)7500));
		return;
	}
    
}
