package cidc.convenios.obj;

import java.io.Serializable;

public class Convenio implements Serializable{
	
	private int idconvenio;
	
	private String nombreConvenio;
	private String observaciones;
	private String fecha;
	private String tipo;
	private long codigo;
	private String finalizado;
    private String fechaInicio;
	private int numDisp;
	private int numEntidades;
	private String fechaFinalizacion;
	private String entidades;
	private String F_Digita;
	private int V_DuraAnos;
	private int V_Duradias;
	private int V_Durameses;
	private float V_Efectivo;
	private float V_Especie;
	private String N_UsuDigita;
    private String estado;
    
    public int getIdconvenio() {
		return idconvenio;
	}
	public void setIdconvenio(int idconvenio) {
		this.idconvenio = idconvenio;
	}
    
    public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
    
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public int getV_DuraAnos() {
		return V_DuraAnos;
	}
	public void setV_DuraAnos(int v_DuraAnos) {
		V_DuraAnos = v_DuraAnos;
	}
	public int getV_Duradias() {
		return V_Duradias;
	}
	public void setV_Duradias(int v_Duradias) {
		V_Duradias = v_Duradias;
	}
	public int getV_Durameses() {
		return V_Durameses;
	}
	public void setV_Durameses(int v_Durameses) {
		V_Durameses = v_Durameses;
	}
	
	
	
	public String getF_Digita() {
		return F_Digita;
	}
	public void setF_Digita(String f_Digita) {
		F_Digita = f_Digita;
	}
	public float getV_Efectivo() {
		return V_Efectivo;
	}
	public void setV_Efectivo(float v_Efectivo) {
		V_Efectivo = v_Efectivo;
	}
	public float getV_Especie() {
		return V_Especie;
	}
	public void setV_Especie(float v_Especie) {
		V_Especie = v_Especie;
	}
	public String getN_UsuDigita() {
		return N_UsuDigita;
	}
	public void setN_UsuDigita(String n_UsuDigita) {
		N_UsuDigita = n_UsuDigita;
	}
	
 
	
	public String getNombreConvenio() {
		return nombreConvenio;
	}
	public void setNombreConvenio(String nombreConvenio) {
		this.nombreConvenio = nombreConvenio;
	}
	public String getObservaciones() {
		return observaciones;
	}
	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public long getCodigo() {
		return codigo;
	}
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	public String getFinalizado() {
		return finalizado;
	}
	public void setFinalizado(String finalizado) {
		this.finalizado = finalizado;
	}
	

	public String getFechaInicio() {
		return fechaInicio;
	}
	public void setFechaInicio(String fechaInicio) {
		this.fechaInicio = fechaInicio;
	}
	public int getNumDisp() {
		return numDisp;
	}
	public void setNumDisp(int numDisp) {
		this.numDisp = numDisp;
	}
	public int getNumEntidades() {
		return numEntidades;
	}
	public void setNumEntidades(int numEntidades) {
		this.numEntidades = numEntidades;
	}
	public String getFechaFinalizacion() {
		return fechaFinalizacion;
	}
	public void setFechaFinalizacion(String fechaFinalizacion) {
		this.fechaFinalizacion = fechaFinalizacion;
	}
	public String getEntidades() {
		return entidades;
	}
	public void setEntidades(String entidades) {
		this.entidades = entidades;
	}
	
	

	



}
