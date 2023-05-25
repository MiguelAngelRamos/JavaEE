package logica;

public class User {
  
  private String rut;
  private String nombre;
  private String apellido;
  private String telefono;
  
//alt + shift + s
  
  public User(String rut, String nombre, String apellido, String telefono) {
    this.rut = rut;
    this.nombre = nombre;
    this.apellido = apellido;
    this.telefono = telefono;
  }

  public User() {
  
  }

  public String getRut() {
    return rut;
  }

  public void setRut(String rut) {
    this.rut = rut;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getApellido() {
    return apellido;
  }

  public void setApellido(String apellido) {
    this.apellido = apellido;
  }

  public String getTelefono() {
    return telefono;
  }

  public void setTelefono(String telefono) {
    this.telefono = telefono;
  }
  

}
