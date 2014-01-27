<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<c:import url="/general.jsp"/>
<head>
<script type="text/javascript">
	function ver(acc,convoc,crt,an){
		document.lista.accion.value=acc;
		document.lista.ano.value=an;
		document.lista.conv.value=convoc;
		document.lista.corte.value=crt;
		document.lista.submit();
	}

</script>
</head>
<body>
<br><br>

<form name="lista" action='<c:url value="/Resultados/Convocatorias/AdminResConv.x" />' method="post">
	<input type="hidden" name="accion" value="0">
	<input type="hidden" name="conv" value="0">
	<input type="hidden" name="ano" value="0">
	<input type="hidden" name="corte" value="0">
	<table align="center" class="tablas" >
		<caption>Resultados</caption>
		<tr >
			<th><b>N�mero</b></th>
			<th width="300px"><b>Nombre Convocatoria</b></th>
			<th width="155px"><b>Cortes</b></th>
		</tr>
		<tr class="trb">
			<td class="texto">01-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n, alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas y a ser presentados en eventos acad�micos, cient�ficos, art�sticos o culturales nacionales o internacionales.<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">10 Febrero 2012</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,1,1,2012)"></td></tr>
				</table>
			</td>
		</tr>
	  	<tr>
			<td class="texto">02-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por profesores que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">16 Febrero 2012</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,2,1,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">03-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales. Mayo-Junio<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">30 Marzo 2012</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,3,2,2012)"></td></tr>
				</table>
			</td>			
		</tr>	
		<tr>
			<td class="texto">04-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por profesores que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales. Mayo-Junio<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">30 Marzo 2012</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,4,2,2012)"></td></tr>
				</table>
			</td>
		</tr>	
		<tr class="trb">
			<td class="texto">07-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo permanente para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por ESTUDIANTES que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� de Caldas y a ser presentados en eventos acad�micos, cient�ficos, art�sticos o culturales nacionales o internacionales</p></td>
			<td width="155px">
				<table width="100%">
					<tr class="trb"><td class="texto">15 Junio 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,7,3,2012)"></td></tr>
					<tr class="trb"><td class="texto">10 Agosto 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,7,4,2012)"></td></tr>		
					<tr class="trb"><td class="texto">25 Octubre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,7,5,2012)"></td></tr>			
				</table>
			</td>
		</tr>	
		<tr>
			<td class="texto">08-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo permanente para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por PROFESORES que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� de Caldas y a ser presentados en eventos acad�micos, cient�ficos, art�sticos o culturales nacionales o internacionales</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">15 Junio 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,8,3,2012)"></td></tr>
					<tr><td class="texto">10 Agosto 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,8,4,2012)"></td></tr>
					<tr><td class="texto">25 Octubre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,8,5,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">09-2012</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos presentados por grupos de investigaci�n institucionalizados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� de Caldas, registrados en SCIENTI y no clasificados en sistema nacional de ciencia, tecnolog�a e innovaci�n-SNCTI.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">28 Septiembre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,9,1,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">10-2012</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por grupos de investigaci�n institucionalizados (registrados en el SICIUD) en la Universidad Distrital Francisco Jos� de Caldas y clasificados en el sistema de ciencia, tecnolog�a e innovaci�n-SNCTI.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">28 Septiembre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,10,1,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">11-2012</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por alianzas de grupos de investigaci�n institucionalizados  en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas, registrados en SCIENTI o clasificados en el sistema nacional de ciencia tecnolog�a e innovaci�n-SNCTI.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">05 Octubre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,11,1,2012)"></td></tr>
				</table>
		</td>
		</tr>
		<tr>
			<td class="texto">12-2012</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por Semilleros de Investigaci�n institucionalizados en la universidad distrital y registrados en el sistema de informaci�n del CIDC - SICIUD.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">28 Septiembre 2012</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,12,1,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">15-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo permanente para la socializaci�n, divulgaci�n y difusi�n de resultados de proyectos de investigaci�n o creaci�n alcanzados por profesores que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">04 de Diciembre</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,8,6,2012)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">16-2012</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n, alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas y a ser presentados en eventos acad�micos, cient�ficos, art�sticos o culturales nacionales o internacionales.</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">04 de Diciembre</td><td><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(3,7,6,2012)"></td></tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
