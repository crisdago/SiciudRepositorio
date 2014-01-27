package cidc.convenios.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import cidc.general.db.BaseDB;
import cidc.general.db.CursorDB;
import cidc.general.mails.EnvioMail2;
import cidc.general.mails.Reporte;
import cidc.general.obj.CrearClaves;
import cidc.general.obj.Globales;
import cidc.adminArticulos.obj.Articulo;
import cidc.adminArticulos.obj.DatEvaluador;
import cidc.adminArticulos.obj.EstadoArticulo;
import cidc.adminArticulos.obj.FiltroArticulo;
import cidc.convenios.obj.Convenio;



public class AdminConvenioDB extends BaseDB{

	public AdminConvenioDB(CursorDB c, int perfil) {
		super(c, perfil);
		// TODO Auto-generated constructor stub
		rb=ResourceBundle.getBundle("cidc.convenios.consultas");
	}

	public boolean nuevoConvenio(Convenio convenio) {
		boolean retorno=false;
		Connection cn=null;
		PreparedStatement ps=null;
		int i=1;
		try {
			cn=cursor.getConnection(super.perfil);
			ps=cn.prepareStatement(rb.getString("nuevoConvenio2"));
			ps.setLong(i++,convenio.getCodigo());
			ps.setString(i++, convenio.getFecha());
			ps.setString(i++,convenio.getNombreConvenio());
			ps.setString(i++,convenio.getObservaciones());
			ps.setString(i++, convenio.getEstado());
			ps.setInt(i++,convenio.getV_DuraAnos());
			ps.setInt(i++,convenio.getV_Durameses());
			ps.setInt(i++,convenio.getV_Duradias());
			ps.setString(i++, convenio.getFechaInicio());
			ps.setString(i++, convenio.getTipo());
			ps.setInt(i++,convenio.getNumDisp());
			ps.setInt(i++,convenio.getNumEntidades());
			ps.setString(i++, convenio.getFechaFinalizacion());
			ps.setDouble(i++, convenio.getV_Efectivo());
			ps.setDouble(i++, convenio.getV_Especie());
			ps.setString(i++, convenio.getN_UsuDigita());
			ps.setString(i++, convenio.getF_Digita());
			ps.executeUpdate();
			retorno=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		}finally{
			cerrar(ps);
			cerrar(cn);
		}
		return retorno;
	}

	public List listaConvenio() {
		Connection cn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List lista=new ArrayList();
		Convenio convenio= null;
		int i=1;
		try {
			cn=cursor.getConnection(super.perfil);
			ps=cn.prepareStatement(rb.getString("listaConvenio2"));
			rs=ps.executeQuery();
			while(rs.next()){
				i=1;
				convenio= new Convenio();
				convenio.setIdconvenio(rs.getInt(i++));
				convenio.setFecha(rs.getString(i++));
				convenio.setNombreConvenio(rs.getString(i++));
				convenio.setObservaciones(rs.getString(i++));
				convenio.setEstado(rs.getString(i++));
				convenio.setV_DuraAnos(rs.getInt(i++));
				convenio.setV_Durameses(rs.getInt(i++));
				convenio.setV_Duradias(rs.getInt(i++));
				convenio.setFechaInicio(rs.getString(i++));
				convenio.setTipo(rs.getString(i++));
				convenio.setNumDisp(rs.getInt(i++));
				convenio.setNumEntidades(rs.getInt(i++));
				convenio.setFinalizado(rs.getString(i++));
				convenio.setV_Efectivo(rs.getFloat(i++));
				convenio.setV_Especie(rs.getFloat(i++));
				lista.add(convenio);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		}finally{
			cerrar(ps);
			cerrar(cn);
		}
		return lista;
	}
	public Convenio getConvenio(String id) {
		Connection cn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		Convenio convenio= null;
		int i=1;
		try {
			cn=cursor.getConnection(super.perfil);
			ps=cn.prepareStatement(rb.getString("getConvenio"));
			ps.setInt(i++,Integer.parseInt(id));
			rs=ps.executeQuery();
			while(rs.next()){
				i=1;

				convenio= new Convenio();
				convenio.setIdConvenio(rs.getInt(i++));
				convenio.setEstado(rs.getInt(i++));
				convenio.setNumero(rs.getInt(i++));
				convenio.setNombreConvenio(rs.getString(i++));
				convenio.setEntidades(rs.getString(i++));
				convenio.setFecha(rs.getString(i++));
				convenio.setValor(rs.getString(i++));
				convenio.setAno(rs.getInt(i++));
				convenio.setCompromisos(rs.getString(i++));
				convenio.setObservaciones(rs.getString(i++));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		}finally{
			cerrar(ps);
			cerrar(cn);
		}
		return convenio;
	}

	public boolean actualizaConvenio(Convenio convenio) {
		boolean retorno=false;
		Connection cn=null;
		PreparedStatement ps=null;
		int i=1;
		try {
			cn=cursor.getConnection(super.perfil);
			ps=cn.prepareStatement(rb.getString("actualizaConvenio"));
			ps.setInt(i++,convenio.getEstado());
			ps.setInt(i++,convenio.getNumero());
			ps.setString(i++,convenio.getNombreConvenio());
			ps.setString(i++,convenio.getEntidades());
			ps.setString(i++,convenio.getFecha());
			ps.setString(i++,convenio.getValor());
			ps.setInt(i++,convenio.getAno());
			ps.setString(i++,convenio.getCompromisos());
			ps.setString(i++,convenio.getObservaciones());
			ps.setLong(i++,convenio.getIdConvenio());
			ps.executeUpdate();
			retorno=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			lanzaExcepcion(e);
		}finally{
			cerrar(ps);
			cerrar(cn);
		}
		return retorno;
	}
}



