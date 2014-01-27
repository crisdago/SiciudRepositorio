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
		<tr class="trb">
			<td class="renglones"><b>N�mero</b></td>
			<td align="center" width="300px" class="renglones"><b>Nombre Convocatoria</b></td>
			<td align="center" width="155px" class="renglones"><b>Cortes</b></td>
		</tr>
		<tr>
			<td class="texto">01-2009</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por grupos de investigaci�n clasificados ante el sistema nacional de ciencia y tecnolog�a<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">5 Junio 2009</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,1,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">02-2009</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por grupos de investigaci�n institucionalizados en la universidad distrital y registrados en el sistema nacional de ciencia y tecnolog�a.<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">5 Junio 2009</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,2,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">03-2009</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo permanente a la movilidad nacional o internacional de los investigadores de la Universidad Distrital Francisco Jos� de Caldas</p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">16 Abril 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,1,2009)"></td></tr>
		  			<tr class="trb"><td class="texto">4 Mayo 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,2,2009)"></td></tr>
		  		    <tr><td class="texto">22 Junio 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,3,2009)"></td></tr>
   		  		    <tr class="trb"><td class="texto">10 Agosto 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,4,2009)"></td></tr>
   		  		    <tr><td class="texto">22 Septiembre 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,5,2009)"></td></tr>
   		  		    <tr class="trb"><td class="texto">9 Noviembre 2009</td><td><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(1,3,6,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">04-2009</td>
			<td class="texto" width="450px"><p class="parjust">Financiaci�n de proyectos de investigaci�n presentados por semilleros de investigaci�n institucionalizados en la universidad distrital y registrados en el sistema de informaci�n del cidc - siciud<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">21 Julio 2009</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,4,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">05-2009</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo a investigadores de la universidad distrital en la financiaci�n de proyectos de investigaci�n que aporten a la definici�n de una pol�tica para la construcci�n de la identidad de la universidad distrital mediante propuestas que recuperen las diferentes perspectivas hist�ricas de nuestra alma mater<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">28 Julio 2009</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,5,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr class="trb">
			<td class="texto">06-2009</td>
			<td class="texto" width="450px"><p class="parjust">Apoyo a investigadores de la universidad distrital a trav�s de proyectos de investigaci�n que implementen la educaci�n virtual y las ciberpedagog�as<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">13 Agosto 2009</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,6,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="texto">07-2009</td>
			<td class="texto" width="450px"><p class="parjust">financiaci�n de proyectos de investigaci�n de docentes recientemente vinculados a la universidad distrital<p></td>
			<td width="155px">
				<table width="100%">
					<tr><td class="texto">1 Marzo 2010</td><td align="center"><img border="0" src='<c:url value="/comp/img/VerProy.gif" />' onclick="ver(3,7,1,2009)"></td></tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
