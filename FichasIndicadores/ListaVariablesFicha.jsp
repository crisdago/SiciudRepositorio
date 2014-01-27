<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<table>
		<tr>
			<td class="renglones" align="center" style="width: 3%"><b>#</b></td>
			<td class="renglones" align="center" style="width: 5%"><b>Identificador</b></td>
			<td class="renglones" align="center" style="width: 15%"><b>Nombre</b></td>
			<td class="renglones" align="center" style="width: 25%"><b>Responsable</b></td>
			<td class="renglones" align="center" style="width: 5%"><b>Fecha de Corte</b></td>
			<td class="renglones" align="center" style="width: 5%"><b>X</b></td>
		</tr>
		<c:forEach items="${sessionScope.listaUnion}" begin="0" var="lista" varStatus="st">
		<tr <c:if test="${st.count mod 2==0}">class="trb"</c:if>>
			<td><b><c:out value="${st.count}" /></b></td>
			<td align="center"><c:out value="${lista.identificador}"/></td>
			<td><c:out value="${lista.nombre}" /></td>
			<c:if test="${lista.responsable == 15}">
					<td>Centro de Investigaciones y Desarrollo Cient�fico (CIDC)</td>
				</c:if>
				<c:if test="${lista.responsable == 17}">
					<td>Oficina Asesora de Planeaci�n y Control</td>
				</c:if>
				<c:if test="${lista.responsable == 18}">
					<td>Vicerectoria Acad�mica</td>
				</c:if>
				<c:if test="${lista.responsable == 19}">
					<td>Vicerectoria Administrativa y Financiera</td>
				</c:if>
				<c:if test="${lista.responsable == 20}">
					<td>Oficina de Docencia</td>
				</c:if>
				<c:if test="${lista.responsable == 21}">
					<td>Oficina Asesora de Sistemas y RedUDNET</td>
				</c:if>
				<c:if test="${lista.responsable == 22}">
					<td>Decanatura Ciencias y Educaci�n</td>
				</c:if>
				<c:if test="${lista.responsable == 23}">
					<td>Decanatura Ingenier�a</td>
				</c:if>
				<c:if test="${lista.responsable == 24}">
					<td>Decanatura Medio Ambiente</td>
				</c:if>
				<c:if test="${lista.responsable == 25}">
					<td>Decanatura Tecnol�gica</td>
				</c:if>
				<c:if test="${lista.responsable == 26}">
					<td>Decanatura Artes - ASAB</td>
				</c:if>
				<c:if test="${lista.responsable == 27}">
					<td>Centro de Relaciones Interinstitucionales (CERI)</td>
				</c:if>
				<c:if test="${lista.responsable == 28}">
					<td>Instituto de Extensi�n y de Educaci�n no formal (IDEXUD)</td>
				</c:if>
				<c:if test="${lista.responsable == 29}">
					<td>Autoevaluaci�n y Acreditaci�n de Alta Calidad</td>
				</c:if>
				<c:if test="${lista.responsable == 30}">
					<td>Bienestar Institucional</td>
				</c:if>
				<c:if test="${lista.responsable == 31}">
					<td>Divis�n de Recursos Financieros</td>
				</c:if>
				<c:if test="${lista.responsable == 32}">
					<td>Oficina Quejas, reclamos y atenci�n al ciudadano</td>
				</c:if>
				<c:if test="${lista.responsable == 33}">
					<td>Divis�n de Recursos Fisicos</td>
				</c:if>
				<c:if test="${lista.responsable == 34}">
					<td>Divis�n de Talento Humano</td>
				</c:if>
				<c:if test="${lista.responsable == 35}">
					<td>Oficina Asesora de Control Interno</td>
				</c:if>
				<c:if test="${lista.responsable == 36}">
					<td>Oficina Asesora Jur�dica</td>
				</c:if>
				<c:if test="${lista.responsable == 37}">
					<td>Secci�n Biblioteca</td>
				</c:if>
				<c:if test="${lista.responsable == 38}">
					<td>Secretar�a General</td>
				</c:if>
				<c:if test="${lista.responsable == 39}">
					<td>Planeaci�n COLCIENCIAS</td>
				</c:if>
				<c:if test="${lista.responsable == 40}">
					<td>SCIENTI</td>
				</c:if>
				<c:if test="${lista.responsable == 41}">
					<td>CvLAC</td>
				</c:if>
			<td align="center"><c:out value="${lista.fechacreacion}" /></td>
			<td align="center"><a href='<c:url value='/fichasIndicadores/GeneraPDF.x?accion=1&idind=${lista.identificador}'/>'><img border="0" src='<c:url value="/comp/img/agregar.png"/>'></a></td>
		</tr>
		</c:forEach>
	</table>



</body>
</html>