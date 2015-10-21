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
    String articulo;
    Articulo toPrint;
    Iterator<Articulo> Iterator_Print;
    ArrayList<Articulo> listaArticulos= new ArrayList<Articulo>();
    ArrayList<Articulo> carritoCompras= new ArrayList<Articulo>();
    
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
                Articulo art3 = new Articulo("XBOX ONE ", "Halo Edition 1 TB",7500);
		listaArticulos.add(art1);
		listaArticulos.add(art2);
		listaArticulos.add(art3);
                carritoCompras.add(art1);
	}
        
	public String imprimirLista()
        {
                articulo="";
		articulo.concat("<ul>");
		Iterator_Print = listaArticulos.iterator();
		while(Iterator_Print.hasNext())
		{
		toPrint = Iterator_Print.next();

		articulo = articulo + "<li>" + toPrint.nombre +" "+ toPrint.descripcion +" $"+ toPrint.precio + "</li>";
		}
		articulo=articulo+"</ul>";
		return articulo;
	}        
        
	public String imprimirOpciones(){
            
            articulo= " ";
            Iterator_Print = listaArticulos.iterator();
            
            articulo = articulo + "<select name='agregar"+ "'>";
            while (Iterator_Print.hasNext())
            {
            toPrint = Iterator_Print.next();
            articulo=articulo+"<option>" + toPrint.nombre + "</option>";
            }
            articulo=articulo+"</select>";
            return articulo;
	} 
        
	public String imprimirCarritoCompras(){
            
            articulo="";
            articulo.concat("<ul>");
            Iterator_Print = carritoCompras.iterator();
            while(Iterator_Print.hasNext())
            {
            toPrint = Iterator_Print.next();
                    articulo = articulo + "<li>" + toPrint.nombre +" "+ toPrint.descripcion +" $"+ toPrint.precio + "</li>";
            }
            articulo=articulo+"</ul>";
            return articulo;
	}
        
        public void agregarArticulo()
        {
            Articulo art2 = new Articulo("Estereo SONY", "Sonido envolvente 7.1 canales",8500);
            carritoCompras.add(art2);
        }
        
    
}
