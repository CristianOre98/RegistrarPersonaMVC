
package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList; //Importar la clase Array

public class Persona {
    private String dui;
    private String apellidos;
    private String nombres;

    
    Connection cnn;
    Statement state;
    ResultSet result;
    
    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Persona(String dui, String apellidos, String nombres){
        this.dui = dui;
        this.apellidos = apellidos;
        this.nombres = nombres;
    }
    
    public boolean insertarDatos(){
        try {
            String miQuery = "insert into tb_persona values('" + dui + "', '" + apellidos + "', '" + nombres + "');";
            int estado = 0;
            state = cnn.createStatement();
            estado = state.executeUpdate(miQuery);
            if(estado == 1){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }     
    return false;
    }
    
    public ArrayList<Persona>consultarRegistros(){
        ArrayList<Persona> person = new ArrayList(); //Crear el array de almacenamiento tipo Persona
        try {
            String miQuery = "select * from tb_persona;"; //Definir la consulta
            state = cnn.createStatement();//Crear el "boton" para la consulta
            result = state.executeQuery(miQuery);//Ejecutar la consulta
            while(result.next()){//Recorre todo el resutSet y almacena en cada fila los registros encontrados
                                                       //El nombre de ser asi como esta en la tabla de la base de datos
                person.add(new Persona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombre_persona")));   
            }  
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person; //Independientemente encuentre o no registro retorna al objeto person
    }
    
    
    
    
    /**
     * @return the dui
     */
    public String getDui() {
        return dui;
    }

    /**
     * @param dui the dui to set
     */
    public void setDui(String dui) {
        this.dui = dui;
    }

    /**
     * @return the apellido
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellidos(String apellido) {
        this.apellidos = apellido;
    }

    /**
     * @return the nombres
     */
    public String getNombres() {
        return nombres;
    }
    
     /**
     * @param nombres the nombres to set
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    
    
}

