package cidc.certificaciones.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cidc.general.db.CursorDB;
import cidc.general.login.Usuario;
import cidc.general.servlet.ServletGeneral;
import cidc.certificaciones.obj.CertificacionesOBJ;
import cidc.certificaciones.obj.Parametros;
import cidc.certificaciones.db.CertificadoDB;

public class CertificadosDoc extends ServletGeneral {
	public CursorDB cursor;
	public static char sep=java.io.File.separatorChar;
	public String [] operaciones(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		cursor=new CursorDB();
		String irA="";
		HttpSession sesion=req.getSession();
		Usuario usuario=(Usuario)sesion.getAttribute("loginUsuario");
		CertificadoDB certifidoDB=new CertificadoDB(cursor,usuario.getPerfil());
		CertificacionesOBJ certificado=(CertificacionesOBJ)sesion.getAttribute("certificado");
		String path=req.getRealPath(req.getContextPath()).substring(0,req.getRealPath(req.getContextPath()).lastIndexOf(sep));
		int caso=0;
		int caso2=0;
		if(req.getAttribute("accion")!=null){
			caso=Integer.parseInt((String)req.getAttribute("accion"));
			caso2=Integer.parseInt((String)req.getAttribute("accion2"));
		}
		else{
			if(sesion.getAttribute("accion")!=null){
				caso=Integer.parseInt((String)sesion.getAttribute("accion"));
				caso2=Integer.parseInt((String)sesion.getAttribute("accion2"));
			}
		//uso esto para el caso en que vaya a imprimir el contrato
			else{
				caso=Integer.parseInt(req.getParameter("accion"));
				caso2=Integer.parseInt(req.getParameter("accion2"));
			}
		}
		 System.out.println("El valor que llega de la acci�n es"+caso+" caso2 "+caso2);
		
		switch(caso){
			case Parametros.CertPertenencia:			
				System.out.println("Para generar el certificado de pertenencia");
				sesion.setAttribute("certificado",certifidoDB.crearcertificado1(certificado, path, resp));
				irA="/Certificados/GenerarCertificado.jsp";
				mensaje="Documento creado exitosamente";
				sesion.removeAttribute("accion");
				sesion.removeAttribute("listacertificados");
				sesion.setAttribute("listacertificados",certifidoDB.buscarCertificadosPersona(caso2));
			break;		
		}
				
		caso=0;
		retorno[0]="desviar";
		retorno[1]=irA;
		retorno[2]=mensaje;
		return retorno;		
		
	}

}
