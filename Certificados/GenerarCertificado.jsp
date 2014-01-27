<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<c:import url="/general.jsp" />

<script>
	function ajaxProyecto(obj){
		document.frmAjaxProyecto.dato.value=obj.options[obj.selectedIndex].value;
		document.frmAjaxProyecto.para.value='1';
	 	document.frmAjaxProyecto.target="frameOculto";
		document.frmAjaxProyecto.submit();
	}
	
	function guardar(){
		if(document.nuevo.idGrupo.selectedIndex==0){
			alert ("Seleccione Grupo/Semillero de investigaci�n");
			return false;
		}else{		
			document.nuevo.accion.value='1';
			document.nuevo.action='<c:url value="/Certificados/llenar.jsp"/>';
			document.nuevo.submit();
		}		
	}
</script>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<fieldset style="width:580px;">
<form name="nuevo" method="post" action='<c:url value="/certificados/llenar.jsp"/>'>
	<input type="hidden" name="accion" value="0">
	<input type="hidden" name="idPersona" value='<c:out value="${sessionScope.persona.idPersona}" />'>	
		<table width="100%" align="center">
				<th colspan="3">Datos del Investigador</th>
				<tr>
					<td width="60px" class="renglones" colspan="1"><b>Facultad:</b></td>
					<td class="renglones" width="200px" colspan="2"><b>Grupo/Semillero de Investigaci�n</b></td>					
				</tr>
				<tr>
					<td colspan="1">
						<c:if test="${sessionScope.persona.facultad==0}"><p class="lroja">No Registrado</p></c:if>
						<c:if test="${sessionScope.persona.facultad==1}">Tecnol�gica</c:if>
						<c:if test="${sessionScope.persona.facultad==2}">Ingenier�a</c:if>
						<c:if test="${sessionScope.persona.facultad==3}">Medio Ambiente</c:if>
						<c:if test="${sessionScope.persona.facultad==4}">Ciencias y Educaci�n</c:if>
						<c:if test="${sessionScope.persona.facultad==5}">Asab</c:if>
					</td>
					<td colspan="2">
						<input type="hidden" name="nombGrupo">						
						<select name="idGrupo" onchange="ajaxProyecto(this)">
							<option value="0">----------------</option>
							<c:forEach begin="0" items="${sessionScope.listaMisGrupos}" var="lista">
							<option value='<c:out value="${lista.idGrupo}"/>' <c:if test="${!lista.estadoGrupo}">disabled</c:if>><c:out value="${lista.nombreGrupo}"/></option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="renglones" width="200px" colspan="3"><b>Proyecto Curricular</b></td>
				</tr>
				<tr colspan="3">
					<td>
						<c:if test='${sessionScope.persona.nombProyecto!=null}'>
							<c:out value="${sessionScope.persona.nombProyecto}"/>
						</c:if>
						<c:if test='${sessionScope.persona.nombProyecto==null}'>
						<p class="lroja">No Registrado</p>
						</c:if>
					</td>
				</tr>
				<tr>
					<td class="renglones" width="200px" colspan="1"><b>Cedula</b></td>
					<td class="renglones" width="110px" colspan="1"><b>Procedencia:</b></td>
					<td class="renglones" width="110px" colspan="1"><b>Papel en el grupo:</b></td>					
				</tr>
				<tr>
					<td colspan="1">
						<b>Tipo</b>
						<c:if test="${sessionScope.persona.tipoDoc==0}"><p class="lroja">------</p></c:if>
						<c:if test="${sessionScope.persona.tipoDoc==2}">T.I</c:if>
						<c:if test="${sessionScope.persona.tipoDoc==1}">C.C</c:if>
						<c:if test="${sessionScope.persona.tipoDoc==3}">C.E</c:if>
						- N�:<c:out value="${sessionScope.persona.documento}"/>					
					</td>
					<td colspan="1">
						<c:out value="${sessionScope.persona.deDoc}"/>					
					</td>
					<td colspan="1">					
						<c:if test="${sessionScope.persona.papel==0}"><p class="lroja">No Registrado</p></c:if>
						<c:if test="${sessionScope.persona.papel==3}">Estudiante</c:if>
						<c:if test="${sessionScope.persona.papel==2}">Prof Planta</c:if>
						<c:if test="${sessionScope.persona.papel==4}">Prof TCO</c:if>
						<c:if test="${sessionScope.persona.papel==5}">Prof MTO</c:if>
						<c:if test="${sessionScope.persona.papel==6}">Prof HC</c:if>
						<c:if test="${sessionScope.persona.papel==7}">Prof Vin. Especial</c:if>
						<c:if test="${sessionScope.persona.papel==8}">Lider Semillero</c:if>
						<c:if test="${sessionScope.persona.papel==1}">Director</c:if>
						<c:if test="${sessionScope.persona.papel==9}">Invitado</c:if>
						<c:if test="${sessionScope.persona.papel==10}">Egresado</c:if>		
					</td>
				</tr>
				<c:if test='${sessionScope.persona.estado}'>
				<tr>
					<td  colspan="4" align="center"><img src='<c:url value="/comp/img/nuevocertificado.jpg"/>' onclick="guardar()" width="60" height="40">
					<p>Generar Certificado</p></td>					
				</tr>
				</c:if>
				
			</table>
			<c:if test='${!sessionScope.persona.estado}'>
				<h3 align="center">Para poder generar un certificado en l�nea, favor actualizar la informaci�n que se encuentra se�alada en rojo. Esto lo puede hacer mediante el link "Mis Grupos" del menu principal</h3>
			</c:if>
	</form>
