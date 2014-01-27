<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<c:import url="/general.jsp" />
<script>

	function enviar(cod){
		document.frmConvenio.idConv.value=cod;
		document.frmConvenio.action='<c:url value="/adminConvenio/AdminConvenio.x"/>';
		document.frmConvenio.submit();
	}
</script>
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form action='<c:url value="/adminConvenio/AdminConvenio.x"/>'>
<input type="hidden" name="accion" value="0">

<input type="image" src='<c:url value="/comp/img/Atras.gif" />'>
</form>
<c:if test="${!empty requestScope.listaConvenios}">
<form name="frmConvenio">
<input type="hidden" name="idConv" value="">
<input type="hidden" name="accion"	value='3'>
<table class="tablas" align="center" width="90%">
	<caption>Lista de convenios insertados</caption>
	<tr>
		<td class="renglones" width="10px"><b>#</b></td>
		<td class="renglones" width="30px"><b>N�mero</b></td>
		<td class="renglones"><b>Nombre Convenio</b></td>
		<td class="renglones" width="30px"><b>Estado</b></td>
		<td class="renglones" width="30px"><b>Ver</b></td>
	</tr>
	<c:forEach begin="0" items="${requestScope.listaConvenios}" var="lista" varStatus="st">
	<tr>
		<td class="renglones" width="10px"><b><c:out value="${st.count}" /></b></td>
		<td><c:out value="${lista.numero}" /></td>
		<td><c:out value="${lista.nombreConvenio}" /></td>
		<td>
			<c:if test="${lista.estado==0}">Vigente</c:if>
			<c:if test="${lista.estado==1}">Vigente</c:if>
			<c:if test="${lista.estado==2}">Indefinido</c:if>
			<c:if test="${lista.estado==3}">Terminado</c:if>
			<c:if test="${lista.estado==4}">Cancelado</c:if>
		</td>
		<td><img src=<c:url value="/comp/img/Ver.gif" /> onclick='enviar(<c:out value="${lista.idConvenio}" />)'></td>
	</tr>
	</c:forEach>
</table>
</form>
</c:if>
<c:if test="${!empty requestScope.listaConvenios}">
</c:if>
</body>
</html>
