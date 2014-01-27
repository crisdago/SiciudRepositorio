<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>


</head>
<body>
<%
String tipo=request.getParameter("tipo");
	if(tipo.equals("Modelo"))
	{
	%>
		<p><b>MODELO DE MEDICI�N:</b></p>
		<p>Proceso de selecci�n del modelo conceptual al cual pertenece el indicador.</p>
	<%
	}
	if(tipo.equals("Proceso"))
	{
	%>
		<p><b>PROCESO:</b></p>
		<p>Es el macroproceso sobre el cual van a estar almacenados los indicadores.</p>
	<%
	}
	if(tipo.equals("Subproceso"))
	{
	%>
		<p><b>SUBPROCESO:</b></p>
		<p>Es el subproceso sobre el cual van a estar almacenados los indicadores.</p>
	<%
	}
	if(tipo.equals("Identificador"))
	{
	%>
		<p><b>IDENTIFICADOR:</b></p>
		<p>Codificaci�n generada autom�ticamente por el sistema de informaci�n que identifica el indicador creado en relaci�n con el modelo de medici�n, procesos y subprocesos que sean seleccionados.</p>
	<%
	}
	if(tipo.equals("Nombre"))
	{
	%>
		<p><b>NOMBRE:</b></p>
		<p>Nombre corto con el cual se identifica un indicador.</p>
	<%
	}
	if(tipo.equals("Descripcion"))
	{
	%>
		<p><b>DESCRIPCION:</b></p>
		<p>�Qu� significa el indicador? Se debe realizar una descripci�n clara y breve del significado del indicador conteniendo todas aquellas reflexiones que sean necesarias para comprender correctamente su justificaci�n y su interpretaci�n</p>
	<%
	}
	if(tipo.equals("Objetivo"))
	{
	%>
		<p><b>OBJETIVO:</b></p>
		<p>�Para Qu�? Se debe realizar una descripci�n del prop�sito por el cual se esta creando el indicador.</p>
	<%
	}
	if(tipo.equals("Metodologia"))
	{
	%>
		<p><b>METODOLOG�A:</b></p>
		<p>�Como se calcula? Se debe realizar una descripci�n de la forma de medici�n del indicador, procesos de toma de la informaci�n o cualquier otro m�todo de c�lculo del indicador descrito</p>
	<%
	}
	if(tipo.equals("FechaCorte"))
	{
	%>
		<p><b>FECHA DE CORTE:</b></p>
		<p>Fecha de medici�n del indicador. Corresponde a la fecha donde los datos del Indicador van a hacer cierre. Esta fecha es calculada automaticamente por el Sistema dependiendo el a�o en curso.</p>
		<p>Ejemplo: A�o en curso 2000</p>
		<p>Fecha de Corte: 31/12/1999</p>
	<%
	}
	if(tipo.equals("RespInd"))
	{
	%>
		<p><b>RESPONSABLE AL SEGUIMIENTO DEL INDICADOR:</b></p>
		<p>Dependencia responsable en el seguimiento al indicador que peri�dicamente estar� analizando la informaci�n reportada</p>
	<%
	}
	if(tipo.equals("FuenteInfo"))
	{
	%>
		<p><b>FUENTE DE INFORMACI�N:</b></p>
		<p>Origen de la fuente de informaci�n (primaria y secundaria) requerida para lograr la identificaci�n del indicador</p>
	<%
	}
	if(tipo.equals("DocSop"))
	{
	%>
		<p><b>DOCUMENTOS SOPORTE:</b></p>
		<p>Listado de los documentos que soportan el indicador descrito</p>
	<%
	}
	if(tipo.equals("Observacion"))
	{
	%>
		<p><b>OBSERVACIONES:</b></p>
		<p>Informaci�n adicional de alg�n nivel de relevancia para el indicador.</p>
	<%
	}
	%>
</body>
</html>