</fieldset>
</div>
<br>
<br>
<div align="center">
	<fieldset style="width:580px;">
			<table>
				<th colspan="3">Consideraciones Importantes:</th>
				<tr>
					<td>
						<p align="justify">
						1. Por favor <b class="lroja">valide los datos</b> que aparecen en la parte superior de �ste formulario, en caso de que se presente alguna inconsistencia por favor ingrese a la opci�n Gesti�n Grupo, Mis grupos, Integrantes y actualice su informaci�n
						</p>					
						<p align="justify">
						Si se le presenta alg�n inconveniente con la actualizaci�n de los datos y con la actualizaci�n, por favor env�enos un correo a centroi@udistrital.edu.co 
						</p>
					</td>					
					<td>
					</td>
				</tr>	
				<tr>
					<td>
						<p align="justify">
							2. Para usar, imprimir y visualizar nuestros contenidos de forma �ptima es necesario instalar o tener en el computador el <b class="lroja">programa Adobe Acrobat Reader</b> el cual lo podr� descargar de forma gratuita desde internet.
						</p>
					</td>			
				</tr>
				<tr>
					<td>
						<p align="justify">
						3. La <b class="lroja">conexi�n a internet<b> debe ser estable.
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<p align="justify">
						4. El CIDC no garantiza el acceso y uso continuado o ininterrumpido del sitio. La aplicaci�n puede eventualmente no estar disponible debido a dificultades t�cnicas o fallas de Internet, o por cualquier otra circunstancia ajena; en tales casos se procurar� restablecerlo con la mayor celeridad posible sin que por ello pueda imput�rsele alg�n tipo de responsabilidad.
						</p>
					</td>				
				</tr>	
				<tr>
					<td>
						<p align="justify">
						5. El CIDC no se responsabiliza por la certeza de los datos personales provistos por los usuarios. La informaci�n personal se procesa y almacena en servidores o medios magn�ticos que mantienen altos est�ndares de seguridad y protecci�n tanto f�sica como tecnol�gica.
						</p>
					</td>				
				</tr>	
				<tr>
					<td>
						<p align="justify">
						6. El sistema de informaci�n asignar� un <b class="lroja">identificador al certificado<b>, el cual podr� ser utilizado por terceros para consultar la validez del certificado en la p�gina del CIDC.
						</p>
					</td>				
				</tr>	
			</table>		
	</fieldset>
</div>
<c:if test="${ sessionScope.listacertificados != null}">	
<div>
<fieldset>
	<form name="lista">
	<input type="hidden" name="accion" value="3">
	<input type="hidden" name="id">
	<input type="hidden" name="estado">
	<table align="center" class="tablas" width="100%">
		<caption>Lista de Certificados Generados</caption>
		<tr>
			<td class="renglones" align="center"><b>#</b></td>
			<td class="renglones" align="center" width="20%"><b>Tipo Certificado</b></td>
			<td width="20%" class="renglones" align="center"><b>Fecha y Hora</b></td>
			<td class="renglones" align="center" width="55%"><b>Grupo/Semillero</b></td>
			<td class="renglones" align="center" width="5%"><b>Ver</b></td>
		</tr>
		<c:forEach items="${sessionScope.listacertificados}" begin="0" var="lista" varStatus="st">
			<tr <c:if test="${st.count mod 2==0}">class="trb"</c:if>>
				<td><c:out value="${st.count}" /></td>
				<td><c:out value="${lista.tipo}" /></td>
				<td><c:out value="${lista.fecha_cert}" /></td>
				<td><c:out value="${lista.nombreGrupo}" /></td>
				<td valign="middle">
				<a href='<c:url value="/Documentos/Certificados/${lista.url}"/>'><img align="middle" border="0"  src='<c:url value="/comp/img/pdf.png"/>'></a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</form>
</fieldset>
</div>
</c:if>
</body>
</html>