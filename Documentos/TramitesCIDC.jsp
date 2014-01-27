<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="<c:url value="/comp/css/formatos.css"/>">
<c:import url="/general.jsp"/>
<script type="text/javascript">
	function ver(url,tipo){
		document.docs.ruta.value=url;
		document.docs.tipo.value=tipo;
		document.docs.submit();
	}
</script>
</head>
<body>
<br>
<form name="docs" action='<c:url value="/descarga/documentos"/>' method="post">
	<input type="hidden" name="ruta" value="">
	<input type="hidden" name="tipo" value="">

	<table class="tablas" align="center" width="95%">
	<caption>Documentaci�n tr�mites CIDC</caption>
		<tr>
			<td class="renglones">&nbsp;</td>
			<td width="125px" class="renglones"><b>Documento</b></td>
			<td class="renglones"><b>Descripci�n</b></td>
		</tr>
		<tr>
			<td><img border="0" src="<c:url value="/comp/img/word.png"/>" onclick="ver('/Documentos/Formatos/frmContratacionCIDCInvitacion.doc',1)"></td>
			<td width="125px" align="center">Fomato de Invitaci�n Directa</td>
			<td>Fomato de contrataci�n CIDC de invitaci�n directa</td>
		</tr>
		<tr class="trb">
			<td><img border="0" src="<c:url value="/comp/img/xcel.jpg"/>" onclick="ver('/Documentos/Formatos/formatoDeSolicitud.xls',1)"></td>
			<td width="125px" align="center">Formato de solicitud</td>
			<td>Formato para la solicitud de contrataci�n de servicios mediante la modalidad de �rdenes de prestaci�n de servicios (OPS) o �rdenes de prestaci�n de servicios acad�micos  remunerados (OPSAR)</td>
		</tr>
		<tr>
			<td><img border="0" src="<c:url value="/comp/img/pdf.png"/>" onclick="ver('/Documentos/Formatos/formato Colciencias.pdf',3)"></td>
			<td width="125px" align="center">Formato Colciencias</td>
			<td>Instructivo para la presentaci�n de proyectos de investigaci�n cient�fica y tecnol�gica</td>
		</tr>
		<tr class="trb">
			<td><img border="0" src="<c:url value="/comp/img/word.png"/>" onclick="ver('/Documentos/Formatos/relacionDocumentos.doc',1)"></td>
			<td width="125px" align="center">Fomato de Relaci�n de documentos</td>
			<td>Formato de relaci�n de entrega de documentos para contrataci�n (este formato sustituye oficio de remisi�n)</td>
		</tr>
		<tr>
			<td><img border="0" src="<c:url value="/comp/img/pdf.png"/>" onclick="ver('/Documentos/Formatos/formatoAspiranteOPS.pdf',3)"></td>
			<td width="125px" align="center">Fomato Aspirante OPS</td>
			<td>Formato aspirante OPS para contrataci�n de servicios t�cnicos, debe ser llenado en su totalidad por el aspirante.</td>
		</tr>
		<tr class="trb">
			<td><img border="0" src="<c:url value="/comp/img/word.png"/>" onclick="ver('/Documentos/Formatos/formatoCumplidoOPS.doc',1)"></td>
			<td width="125px" align="center">Fomato de cumplido OPS</td>
			<td>Formato de cumplido OPS para entrega de cumplidos mensuales el cual debe ser diligenciado y entregado por el Contratista.</td>
		</tr>
		<tr>
			<td><img border="0" src="<c:url value="/comp/img/word.png"/>" onclick="ver('/Documentos/Formatos/formatoContrtacionCIDC.doc',1)"></td>
			<td width="125px" align="center">Fomato de Contrataci�n CIDC</td>
			<td>Fomato Convocatoria P�blica</td>
		</tr>
	<!--	<tr>
			<td><a href='<c:url value="/Documentos/Formatos/certificadoSyP.doc"/>'><img border="0" src="<c:url value="/comp/img/word.png"/>"></a></td>
			<td width="125px">Formato de Cumplido de servicio t�cnico</td>
			<td>Formato de cumplido de servicio tecnico, debe ser llenado por el profesor a cargo de la investigaci�n y llevar su visto bueno (firma). El supervisor es el director del Centro de Investigaciones.</td>
		</tr> -->
	</table>
</form>
</body>
</html>