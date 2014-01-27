<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
<head>
<link type='text/css' rel='stylesheet' media='all' href='<c:url value="/comp/js/Calendario/calendar-blue2.css"/>' title='win2k-cold-1' />
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/lang/calendar-es.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar-setup.js"/>'></script>
<script>
	function mostrar(bandera)
	{
		if(bandera==1)
		{
			document.getElementById("tabla").style.display='';
		}
		if(bandera==2)
		{
			document.getElementById("tabla").style.display='none';
		}

	}

	function guardar()
	{
		var mensaje="";
    	if(document.form1.identificador.value == '')
    	{
    		mensaje = mensaje + "	1) Digite Identificador\n";
    	}
		if(document.form1.nombre.value == '')
    	{
    		mensaje = mensaje + "	2) Digite Nombre\n";
    	}
    	if(document.form1.responsable.selectedIndex==0)
    	{
    		mensaje = mensaje + "	3) Seleccione Responsable\n";
    	}
    	if(document.form1.descripcion.value == '')
    	{
    		mensaje = mensaje + "	4) Digite Descripcion\n";
    	}
    	if(mensaje!="")
		{
			mensaje="Por favor revise los siguientes campos que presentan alg�n problema: \n"+mensaje;
			alert (mensaje);
		}
		else
		{
			document.form1.submit();
		}
	}

	function guardar1()
	{
		var mensaje = "";
		var x=0;
		for( var i=0;i<document.form2.variables.length;i++)
		{
			if(document.form2.variables[i].checked){
				x=x+1;
			}
		}
		if(x==0 || x==1)
		{
			mensaje=mensaje+ "	1) Seleccione por lo menos 2 variables para la creaci�n de la f�rmula\n";
		}

		if(mensaje!="")
		{
			mensaje="Por favor revise los siguientes campos que presentan alg�n problema: \n"+mensaje;
			alert (mensaje);
		}
		else
		{
			if(confirm('�Esta seguro de modificar estos datos?'))
			{
				document.form2.submit();
			}
		}
	}
</script>
</head>
<c:import url="/general.jsp"/>
<jsp:useBean id="now" class="java.util.Date"/>
<fmt:formatDate value="${now}" type="time" timeStyle="short" pattern="yyyy-MM-dd" var="ano"/>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form name="buscar" method="post" action='<c:url value="/BancoVariables/llenarFiltro.jsp"/>'>
	<input type="hidden" name="accion" value="2">
	<input type="hidden" name="bandera" value="3">
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
<c:if test="${!empty sessionScope.listaFiltro}">
<form name="form2" method="post" action='<c:url value="/fichasIndicadores/AdminFichas.x"/>'>
<table class="tablas" width="95%" align="center">
<input type="hidden" name="accion" value="8" />
<input type="hidden" name="banderaFormula" value="2"/>
		<caption>PARAMETRIZACI�N DE VARIABLES PARA LA FICHA DE INDICADORES</caption>
		<td colspan="8">
			<table class="tablas" width="70%" align="center">
				<tr>
					<td><a class="menu" href='<c:url value="/FichasIndicadores/ModificarFicha.jsp"/>'>Modificar Informaci�n</a></td>
					<td><a class="menu" href='<c:url value="/FichasIndicadores/ModificarVariablesFicha.jsp"/>'>Modificar Variables</a></td>
					<td><a class="menu" href='<c:url value="/FichasIndicadores/ModificarFormulaFicha.jsp"/>'>Modificar F�rmula</a></td>
				</tr>
			</table>
		</td>
		<tr>
			<td class="renglones" align="center"><b>#</b></td>
			<td class="renglones" align="center"><b>Identificador</b></td>
			<td class="renglones" align="center"><b>Nombre</b></td>
			<td class="renglones" align="center"><b>Responsable</b></td>
			<td class="renglones" align="center"><b>Descripcion</b></td>
			<td class="renglones" align="center"><b>Fecha de Creacion</b></td>
			<td class="renglones" align="center"><b>Fecha de Ultima Actualizaci�n</b></td>
			<td class="renglones" align="center"><b>Agregar</b></td>
		</tr>
		<c:forEach items="${sessionScope.lista}" begin="0" var="lista" varStatus="st">
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
			<c:set var="bandera" value="false"  />
			<c:forTokens delims="," begin="0" items="${sessionScope.ficha.variablestexto}" var="lista1">
				<c:if test="${lista1 == lista.identificador}">
					<c:set var="bandera" value="true"  />
				</c:if>
			</c:forTokens>
			<td align="center"><input type="checkbox" name="variables"  value=<c:out value="${lista.identificador}" /><c:if test="${bandera == true}">
				<c:out value='checked = "checked"' />
			</c:if>></td>
		</tr>
		</c:forEach>
		<c:if test="${empty sessionScope.lista}">
			<br><br><br>
				<h5 align="center">No se encuentran variables</h5>
		</c:if>
		<td></td>
		<td></td>
		<tr>
			<td colspan="4" align="center"><img src='<c:url value="/comp/img/Guardar.gif"/>' onclick="guardar1()"></td>
		</tr>

		</table>
		<br><br>
	</c:if>
	</form>
</body>
</html>