<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<link type='text/css' rel='stylesheet' media='all' href='<c:url value="/comp/js/Calendario/calendar-blue2.css"/>' title='win2k-cold-1' />
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/lang/calendar-es.js"/>'></script>
<script type='text/javascript' src='<c:url value="/comp/js/Calendario/calendar-setup.js"/>'></script>
<script>

	var nav4=window.Event ? true : false;

	function numeros(eve){
		var key=nav4?eve.which :eve.keyCode;
		return(key<=13 || (key>=49 && key<=53));
	}
	function xxx(){
		document.getElementById('extp131').disabled=false;
	}

	function mostrar(val)
	{
		if(val == 1)
		{
			document.getElementById('titulo').innerHTML="<b>I. IDENTIFICACI�N DE ESTUDIANTES</b>";
			document.getElementById('edad1').innerHTML="Menos de 17 a�os";
			document.getElementById('edad2').innerHTML="De 18 a 21 a�os";
			document.getElementById('edad3').innerHTML="De 22 a 25 a�os";
			document.getElementById('edad4').innerHTML="De 26 a 29 a�os";
			document.getElementById('edad5').innerHTML="De 30 a 33 a�os";
			document.getElementById('edad6').innerHTML="De 34 a 37 a�os";
			document.getElementById('edad7').innerHTML="De 38 a 41 a�os";
			document.getElementById('edad8').innerHTML="De 42 a�os en adelante";
			document.getElementById("prestudiante").style.display='';
			document.getElementById("prdocente").style.display='none';
			document.getElementById("pregresado").style.display='none';
			document.getElementById("pradministrativo").style.display='none';
			deshabilitar("e","d","a","eg");
		}

		if(val == 2)
		{
			document.getElementById('titulo').innerHTML="<b>I. IDENTIFICACI�N DE DOCENTES</b>"
			document.getElementById('edad1').innerHTML="Menos de 25 a�os";
			document.getElementById('edad2').innerHTML="De 26 a 29 a�os";
			document.getElementById('edad3').innerHTML="De 30 a 33 a�os";
			document.getElementById('edad4').innerHTML="De 34 a 37 a�os";
			document.getElementById('edad5').innerHTML="De 38 a 41 a�os";
			document.getElementById('edad6').innerHTML="De 42 a 45 a�os";
			document.getElementById('edad7').innerHTML="De 46 a 49 a�os";
			document.getElementById('edad8').innerHTML="De 50 a�os en adelante";
			document.getElementById("prestudiante").style.display='none';
			document.getElementById("prdocente").style.display='';
			document.getElementById("pregresado").style.display='none';
			document.getElementById("pradministrativo").style.display='none';
			deshabilitar("d","e","a","eg");
		}

		if(val == 3)
		{
			document.getElementById('titulo').innerHTML="<b>I. IDENTIFICACI�N DE ADMINISTRATIVOS</b>";
			document.getElementById('edad1').innerHTML="Menos de 25 a�os";
			document.getElementById('edad2').innerHTML="De 26 a 29 a�os";
			document.getElementById('edad3').innerHTML="De 30 a 33 a�os";
			document.getElementById('edad4').innerHTML="De 34 a 37 a�os";
			document.getElementById('edad5').innerHTML="De 38 a 41 a�os";
			document.getElementById('edad6').innerHTML="De 42 a 45 a�os";
			document.getElementById('edad7').innerHTML="De 46 a 49 a�os";
			document.getElementById('edad8').innerHTML="De 50 a�os en adelante";
			document.getElementById("prestudiante").style.display='none';
			document.getElementById("prdocente").style.display='none';
			document.getElementById("pregresado").style.display='none';
			document.getElementById("pradministrativo").style.display='';
			deshabilitar("a","d","e","eg");
		}

		if(val == 4)
		{
			document.getElementById('titulo').innerHTML="<b>I. IDENTIFICACI�N DE EGRESADOS</b>";
			document.getElementById('edad1').innerHTML="Menos de 17 a�os";
			document.getElementById('edad2').innerHTML="De 18 a 21 a�os";
			document.getElementById('edad3').innerHTML="De 22 a 25 a�os";
			document.getElementById('edad4').innerHTML="De 26 a 29 a�os";
			document.getElementById('edad5').innerHTML="De 30 a 33 a�os";
			document.getElementById('edad6').innerHTML="De 34 a 37 a�os";
			document.getElementById('edad7').innerHTML="De 38 a 41 a�os";
			document.getElementById('edad8').innerHTML="De 42 a�os en adelante";
			document.getElementById("prestudiante").style.display='none';
			document.getElementById("prdocente").style.display='none';
			document.getElementById("pregresado").style.display='';
			document.getElementById("pradministrativo").style.display='none';
			deshabilitar("eg","d","a","e");
		}
	}

	function deshabilitar(a,b,c,d)
	{
		for(var i=1;i<13;i++){
			if(document.getElementById("op"+a+"6"+i)){
				document.getElementById("op"+a+"6"+i).disabled=false;
			}
			if(document.getElementById("op"+b+"6"+i)){
				document.getElementById("op"+b+"6"+i).disabled=true;
			}
			if(document.getElementById("op"+c+"6"+i))
				document.getElementById("op"+c+"6"+i).disabled=true;
			if(document.getElementById("op"+d+"6"+i))
				document.getElementById("op"+d+"6"+i).disabled=true;
		}
	}

	function guardar()
	{
		var mensaje="";
		var x=0;
		if (!form1.persona[0].checked && !form1.persona[1].checked && !form1.persona[2].checked && !form1.persona[3].checked)
		{
			if(mensaje =="")
				mensaje = "> GENERAL:\n";
			mensaje = mensaje + "	*) Tipo Persona\n";
		}
		if (facultadencuesta.selectedIndex==0)
		{
			if(mensaje =="")
				mensaje = "> GENERAL:\n";
			mensaje = mensaje + "	*) Facultad donde se aplic� la encuesta:\n";
		}

		if (!form1.genero[0].checked && !form1.genero[1].checked)
		{
			if(mensaje =="")
				mensaje = "> IDENTIFICACI�N:\n";
			mensaje = mensaje + "	1) G�nero\n";
		}
		if (!form1.edad[0].checked && !form1.edad[1].checked && !form1.edad[2].checked && !form1.edad[3].checked && !form1.edad[4].checked && !form1.edad[5].checked && !form1.edad[6].checked && !form1.edad[7].checked)
		{
		if(mensaje =="")
			mensaje = "> IDENTIFICACI�N:\n";
			mensaje = mensaje + "	2) Edad\n";
		}

		if(document.form1.profesion.value=="")
		{
		if(mensaje =="")
			mensaje = "> IDENTIFICACI�N:\n";
			mensaje = mensaje + "	3) Profesion\n ";
		}

		if (!form1.estrato[0].checked && !form1.estrato[1].checked && !form1.estrato[2].checked && !form1.estrato[3].checked && !form1.estrato[4].checked && !form1.estrato[5].checked)
		{
		if(mensaje =="")
			mensaje = "> IDENTIFICACI�N:\n";
			mensaje = mensaje + "	4) Estrato\n";
		}

		if (!form1.localidad[0].checked && !form1.localidad[1].checked && !form1.localidad[2].checked && !form1.localidad[3].checked && !form1.localidad[4].checked && !form1.localidad[5].checked && !form1.localidad[6].checked && !form1.localidad[7].checked && !form1.localidad[8].checked && !form1.localidad[9].checked && !form1.localidad[10].checked && !form1.localidad[11].checked && !form1.localidad[12].checked && !form1.localidad[13].checked && !form1.localidad[14].checked && !form1.localidad[15].checked && !form1.localidad[16].checked && !form1.localidad[17].checked && !form1.localidad[18].checked && !form1.localidad[19].checked && !form1.localidad[20].checked)
		{
		if(mensaje =="")
			mensaje = "> IDENTIFICACI�N:\n";
			mensaje = mensaje + "	5) Localidad\n";
		}

		/////////// falta pregunta 6 /////////////////////

		if(mensaje!="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";

		if (!form1.p1[0].checked && !form1.p1[1].checked)
		{
			if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	1) Seleccione Opcion para la pregunta 1\n";
		}

		if(document.form1.extp1.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar una justificaci�n para la Pregunta 1\n";
		}

		if (!form1.p2[0].checked && !form1.p2[1].checked && !form1.p2[2].checked && !form1.p2[3].checked && !form1.p2[4].checked && !form1.p2[5].checked && !form1.p2[6].checked && !form1.p2[7].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	2) Seleccione Opcion para la pregunta 2\n";
		}

		if(document.form1.p3a.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	3) Digite valores para la pregunta 3\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Investigaci�n y Desarrollo \n";
		}
		if(document.form1.p3b.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Formaci�n Cient�fica y Tecnol�gica \n";
		}
		if(document.form1.p3c.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Servicios Cient�ficos y Tecnol�gicos \n";
		}
		if(document.form1.p3d.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Administraci�n y Otras Actividades de Apoyo \n";
		}
		if(document.form1.p3e.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Actividades de Innovaci�n \n";
		}
		if(document.form1.extp3.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 3 \n";
		}
		x=0;
		for( var i=0;i<document.form1.p4.length;i++)
		{
			if(document.form1.p4[i].checked){
				x=x+1;
			}
		}
		if(x==0){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	4) Debe seleccionar por lo menos una opcion en la pregunta 4\n";
		}
		x=0;
		for( var i=0;i<document.form1.p5.length;i++)
		{
			if(document.form1.p5[i].checked){
				x=x+1;
			}
		}
		if(x==0){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	5) Debe seleccionar por lo menos una opcion en la pregunta 5\n";
		}
		if (!form1.p6[0].checked && !form1.p6[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	6) Seleccione Opcion para la pregunta 6\n";
		}

		if(document.form1.extp6.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar una justificaci�n para la Pregunta 6\n";
		}
		if(document.form1.p7a.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	7) Digite valores para la pregunta 7\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Ciencias y Educaci�n \n";
		}
		if(document.form1.p7b.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Ingenier�a \n";
		}
		if(document.form1.p7c.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Medio Ambiente \n";
		}
		if(document.form1.p7d.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Tecnol�gica \n";
		}
		if(document.form1.p7e.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Artes - ASAB \n";
		}
		if(document.form1.extp7.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 7 \n";
		}
		if (!form1.p71[0].checked && !form1.p71[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	7.1) Seleccione Opcion para la pregunta 7.1\n";
		}

		if(document.form1.extp71.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 7.1\n";
		}
		if (!form1.p8[0].checked && !form1.p8[1].checked && !form1.p8[2].checked && !form1.p8[3].checked && !form1.p8[4].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	8) Seleccione Opcion para la pregunta 8\n";
		}
		if(document.form1.extp8.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 8\n";
		}
		x=0;
		for(var i=0;i<document.form1.p9.length;i++)
		{
			if(document.form1.p9[i].checked){
				x=x+1;
			}
		}
		if(x>4){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	9) Debe seleccionar m�ximo 4 opciones\n";
		}
		if (!form1.p10[0].checked && !form1.p10[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	10) Seleccione Opcion para la pregunta 10\n";
		}

		if(document.form1.extp10.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 10\n";
		}

		if (!form1.p11[0].checked && !form1.p11[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	11) Seleccione Opcion para la pregunta 11\n";
		}

		if (!form1.p12[0].checked && !form1.p12[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	12) Seleccione Opcion para la pregunta 12\n";
		}

		if(document.form1.extp12.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 12\n";
		}

		if (!form1.p13[0].checked && !form1.p13[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	13) Seleccione Opcion para la pregunta 13\n";
		}

		if(document.form1.extp13.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 13\n";
		}

		x=0;
		for( var i=0;i<document.form1.p131.length;i++)
		{
			if(document.form1.p131[i].checked){
				x=x+1;
			}
		}
		if(x==0){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	13.1) Debe seleccionar por lo menos una opcion en la pregunta 13.1\n";
		}
		if (!form1.p14[0].checked && !form1.p14[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	14) Seleccione Opcion para la pregunta 14\n";
		}

		if(document.form1.extp14.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 14\n";
		}

		if (!form1.p15[0].checked && !form1.p15[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	15) Seleccione Opcion para la pregunta 15\n";
		}

		x=0;
		for( var i=0;i<document.form1.p151.length;i++)
		{
			if(document.form1.p151[i].checked){
				x=x+1;
			}
		}
		if(x==0){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	15.1) Debe seleccionar por lo menos una opcion en la pregunta 15.1\n";
		}

		if (!form1.p16[0].checked && !form1.p16[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	16) Seleccione Opcion para la pregunta 16\n";
		}

		if(document.form1.p17a.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	17) Digite valores para la pregunta 17\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Grupos de Investigaci�n \n";
		}
		if(document.form1.p17b.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Semilleros de Investigaci�n \n";
		}
		if(document.form1.p17c.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		- Debe digitar valor para la opcion - Institutos de Investigaci�n \n";
		}
		if(document.form1.extp17.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 17 \n";
		}

		if (!form1.p18[0].checked && !form1.p18[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	18) Seleccione Opcion para la pregunta 18\n";
		}

		if(document.form1.extp18.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 18\n";
		}

		x=0;
		for( var i=0;i<document.form1.p19.length;i++)
		{
			if(document.form1.p19[i].checked){
				x=x+1;
			}
		}
		if(x==0){
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje=mensaje+"	19) Debe seleccionar por lo menos una opcion en la pregunta 19\n";
		}
		if (!form1.p20[0].checked && !form1.p20[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	20) Seleccione Opcion para la pregunta 20\n";
		}

		if(document.form1.extp20.value=="")
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "		* Debe digitar una justificaci�n para la Pregunta 20\n";
		}

		if (!form1.p21[0].checked && !form1.p21[1].checked)
		{
		if(mensaje=="")
				mensaje = mensaje + "> ELEMENTOS GENERALES:\n";
			mensaje = mensaje + "	21) Seleccione Opcion para la pregunta 21\n";
		}

		if(mensaje!=""){
			mensaje="Por favor revise las siguientes preguntas que presentan alg�n problema: \n"+mensaje;
			alert (mensaje);
		}
		else{
			document.form1.submit();
		}
}

