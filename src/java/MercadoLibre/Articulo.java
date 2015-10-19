package MercadoLibre;

/**
 *
 * @author primo
 */

import java.util.ArrayList;
import java.util.Iterator;

public class Articulo {
    
    String nombre;
    String descripcion;
    int precio;
	
        public Articulo(){}
	public Articulo(String nombre, String descripcion, int precio)
        {
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.precio=precio;
	}

	public void crearLista()
        {
                Articulo art1 = new Articulo("Pantalla LED", "50 pulgadas full HD",10500);
                Articulo art2 = new Articulo("Estereo SONY", "Sonido envolvente 7.1 canales",8500);
                Articulo art3 = new Articulo("Estereo SONY", "Sonido envolvente 7.1 canales",8500);
		articulo.add(art1);
		articulo.add(art2);
		articulo.add(art3);
	}
        
	public String imprimirLista(ArrayList<Articulo> lista){
		Iterator<Articulo> iterador = lista.iterator();
		String salida="";
		salida.concat("<ul>");
		while(iterador.hasNext())
		{
		Producto elemento = iterador.next();

		salida=salida+"<li>"+elemento.nombre+"</li>"+"<li>"+elemento.descripcion+"</li>"+"<li>"+Float.toString(elemento.precio)+" pesos"+"</li>";
		}
		salida=salida+"</ul>";
		return salida;

	}        
        
        
    
}
