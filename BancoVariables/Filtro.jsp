<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
<head>
<c:import url="/general.jsp"/>
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">

	<form name="buscar" method="post" action='<c:url value="/BancoVariables/llenarFiltro.jsp"/>'>
	<input type="hidden" name="accion" value="8">
	<table align="center" class="tablas" style="width: 70%">
	<caption>Filtro de B�squeda de Variables</caption>
		<tr>
			<td class="renglones"><b>Nombre</b></td>
			<td style="width: 90%"><input type="text" name="nombre" style="width: 95%"></td>
			<td class="renglones"><b>Identificador</b></td>
			<td><input type="text" name="identificador"></td>
		</tr>
		<tr>
			<td class="renglones" align="left"><b>Responsable:</b></td>
				<td colspan="4"><select name="responsable"">
					<option value="0">--------------------------------------------------------</option>
					<option value="15">Centro de Investigaciones y Desarrollo Cient�fico (CIDC)</option>
					<option value="17">Oficina Asesora de Planeaci�n y Control</option>
					<option value="18">Vicerectoria Acad�mica</option>
					<option value="19">Vicerectoria Administrativa y Financiera</option>
					<option value="20">Oficina de Docencia</option>
					<option value="21">Oficina Asesora de Sistemas y RedUDNET</option>
					<option value="22">Decanatura Ciencias y Educaci�n</option>
					<option value="23">Decanatura Ingenier�a</option>
					<option value="24">Decanatura Medio Ambiente</option>
					<option value="25">Decanatura Tecnol�gica</option>
					<option value="26">Decanatura Artes - ASAB</option>
					<option value="27">Centro de Relaciones Interinstitucionales (CERI)</option>
					<option value="28">Instituto de Extensi�n y de Educaci�n no formal (IDEXUD)</option>
					<option value="29">Autoevaluaci�n y Acreditaci�n de Alta Calidad</option>
					<option value="30">Bienestar Institucional</option>
					<option value="31">Divis�n de Recursos Financieros</option>
					<option value="32">Oficina Quejas, reclamos y atenci�n al ciudadano</option>
					<option value="33">Divis�n de Recursos Fisicos</option>
					<option value="34">Divis�n de Talento Humano</option>
					<option value="35">Oficina Asesora de Control Interno</option>
					<option value="36">Oficina Asesora Jur�dica</option>
					<option value="37">Secci�n Biblioteca</option>
					<option value="38">Secretar�a General</option>
					<option value="39">Planeaci�n COLCIENCIAS</option>
					<option value="40">SCIENTI </option>
					<option value="41">CvLAC </option>
				</select>
		</tr>
		<tr>
			<td colspan="4" align="center"><input type="image" src='<c:url value="/comp/img/Buscar.gif" />'></td>
		</tr>
	</table>
	</form>

	<c:if test="${!empty requestScope.listaFiltro}">
	<form name="lista" >
	<input type="hidden" name="accion">
	<input type="hidden" name="idVariable">
	<table class="tablas" align="center" style="width: 10%">
	<caption>Listado de Variables</caption>
		<tr>
			<td class="renglones" align="center"><b>#</b></td>
			<td class="renglones" align="center"><b>Identificador</b></td>
			<td class="renglones" align="center"><b>Nombre</b></td>
			<td class="renglones" align="center"><b>Responsable</b></td>
			<td class="renglones" align="center"><b>Descripcion</b></td>
			<td class="renglones" align="center"><b>Fecha de Creacion</b></td>
			<td class="renglones" align="center"><b>Fecha de Ultima Actualizaci�n</b></td>
			<td class="renglones" align="center"><b>Dato</b></td>
			<td class="renglones" align="center"><b>Modif.</b></td>
			<td class="renglones" align="center"><b>Elimi.</b></td>
		</tr>

		<c:forEach items="${requestScope.listaFiltro}" begin="0" var="lista" varStatus="st">
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
			<td><c:out value="${lista.descripcion}" /></td>
			<td align="center"><c:out value="${lista.fechacreacion}" /></td>
			<td align="center"><c:out value="${lista.fechaactualizacion}" /></td>
			<td align="center"><c:out value="${lista.dato}" /></td>
			<c:if test="${lista.creador == sessionScope.loginUsuario.idUsuario}">
				<td align="center"><a href='<c:url value='/bancoVariables/AdminVariables.x?accion=3&idind=${lista.identificador}'/>'><img border="0" src='<c:url value="/comp/img/disk.png"/>'></a></td>
				<td align="center" onclick="confirmaEliminar('<c:out value="${lista.identificador}"/>')"><img border="0" src='<c:url value="/comp/img/equis1.png"/>'></td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	</form>
	</c:if>
</body>
</html>