</script>
<c:import url="/general.jsp"/></head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<form name="form1" method="post" action='<c:url value="/Encuesta/llenar.jsp"/>'>
	<input type="hidden" value="2" name="accion">
	<table class="tablas" width="95%" align="center" border="0">
	<caption>ENCUESTA DE PERCEPCI�N SOBRE LA INVESTIGACI�N EN LA UNIVERSIDAD DISTRITAL</caption>
	<tr>
		<td class="renglones" width="150px"><b>Seleccione Persona:</b></td>
		<td><input name="persona" type="radio" value="1" onclick="mostrar(2)"/><b>Docente</b></td>
		<td><input name="persona" type="radio" value="2" onclick="mostrar(1)"/><b>Estudiante</b></td>
		<td><input name="persona" type="radio" value="3" onclick="mostrar(4)"/><b>Egresado</b></td>
		<td><input name="persona" type="radio" value="4" onclick="mostrar(3)"/><b>Administrativo</b></td>
	</tr>
	<tr>
		<td class="renglones" width="150px"><b>Seleccione Facultad donde se aplic� la encuesta:</b></td>
		<td colspan="5"><select id="facultadencuesta" name="facultadencuesta">
		<option value="0">--------------------</option>
		<option value="1">Ciencias y Educaci�n</option>
		<option value="2">Ingenier�a</option>
		<option value="3">Medio Ambiente</option>
		<option value="4">Tecnol�gica</option>
		<option value="5">Artes - ASAB</option>
		</tr>
	</table>

	<table>

	</table>

	<table class="tablas" width="95%" align="center" border="0">
		<tr>
			<td class="renglones" style="width:100%" align="center"><span id="titulo"><b>I. IDENTIFICACI�N DOCENTES:</b></span></td>

		</tr>
		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>1. G�nero:</b></td></tr>
					<tr><td><input name="genero" type="radio" value="1" "/>Hombre</td><td><input name="genero" type="radio" value="2" "/>Mujer</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>2. Edad (A�os Cumplidos):</b></td></tr>
					<tr><td><input name="edad" type="radio" value="1" "/><span id="edad1">Menos de 25 a�os</span></td><td><input name="edad" type="radio" value="5" "/><span id="edad5">De 38 a 41 a�os</span></td></tr>
					<tr><td><input name="edad" type="radio" value="2" "/><span id="edad2">De 26 a 29 a�os</span></td><td><input name="edad" type="radio" value="6" "/><span id="edad6">De 42 a 45 a�os</span></td></tr>
					<tr><td><input name="edad" type="radio" value="3" "/><span id="edad3">De 30 a 33 a�os</span></td><td><input name="edad" type="radio" value="7" "/><span id="edad7">De 46 a 49 a�os</span></td></tr>
					<tr><td><input name="edad" type="radio" value="4" "/><span id="edad4">De 34 a 37 a�os</span></td><td><input name="edad" type="radio" value="8" "/><span id="edad8">De 50 a�os en adelante</span></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>3. Profesi�n:</b></td></tr>
					<tr><td colspan="2"><input type="text" style="width:80%" name="profesion" class="texto"></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>4. Estrato:</b></td></tr>
					<tr><td><input name="estrato" type="radio" value="1" "/>Estrato 1</td><td><input name="estrato" type="radio" value="4" "/>Estrato 4</td></tr>
					<tr><td><input name="estrato" type="radio" value="2" "/>Estrato 2</td><td><input name="estrato" type="radio" value="5" "/>Estrato 5</td></tr>
					<tr><td><input name="estrato" type="radio" value="3" "/>Estrato 3</td><td><input name="estrato" type="radio" value="6" "/>Estrato 6</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>5. �En qu� localidad de Bogot� habita?</b></td></tr>
					<tr><td><input name="localidad" type="radio" value="1" onclick="document.getElementById('extlocalidad').disabled=true"/>1. Usaqu�n</td><td><input name="localidad" type="radio" value="11" onclick="document.getElementById('extlocalidad').disabled=true"/>11. Suba</td></tr>
					<tr><td><input name="localidad" type="radio" value="2" onclick="document.getElementById('extlocalidad').disabled=true"/>2. Chapinero</td><td><input name="localidad" type="radio" value="12" onclick="document.getElementById('extlocalidad').disabled=true"/>12. Barrios Unidos</td></tr>
					<tr><td><input name="localidad" type="radio" value="3" onclick="document.getElementById('extlocalidad').disabled=true"/>3. Santa Fe</td><td><input name="localidad" type="radio" value="13" onclick="document.getElementById('extlocalidad').disabled=true"/>13. Teusaquillo</td></tr>
					<tr><td><input name="localidad" type="radio" value="4" onclick="document.getElementById('extlocalidad').disabled=true"/>4. San Cristobal</td><td><input name="localidad" type="radio" value="14" onclick="document.getElementById('extlocalidad').disabled=true"/>14. M�rtires</td></tr>
					<tr><td><input name="localidad" type="radio" value="5" onclick="document.getElementById('extlocalidad').disabled=true"/>5. Usme</td><td><input name="localidad" type="radio" value="15" onclick="document.getElementById('extlocalidad').disabled=true"/>15. Antonio Nari�o</td></tr>
					<tr><td><input name="localidad" type="radio" value="6" onclick="document.getElementById('extlocalidad').disabled=true"/>6. Tunjuelito</td><td><input name="localidad" type="radio" value="16" onclick="document.getElementById('extlocalidad').disabled=true"/>16. Puente Aranda</td></tr>
					<tr><td><input name="localidad" type="radio" value="7" onclick="document.getElementById('extlocalidad').disabled=true"/>7. Bosa</td><td><input name="localidad" type="radio" value="17" onclick="document.getElementById('extlocalidad').disabled=true"/>17. Candelaria</td></tr>
					<tr><td><input name="localidad" type="radio" value="8" onclick="document.getElementById('extlocalidad').disabled=true"/>8. Kennedy</td><td><input name="localidad" type="radio" value="18" onclick="document.getElementById('extlocalidad').disabled=true"/>18. Rafael Uribe Uribe</td></tr>
					<tr><td><input name="localidad" type="radio" value="9" onclick="document.getElementById('extlocalidad').disabled=true"/>9. Fontibon</td><td><input name="localidad" type="radio" value="19" onclick="document.getElementById('extlocalidad').disabled=true"/>19. Ciudad Bolivar</td></tr>
					<tr><td><input name="localidad" type="radio" value="10" onclick="document.getElementById('extlocalidad').disabled=true"/>10. Engativ� </td><td><input name="localidad" type="radio" value="20" onclick="document.getElementById('extlocalidad').disabled=true"/>20. Sumap�z</td></tr>
					<tr><td><input name="localidad" type="radio" value="21" onclick="document.getElementById('extlocalidad').disabled=false"/>No habita en Bogot�</td></tr>
					<tr><td><b>�D�nde?</b></td></tr>
					<tr><td colspan="2"><input type="text" style="width:80%" name="extlocalidad" id="extlocalidad" class="texto" disabled="disabled"></td></tr>
				</table>
			</td>
		</tr>

		<tr id="prestudiante" style="display:none">
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="3"><b>6. Se�ale, de acuerdo a su rol como estudiante, el nivel, facultad y semestre en el que actualmente se encuentra cursando:</b></td></tr>
					<tr>
						<td class="renglones" colspan="1">Estudiante de:</td>
						<td class="renglones" colspan="1">Facultad:</td>
						<td class="renglones" colspan="1">Semestre que cursa actualmente:</td>
					</tr>
					<tr>
						<td><input id="ope61" name="tipo" type="radio" value="1" "/>Pregrado - 3 a�os</td>
						<td><input id="ope62" name="facultad" type="radio" value="2" "/>Ingenieria</td>
						<td><select id="ope63" id="semestre" name="semestre">
							<option value="1">1�</option>
							<option value="2">2�</option>
							<option value="3">3�</option>
							<option value="4">4�</option>
							<option value="5">5�</option>
							<option value="6">6�</option>
							<option value="7">7�</option>
							<option value="8">8�</option>
							<option value="9">9�</option>
							<option value="10">10�</option>
							<option value="11">11�</option>
							<option value="12">12�</option>
							</select>
					</tr>
					<tr>
						<td><input id="ope64"  name="tipo" type="radio" value="2" "/>Pregrado - 5 a�os</td>
						<td><input id="ope65" name="facultad" type="radio" value="1" "/>Ciencias y Educaci�n</td>
					</tr>
					<tr>
						<td><input id="ope66" name="tipo" type="radio" value="3" "/>Postgrado - Especializaci�n</td>
						<td><input id="ope67" name="facultad" type="radio" value="3" "/>Medio Ambiente</td>
					</tr>
					<tr>
						<td><input id="ope68" name="tipo" type="radio" value="4" "/>Postgrado - Maestria</td>
						<td><input id="ope69" name="facultad" type="radio" value="4" "/>Tecnol�gica</td>
					</tr>
					<tr>
						<td><input id="ope610" name="tipo" type="radio" value="5" "/>Postgrado - Doctorado</td>
						<td><input id="ope611" name="facultad" type="radio" value="5" "/>Artes ASAB</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr id="prdocente" style="display:''">
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="3"><b>6. Se�ale, de acuerdo a su rol como docente, la modalidad de vinculaci�n con la Universidad Distrital y la Facultad a la cu�l est� adscrito(a).:</b></td></tr>
					<tr>
						<td class="renglones" colspan="1">Facultad:</td>
						<td class="renglones" colspan="1">a. Planta:</td>
						<td class="renglones" colspan="1">b. Vinculaci�n Especial:</td>
					</tr>
					<tr>
						<td><input id="opd61" name="facultad" type="radio" value="2"/>Ingenieria</td>
						<td><input id="opd62" name="tipo" type="radio" value="6" "/>Tiempo Completo</td>
						<td><input id="opd63" name="tipo" type="radio" value="9" "/>Tiempo Completo Ocasional</td>
					</tr>
					<tr>
						<td><input id="opd64" name="facultad" type="radio" value="1"/>Ciencias y Educaci�n</td>
						<td><input id="opd65" name="tipo" type="radio" value="7" "/>Medio Tiempo</td>
						<td><input id="opd66" name="tipo" type="radio" value="10" "/>Medio Tiempo Ocasional</td>
					</tr>
					<tr>
						<td><input id="opd67" name="facultad" type="radio" value="3"/>Medio Ambiente</td>
						<td>&nbsp;</td>
						<td><input id="opd68" name="tipo" type="radio" value="8" "/>Hora C�tedra</td>
					</tr>
					<tr>
						<td><input id="opd69" name="facultad" type="radio" value="4"/>Tecnol�gica</td>
					</tr>
					<tr>
						<td><input id="opd610" name="facultad" type="radio" value="5"/>Artes ASAB</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr id="pradministrativo" style="display:none">
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="3"><b>6. Se�ale, de acuerdo a su rol como administrativo, la modalidad de vinculaci�n con la Universidad Distrital y la Facultad a la cu�l est� adscrito(a):</b></td></tr>
					<tr>
						<td class="renglones" colspan="1">a. Servidor P�blico:</td>
						<td class="renglones" colspan="1">Facultad</td>
					</tr>
					<tr>
						<td><input id="opa61" name="tipo" type="radio" value="11"/>Planta</td>
						<td><input id="opa62" name="facultad" type="radio" value="2" "/>Ingenieria</td>
					</tr>
					<tr>
						<td><input id="opa63" name="tipo" type="radio" value="12"/>Provisional</td>
						<td><input id="opa64" name="facultad" type="radio" value="1" "/>Ciencias y Educaci�n</td>
					</tr>
					<tr>
						<td><input id="opa65" name="tipo" type="radio" value="13"/>Orden de Prestaci�n de servicios (OPS)</td>
						<td><input id="opa66" name="facultad" type="radio" value="3"/>Medio Ambiente</td>
					</tr>
					<tr>
						<td><input id="opa67" name="tipo" type="radio" value="14"/>Auxiliar</td>
						<td><input id="opa68" name="facultad" type="radio" value="4"/>Tecnol�gica</td>
					</tr>
					<tr>
						<td><input id="opa69" name="tipo" type="radio" value="15"/>T�cnico</td>
						<td><input id="opa610" name="facultad" type="radio" value="5"/>Artes ASAB</td>
					</tr>
					<tr>
						<td><input id="opa611" name="tipo" type="radio" value="16"/>Profesional</td>
					</tr>
					<tr>
						<td><input id="opa612" name="tipo" type="radio" value="17"/>Profesional Especializado</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr id="pregresado" style="display:none">
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="3"><b>6. Se�ale, de acuerdo a su rol como egresado,el tipo de vinculaci�n con la Universidad Distrital y la Facultad a la cu�l estaba adscrito(a):</b></td></tr>
					<tr>
						<td class="renglones" colspan="1">Egresado de:</td>
						<td class="renglones" colspan="1">Facultad a la cu�l estaba adscrito(a):</td>
					</tr>
					<tr>
						<td><input id="opeg61" name="tipo" type="radio" value="1"/>Pregrado - 3 a�os</td>
						<td><input id="opeg62" name="facultad" type="radio" value="2"/>Ingenieria</td>
					</tr>
					<tr>
						<td><input id="opeg63" name="tipo" type="radio" value="2" "/>Pregrado - 5 a�os</td>
						<td><input id="opeg64" name="facultad" type="radio" value="1"/>Ciencias y Educaci�n</td>
					</tr>
					<tr>
						<td><input id="opeg65" name="tipo" type="radio" value="3"/>Postgrado - Especializaci�n</td>
						<td><input id="opeg66" name="facultad" type="radio" value="3"/>Medio Ambiente</td>
					</tr>
					<tr>
						<td><input id="opeg67" name="tipo" type="radio" value="4"/>Postgrado - Maestria</td>
						<td><input id="opeg68"name="facultad" type="radio" value="4"/>Tecnol�gica</td>
					</tr>
					<tr>
						<td><input id="opeg69" name="tipo" type="radio" value="5"/>Postgrado - Doctorado</td>
						<td><input id="opeg610" name="facultad" type="radio" value="5"/>Artes ASAB</td>
					</tr>
				</table>
			</td>
		</tr>

	</table>

	<table class="tablas" width="95%" align="center" border="0">
		<tr>
			<td class="renglones" style="width:100%" align="center"><b>II. ELEMENTOS GENERALES:</b></td>
		</tr>
		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>1. �Considera usted la Investigaci�n como un eje misional para el desarrollo  de la Universidad Distrital?:</b></td></tr>
					<tr><td><input name="p1" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p1" type="radio" value="2" "/>No</tr>
					<tr><td><b>�Por qu�?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp1" class="texto"></textarea></td></tr>

				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>2. �Sabe usted cu�nto porcentaje del presupuesto total del a�o 2009 de la Universidad es invertido en investigaci�n?:</b></td></tr>
					<tr><td><input name="p2" type="radio" value="1" "/>Menos del 1%</td><td><input name="p2" type="radio" value="5" "/>Del 31% al 45%</td></tr>
					<tr><td><input name="p2" type="radio" value="2" "/>Del 2% al 5%</td><td><input name="p2" type="radio" value="6" "/>Del 46% al 60%</td></tr>
					<tr><td><input name="p2" type="radio" value="3" "/>Del 6% al 15%</td><td><input name="p2" type="radio" value="7" "/>Del 61% al 75%</td></tr>
					<tr><td><input name="p2" type="radio" value="4" "/>Del 16% al 30%</td><td><input name="p2" type="radio" value="8" "/>Del 76% al 100%</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="6" class="renglones"><b>3. Ordene por nivel de importancia de 1 a 5, siendo 1 la menor y 5 la m�xima, las siguientes Actividades de Ciencia, Tecnolog�a e Innovaci�n (ACTI),  de acuerdo a la que considera usted es en la que m�s invierte la Universidad con el presupuesto de Investigaci�n. Justifique su respuesta</b></td></tr>
					<tr>
						<td>Investigaci�n y Desarrollo</td>
						<td><input maxlength="1" name="p3a" type="text" style="width: 10%" onkeypress="return numeros(event)" /></td>
					</tr>
					<tr>
						<td>Formaci�n Cient�fica y Tecnol�gica</td>
						<td><input maxlength="1" name="p3b" type="text" style="width: 10%" onkeypress="return numeros(event)" /></td>
					</tr>
					<tr>
						<td>Servicios Cient�ficos y Tecnol�gicos</td>
						<td><input maxlength="1" name="p3c" type="text" style="width: 10%" onkeypress="return numeros(event)" /></td>
					</tr>
					<tr>
						<td>Administraci�n y Otras Actividades de Apoyo</td>
						<td><input maxlength="1" name="p3d" type="text" style="width: 10%" onkeypress="return numeros(event)" /></td>
					</tr>
					<tr>
						<td>Actividades de Innovaci�n</td>
						<td><input maxlength="1" name="p3e" type="text" style="width: 10%" onkeypress="return numeros(event)" /></td>
					</tr>
				</table>
				<table width=100%>
					<tr><td><b>Justificaci�n:</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp3" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>4. �Cu�les de los siguientes actores considera usted que desarrollan investigaci�n en la Universidad?</b></td></tr>
					<tr><td><input name="p4" type="checkbox" value="1"/>Estudiantes</td><td><input name="p4" type="checkbox" value="4"/>Egresados</td></tr>
					<tr><td><input name="p4" type="checkbox" value="2"/>Docentes</td><td><input name="p4" type="checkbox" value="5"/>Ninguno</td></tr>
					<tr><td><input name="p4" type="checkbox" value="3"/>Administrativos</td><td><input name="p4" type="checkbox" value="6"/>No sabe, No responde</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>5. �En qu� �reas de la Ciencia y la Tecnolog�a se desarrolla m�s la Investigaci�n en la Universidad?. Justifique su respuesta</b></td></tr>
					<tr><td><input name="p5" type="checkbox" value="1"/>Ciencias Exactas y de la tierra</td><td><input name="p5" type="checkbox" value="6"/>Ciencias Humanas</td></tr>
					<tr><td><input name="p5" type="checkbox" value="2"/>Ingenier�as</td><td><input name="p5" type="checkbox" value="7"/>Ciencias biol�gicas</td></tr>
					<tr><td><input name="p5" type="checkbox" value="3"/>Ciencias de la Salud</td><td><input name="p5" type="checkbox" value="8"/>Ling��stica letras y artes</td></tr>
					<tr><td><input name="p5" type="checkbox" value="4"/>Ciencias Agrarias</td><td><input name="p5" type="checkbox" value="9" onchange="document.getElementById('extp5').disabled=false"/>Otra �Cu�l?</td></tr>
					<tr><td><input name="p5" type="checkbox" value="5"/>Ciencias Sociales</td></tr>
				</table>
				<table width=100%>
					<tr><td><b>C�al:</b></td></tr>
					<tr><td colspan="2"><textarea id="extp5" style="width:95%;height:100px" name="extp5" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>6. �Conoce usted los resultados en investigaci�n que la Universidad ha obtenido en los �ltimos 5 a�os?. Justifique su respuesta</b></td></tr>
					<tr><td><input name="p6" type="radio" value="1" onclick="document.getElementById('ext1p6').disabled=false;document.getElementById('ext2p6').disabled=true"/>Si</tr>
					<tr><td><input name="p6" type="radio" value="2" onclick="document.getElementById('ext1p6').disabled=true;document.getElementById('ext2p6').disabled=false"/>No</tr>
					<tr><td><b>�Cu�les?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p6" name="extp6" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p6" name="extp6" class="texto" disabled="disabled" ></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="6" class="renglones"><b>7. De las Facultades de la Universidad, �Cu�l cree usted que desarrolla m�s Investigaci�n?, Ordene por nivel de importancia de 1 a 5, siendo 1 la menor y 5 la m�xima</b></td></tr>
					<tr>
						<td>Ciencias y Educaci�n</td>
						<td><input maxlength="1" name="p7a" type="text" style="width: 10%" onkeypress="return numeros(event)"/></td>
					</tr>
					<tr>
						<td>Ingenier�a</td>
						<td><input maxlength="1" name="p7b" type="text" style="width: 10%" onkeypress="return numeros(event)"/></td>
					</tr>
					<tr>
						<td>Medio Ambiente</td>
						<td><input maxlength="1" name="p7c" type="text" style="width: 10%" onkeypress="return numeros(event)"/></td>
					</tr>
					<tr>
						<td>Tecnol�gica</td>
						<td><input maxlength="1" name="p7d" type="text" style="width: 10%" onkeypress="return numeros(event)"/></td>
					</tr>
					<tr>
						<td>Artes - ASAB</td>
						<td><input maxlength="1" name="p7e" type="text" style="width: 10%" onkeypress="return numeros(event)"/></td>
					</tr>
				</table>
				<table width=100%>
					<tr><td><b>Justificaci�n:</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp7" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>7.1. De la Facultad que usted considera desarrolla mayor investigaci�n en la Universidad, �Conoce usted alg�n  tipo de resultado que se haya alcanzado?</b></td></tr>
					<tr><td><input name="p71" type="radio" value="1" onclick="document.getElementById('ext1p71').disabled=false;document.getElementById('ext2p71').disabled=true"/>Si</tr>
					<tr><td><input name="p71" type="radio" value="2" onclick="document.getElementById('ext1p71').disabled=true;document.getElementById('ext2p71').disabled=false"/>No</tr>
					<tr><td><b>�Cu�les?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p71" name="extp71" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p71" name="extp71" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="6" class="renglones"><b>8. �Cu�l cree usted que es el Nivel de Formaci�n ideal para que una persona realice investigaci�n? (Elija uno solo). Justifique</b></td></tr>
					<tr><td><input name="p8" type="radio" value="1" "/>Pregrado</td></tr>
					<tr><td><input name="p8" type="radio" value="2" "/>Especializacion</td></tr>
					<tr><td><input name="p8" type="radio" value="3" "/>Maestria</td></tr>
					<tr><td><input name="p8" type="radio" value="4" "/>Doctorado</td></tr>
					<tr><td><input name="p8" type="radio" value="5" "/>Cualquier Nivel</td></tr>
				</table>

				<table width=100%>
					<tr><td><b>Justificaci�n:</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp8" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>9. De los siguientes productos de investigaci�n, �Cu�l de ellos cree usted que m�s se ha desarrollado en la Universidad?. Seleccione m�ximo 4</b></td></tr>
					<tr><td><input name="p9" type="checkbox" value="1"/>Art�culos Publicados</td><td><input name="p9" type="checkbox" value="16"/>Otra Producci�n T�cnica</td></tr>
					<tr><td><input name="p9" type="checkbox" value="2"/>Libros</td><td><input name="p9" type="checkbox" value="17"/>Producci�n Art�stica Cultural</td></tr>
					<tr><td><input name="p9" type="checkbox" value="3"/>Cap�tulos de libros</td><td><input name="p9" type="checkbox" value="18"/>Trabajos Dirigidos o Tutor�as Concluidas</td></tr>
					<tr><td><input name="p9" type="checkbox" value="4"/>Trabajos en Eventos</td><td><input name="p9" type="checkbox" value="19"/>Otros Trabajos</td></tr>
					<tr><td><input name="p9" type="checkbox" value="5"/>Trabajos en Publicaciones No Cient�ficas</td><td><input name="p9" type="checkbox" value="20"/>Cursos de Corta Duraci�n Dictados</td></tr>
					<tr><td><input name="p9" type="checkbox" value="6"/>Otra Producci�n Bibliogr�fica</td><td><input name="p9" type="checkbox" value="21"/>Desarrollo de material Did�ctico o de Instrucci�n</td></tr>
					<tr><td><input name="p9" type="checkbox" value="7"/>Partituras Musicales</td><td><input name="p9" type="checkbox" value="22"/>Editoraci�n o revisi�n</td></tr>
					<tr><td><input name="p9" type="checkbox" value="8"/>Prefacio, Ep�logo</td><td><input name="p9" type="checkbox" value="23"/>Mantenimiento de Obras Art�sticas</td></tr>
					<tr><td><input name="p9" type="checkbox" value="9"/>Informes de Investigaci�n</td><td><input name="p9" type="checkbox" value="24"/>Organizaci�n de Eventos</td></tr>
					<tr><td><input name="p9" type="checkbox" value="10"/>Software</td><td><input name="p9" type="checkbox" value="25"/>Programas en Radio o Televisi�n</td></tr>
					<tr><td><input name="p9" type="checkbox" value="11"/>Productos tecnol�gicos</td><td><input name="p9" type="checkbox" value="26"/>Presentaci�n de Trabajo</td></tr>
					<tr><td><input name="p9" type="checkbox" value="12"/>Procesos o T�cnicas</td><td><input name="p9" type="checkbox" value="27"/>Dem�s trabajos</td></tr>
					<tr><td><input name="p9" type="checkbox" value="13"/>Trabajos T�cnicos</td><td><input name="p9" type="checkbox" value="28"/>Jurado/Comisones Evaluadoras de Trabajo de Grado</td></tr>
					<tr><td><input name="p9" type="checkbox" value="14"/>Normas</td><td><input name="p9" type="checkbox" value="29"/>Participaci�n en Comit�s de Evaluaci�n</td></tr>
					<tr><td><input name="p9" type="checkbox" value="15"/>Cartas, Mapas o Similares</td><td><input name="p9" type="checkbox" value="30"/>Proyectos</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>10. �Cree que la Universidad realiza Innovaci�n? Justifique su Respuesta</b></td></tr>
					<tr><td><input name="p10" type="radio" value="1" onclick="document.getElementById('ext1p10').disabled=false;document.getElementById('ext2p10').disabled=true"/>Si</tr>
					<tr><td><input name="p10" type="radio" value="2" onclick="document.getElementById('ext1p10').disabled=true;document.getElementById('ext2p10').disabled=false"/>No</tr>
					<tr><td><b>�De qu� tipo?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p10" name="extp10" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p10" name="extp10" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>11. Sabe usted si la Universidad tienen un sistema de Protecci�n de Su Propiedad Intelectual</b></td></tr>
					<tr><td><input name="p11" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p11" type="radio" value="2" "/>No</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>12. �Conoce usted la Pol�tica de Fomento a la Investigaci�n del Plan Estrategico de Desarrollo de la Universidad Distrital?. Justifique su Respuesta</b></td></tr>
					<tr><td><input name="p12" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p12" type="radio" value="2" "/>No</tr>
					<tr><td><b>Justificaci�n</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp12" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>13. �Conoce usted el sistema de investigaci�n de la Universidad Distrital?</b></td></tr>
					<tr><td><input name="p13" type="radio" value="1" onclick="document.getElementById('ext1p13').disabled=false;document.getElementById('ext2p13').disabled=true"/>Si</tr>
					<tr><td><input name="p13" type="radio" value="2" onclick="document.getElementById('ext1p13').disabled=true;document.getElementById('ext2p13').disabled=false"/>No</tr>
					<tr><td><b>Descr�balo brevemente</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p13" name="extp13" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p13" name="extp13" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones" colspan="2"><b>13.1. De las siguientes formas de participaci�n en el Sistema de  Investigaci�n de la Universidad Distrital, �Cu�l reconoce?</b></td></tr>
					<tr><td><input name="p131" type="checkbox" value="1"/>Grupos de Investigaci�n</td></tr>
					<tr><td><input name="p131" type="checkbox" value="2"/>Semilleros de Investigaci�n</td></tr>
					<tr><td><input name="p131" type="checkbox" value="3"/>Institutos de Investigaci�n</td></tr>
					<tr><td><input name="p131" type="checkbox" value="4" onchange="xxx()"/>Otra</td></tr>
					<tr><td><input name="p131" type="checkbox" value="5"/>Ninguna</td></tr>
				</table>
				<table width=100%>
					<tr><td><b>�Cu�l?:</b></td></tr>
					<tr><td colspan="2"><textarea id="extp131"  style="width:95%;height:100px" name="extp131" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td class="renglones"><b>14. De las anteriores formas de participaci�n en el Sistema de Investigaci�n de la UD, �Participa o ha participado en alguna de ellas?</b></td></tr>
					<tr><td><input name="p14" type="radio" value="1" onclick="document.getElementById('ext1p14').disabled=false;document.getElementById('ext2p14').disabled=true"/>Si</tr>
					<tr><td><input name="p14" type="radio" value="2" onclick="document.getElementById('ext1p14').disabled=true;document.getElementById('ext2p14').disabled=false"/>No</tr>
					<tr><td><b>�Cu�l?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p14" name="extp14" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p14" name="extp14" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>15. �Ha participado en alg�n proyecto de investigaci�n financiado por la Universidad o alguna otra entidad?</b></td></tr>
					<tr><td><input name="p15" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p15" type="radio" value="2" "/>No</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>15.1 Si ha participado en algun proyecto de investigaci�n, se�ale en que modalidad (Si la respuesta a la pregunta 15 fue NO, por favor marque aqui "Ninguna"</b></td></tr>
					<tr><td><b>Modalidad</b></td></tr>
					<tr><td><input name="p151" type="checkbox" value="1"/>Investigador Principal</td></tr>
					<tr><td><input name="p151" type="checkbox" value="2"/>Coinvestigador</td></tr>
					<tr><td><input name="p151" type="checkbox" value="3"/>Asistente de Investigaci�n</td></tr>
					<tr><td><input name="p151" type="checkbox" value="4"/>Auxiliar de Investigaci�n</td></tr>
					<tr><td><input name="p151" type="checkbox" value="5"/>Otra</td></tr>
					<tr><td><input name="p151" type="checkbox" value="6"/>Ninguna</td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>16. Reconoce alg�n tipo de Investigaci�n que la Universidad haya desarrollado y alcanzado alguna difusi�n Nacional o Internacional?</b></td></tr>
					<tr><td><input name="p16" type="radio" value="1" onclick="document.getElementById('extp16').disabled=false"/>Si</tr>
					<tr><td><input name="p16" type="radio" value="2" onclick="document.getElementById('extp16').disabled=true" />No</tr>
					<tr><td><b>�Cu�l?</td></tr>
					<tr><td colspan="2"><textarea id="extp16" style="width:95%;height:100px" name="extp16" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="6" class="renglones"><b>17. Ordene por nivel de importancia de 1 a  3, siendo 1 la menor y 3 la m�xima, las siguientes formas de participaci�n en Investigaci�n al interior de la Universidad Distrital</b></td></tr>
					<tr>
						<td>Grupos de Investigaci�n</td>
						<td><input name="p17a" type="text" style="width: 10%" onkeypress="return numeros(event)" maxlength="1"/></td>
					</tr>
					<tr>
						<td>Semilleros de Investigaci�n</td>
						<td><input name="p17b" type="text" style="width: 10%" onkeypress="return numeros(event)" maxlength="1"/></td>
					</tr>
					<tr>
						<td>Institutos de Investigaci�n</td>
						<td><input name="p17c" type="text" style="width: 10%" onkeypress="return numeros(event)" maxlength="1"/></td>
					</tr>
					<tr>
						<td>Otro</td>
						<td><input name="p17" type="radio" style="width: 10%" value="1"/></td>
					</tr>
					<tr>
						<td>Ninguna</td>
						<td><input name="p17" type="radio" style="width: 10%" value="2"/></td>
					</tr>
				</table>
				<table width=100%>
					<tr><td><b>Justificaci�n:</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp17" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>18. �Cree usted que existe alg�n nivel de articulaci�n entre la  Investigaci�n y la docencia?. Justifique su respuesta</b></td></tr>
					<tr><td><input name="p18" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p18" type="radio" value="2" "/>No</tr>
					<tr><td><b>Justificaci�n</td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="extp18" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>19. Cree usted que en su Facultad se desarrolla investigaci�n de tipo:</b></td></tr>
					<tr><td><input name="p19" type="checkbox" value="1"/>Social</td><td><input name="p19" type="checkbox" value="6"/>De Innovaci�n</td></tr>
					<tr><td><input name="p19" type="checkbox" value="2"/>Interdisciplinaria</td><td><input name="p19" type="checkbox" value="7"/>De Creaci�n</td></tr>
					<tr><td><input name="p19" type="checkbox" value="3"/>Cient�fica</td><td><input name="p19" type="checkbox" value="8"/>De Desarrollo Tecnol�gico</td></tr>
					<tr><td><input name="p19" type="checkbox" value="4"/>Tecnol�gica</td><td><input name="p19" type="checkbox" value="9" onchange="document.getElementById('extp19').disabled=false"/>Otra</td></tr>
					<tr><td><input name="p19" type="checkbox" value="5"/>Aplicada</td><td><input name="p19" type="checkbox" value="10"/>Ninguna</td></tr>
					<tr><td><b>�Cu�l?</td></tr>
					<tr><td colspan="2"><textarea id="extp19" style="width:95%;height:100px" name="extp19" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>20. �Ha participado usted o ha obtenido apoyo o est�mulo para la financiaci�n de alguna actividad de investigaci�n desarrollada en la Universidad Distrital?</b></td></tr>
					<tr><td><input name="p20" type="radio" value="1" onclick="document.getElementById('ext1p20').disabled=false;document.getElementById('ext2p20').disabled=true"/>Si</tr>
					<tr><td><input name="p20" type="radio" value="2" onclick="document.getElementById('ext1p20').disabled=true;document.getElementById('ext2p20').disabled=false"/>No</tr>
					<tr><td><b>�Qu� tipo de apoyo?</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext1p20" name="extp20" class="texto" disabled="disabled"></textarea></td></tr>
					<tr><td><b>Si tu respuesta es negativa justifica por qu�</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" id="ext2p20" name="extp20" class="texto" disabled="disabled"></textarea></td></tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>21. Sabe usted �Cu�les son los procedimientos para acceder a los est�mulos en Investigaci�n como participaci�n en eventos, inscripci�n a cursos, participaci�n en semilleros o grupos de Investigaci�n, etc?</b></td></tr>
					<tr><td><input name="p21" type="radio" value="1" "/>Si</tr>
					<tr><td><input name="p21" type="radio" value="2" "/>No</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
				<table width=100%>
					<tr><td colspan="2" class="renglones"><b>OBSERVACIONES DEL ENCUESTADOR CON RESPECTO A LA ENCUESTA</b></td></tr>
					<tr><td colspan="2"><textarea style="width:95%;height:100px" name="observaciones" class="texto"></textarea></td></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><img src='<c:url value="/comp/img/Guardar.gif"/>' onclick="guardar()"></td>
		</tr>
	</table>

</form>
</body>
</html>