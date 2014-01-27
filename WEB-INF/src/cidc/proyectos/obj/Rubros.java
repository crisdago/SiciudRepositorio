package cidc.proyectos.obj;

import java.io.Serializable;
import java.util.List;

public class Rubros implements Serializable{
	long idRubro;
	String nombreRubro;
	String valorRubro;
	String valorEjecutado;
	String valorSaldo;
	List listaGastos;

	public long getIdRubro() {
		return idRubro;
	}
	public List getListaGastos() {
		return listaGastos;
	}
	public String getNombreRubro() {
		return nombreRubro;
	}
	public String getValorEjecutado() {
		return valorEjecutado;
	}
	public String getValorRubro() {
		return valorRubro;
	}
	public String getValorSaldo() {
		return valorSaldo;
	}
	public void setIdRubro(long idRubro) {
		this.idRubro = idRubro;
	}
	public void setListaGastos(List listaGastos) {
		this.listaGastos = listaGastos;
	}
	public void setNombreRubro(String nombreRubro) {
		this.nombreRubro = nombreRubro;
	}
	public void setValorEjecutado(String valorEjecutado) {
		this.valorEjecutado = valorEjecutado;
	}
	public void setValorRubro(String valorRubro) {
		this.valorRubro = valorRubro;
	}
	public void setValorSaldo(String valorSaldo) {
		this.valorSaldo = valorSaldo;
	}



}
