<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>


</head>
<body>
<%
String tipo=request.getParameter("tipo");
	if(tipo.equals("Identificador"))
	{
	%>
		<p><b>IDENTIFICADOR:</b></p>
		<p>Codificaci�n creada por el usuario tomando las tres primeras letras del nombre de la variable que permita identificar de forma �nica la variable creada.</p>
	<%
	}
	if(tipo.equals("Nombre"))
	{
	%>
		<p><b>NOMBRE:</b></p>
		<p>Nombre corto con el cual se identifica una variable.</p>
	<%
	}
	if(tipo.equals("Descripcion"))
	{
	%>
		<p><b>DESCRIPCION:</b></p>
		<p>�Qu� significa la variable? Se debe realizar una descripci�n clara y breve del significado de la variable.</p>
	<%
	}
	if(tipo.equals("Responsable"))
	{
	%>
		<p><b>RESPONSABLE DEL REPORTE DE LA VARIABLE:</b></p>
		<p>Dependencia responsable de reportar la informaci�n solicitada por la variable</p>
	<%
	}
	if(tipo.equals("Periodo"))
	{
	%>
		<p><b>PERIODO DE ACTUALIZACI�N:</b></p>
		<p>Indica cada cuanto se va a actualizar la variable</p>
	<%
	}
	if(tipo.equals("Unidad"))
	{
	%>
		<p><b>UNIDAD DE MEDIDA:</b></p>
		<p>Unidad de Medida en que se representa la variable</p>
	<%
	}
	if(tipo.equals("Opciones"))
	{
	%>
		<p><b>OPCIONES DE REPORTE GRAFICO:</b></p>
		<p>Permite seleccionar los diferentes tipos de reportes para las variables.</p>
	<%
	}
	if(tipo.equals("Fecha"))
	{
	%>
		<p><b>FECHA DE CREACI�N:</b></p>
		<p>Muestra la fecha actual que ser� almacenada en la creaci�n de la variable.</p>
	<%
	}
	if(tipo.equals("Dato"))
	{
	%>
		<p><b>DATO:</b></p>
		<p>Corresponde al �ltimo valor que la dependencia encargada ingreso para la variable.</p>
	<%
	}
	if(tipo.equals("Actualizacion"))
	{
	%>
		<p><b>FECHA DE ULTIMA ACTUALIZACI�N:</b></p>
		<p>Muestra la fecha en la cual se gener� el �ltimo reporte para la variable.</p>
	<%
	}
	%>
</body>
</html>