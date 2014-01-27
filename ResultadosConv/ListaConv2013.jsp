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
			<th width="155px"><b>Cohortes</b></th>
		</tr>
		<tr class="trb">
			<td class="texto">01-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n, alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas y a ser presentados en eventos acad�micos, cient�ficos, art�sticos o culturales nacionales o internacionales.<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">15 Febrero 2013</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,1,1,2013)"></td></tr>
				</table>
			</td>
		</tr>
	  	<tr>
			<td class="texto">02-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de investigaci�n o creaci�n alcanzados por profesores que se encuentren registrados en el sistema de investigaciones de la universidad distrital francisco jos� de caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">15 Febrero 2012</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,2,1,2013)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">03-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de proyectos de investigaci�n o creaci�n, alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� de Caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales.<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">05 Abril 2013</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,3,2,2013)"></td></tr>
				</table>
			</td>
		</tr>
	  	<tr>
			<td class="texto">04-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de proyectos de investigaci�n o creaci�n alcanzados por docentes que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">05 Abril 2013</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,4,2,2013)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">11-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de proyectos de investigaci�n o creaci�n alcanzados por estudiantes que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">18 Julio 2013</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,11,3,2013)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">12-2013</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo para la socializaci�n, divulgaci�n y difusi�n de resultados de proyectos de investigaci�n o creaci�n alcanzados por docentes que se encuentren registrados en el sistema de investigaciones de la Universidad Distrital Francisco Jos� De Caldas a ser presentados en eventos acad�micos, cient�ficos, art�sticos y culturales nacionales o internacionales<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">14 Junio 2013</td><td align="center"><img border="0" src='<c:url value="/comp/img/Ver.gif" />' onclick="ver(1,12,3,2013)"></td></tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
