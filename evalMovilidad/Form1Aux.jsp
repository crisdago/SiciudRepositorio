<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<jsp:useBean id="ParametrosOBJ" scope="page" class="cidc.convocatorias.obj.ParametrosOBJ"/>
<c:import url="/general.jsp"/>
</head>
<body onLoad="mensajeAlert(document.getElementById('msg'));">
<br>

	<fieldset style="width:590px;">
	<legend>Datos Investigador y Ponencia</legend>
		<table class="tablas" width="100%">
			<tr>
				<td colspan="2">
					<table>
						<tr>
							<td class="renglones" width="150px"><b>Nombre del Investigador</b></td>
							<td><p style="text-transform:lowercase;"><c:out value="${sessionScope.InfoA.investigador}" /></p></td>
							<td class="renglones" width="50px"><b>Perfil</b></td>
							<td><c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">Profesor</c:if>
								<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">Estudiante</c:if>
							</td>
							<td class="renglones" width="70px"><b>link CvLac</b></td>
							<td align="center"><a target="_new" href='<c:out value="${sessionScope.InfoA.cvLac}" />'>VER LINK</a></td>
						</tr>
					</table>
				<td>
			</tr>

			<tr>
				<td class="renglones" width="200px"><b>Grupo/Semillero de Investigaci�n</b></td>
				<td><p style="text-transform:lowercase;"><c:out value="${sessionScope.InfoA.nombreGrupo}" /></p></td>
			</tr>
			<tr><td colspan="2" class="renglones"><b>Nombre de ponencia aprobada</b></td></tr>
			<tr><td colspan="2"><c:out value="${sessionScope.InfoA.nombrePonencia}" /></td></tr>
			<tr><td colspan="2" class="renglones"><b>Nombre del proyecto relacionado con la ponencia (Plan de Acci�n)</b></td></tr>
			<tr><td colspan="2"><c:out value="${sessionScope.InfoA.nombreProyecto}" /></td></tr>			
		</table>
	</fieldset>

	<fieldset>
	<legend>Justificaci�n de la participaci�n y Agenda de Cooperaci�n planteada por el investigador</legend>
		<table>
			<tr>
				<td colspan="3" class="renglones"><b>Justificaci�n de la participaci�n y Agenda de Cooperaci�n (30 puntos)</b></td>
			</tr>
			<tr>
				<td colspan="3">
				<table width="100%">
					<tr>
						<td valign="top"><b>1) Justificaci�n de la participaci�n en el evento (10 puntos)</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly" class="area2" rows="5" style="width:100%;"><c:out value="${sessionScope.InfoB.compromisos1}" /></textarea>
						</td>
					</tr>
					<!--<tr>
						<td><p class="texto1j">Par�metros de medici�n de los compromisos asumidos por el investigador con el grupo / semillero.</p></td>
					</tr>
					<tr>
						<td><textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.compromisos2}" /></textarea></td>
					</tr>-->
					<tr>
						<td valign="top"><b>2) Agenda de las actividades previas, durante y posteriores al evento (20 puntos).</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.compromisos3}" /></textarea>
						</td>
					</tr>
					<!--<tr>
						<td><p class="texto1j">Par�metros de medici�n de los compromisos asumidos por el investigador con la universidad.</p></td>
					</tr>
					<tr>
						<td><textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.compromisos4}" /></textarea></td>
					</tr>-->
				</table>
				</td>
			</tr>

<!--		<tr>
				<td colspan="3" class="renglones"><b>Beneficio Institucional</b></td>
			</tr>
			<tr>
				<td colspan="3">
					<table width="100%">
					<tr>
						<td valign="top"><b>1) Beneficio personal</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"   class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.beneficiosGrupo1}"/></textarea>
						</td>
					</tr>
					<tr>
						<td valign="top"><b>2) 	Beneficios para el grupo/semillero de investigaci�n</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.beneficiosGrupo2}"/></textarea>
						</td>
					</tr>
					<tr>
						<td><p class="texto1j">Par�metros de medici�n de los beneficios que podr�a obtener el grupo/semillero de investigaci�n.</p></td>
					</tr>
					<tr>
						<td><textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.beneficiosGrupo3}"/></textarea></td>
					</tr>
					<tr>
						<td valign="top"><b>3) Beneficio para la universidad</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.beneficiosGrupo4}"/></textarea>
						</td>
					</tr>
					<tr>
						<td><p class="texto1j">Par�metros de medici�n de los beneficios que podr�a obtener la instituci�n.</p></td>
					</tr>
					<tr>
						<td><textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.beneficiosGrupo5}"/></textarea></td>
					</tr>
				</table>
				</td>
			</tr>-->
<!--		<tr>
				<td colspan="3" class="renglones"><b>Inter�s Institucional</b></td>
			</tr>
			<tr>
				<td colspan="3">
					<table width="100%">
					<tr>
						<td valign="top"><b>1) Objetivo institucional para apoyar la participaci�n de un investigador en evento acad�mico</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.interesInsti1}"/></textarea>
						</td>
					</tr>
					<tr>
						<td valign="top"><b>2) Objetivo personal para apoyar la participaci�n de un investigador en evento acad�mico</b></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.interesInsti2}"/></textarea>
						</td>
					</tr>
					<tr>
						<td><p class="texto1j"><b>3) Actividades a desarrollar en el marco del evento o por fuera de �l que amerite ser tenido en cuenta en el marco de la agenda de cooperaci�n.</b></p></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.interesInsti3}"/></textarea>
						</td>
					</tr>
					<tr>
						<td><p class="texto1j"><b>4) Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos institucionales trazados en el Plan Estrat�gico de Desarrollo 2007 - 2016 "Saberes, Conocimientos e Investigaci�n de alto impacto para el Desarrollo Humano y Social"<b></p></td>
					</tr>
					<tr>
						<td>
						<textarea readonly="readonly"  class="area2" rows="5"style="width:100%;"><c:out value="${sessionScope.InfoB.interesInsti4}"/></textarea>
						</td>
					</tr>
				</table>
				</td>
			</tr>-->
		</table>
	</fieldset>

	<fieldset>
	<legend>Evaluaci�n Justificaci�n y Agenda de Cooperaci�n</legend>
	<form name="evaluar" action='<c:url value="/evalMovilidad/llenar.jsp"/>' method="post">
	<input type="hidden" name="accion" value="3">
		<table class="tablas" align="center">
			<tr>
				<td class="renglones" align="center"><b>Item a Evaluar</b></td>
				<td class="renglones" align="center"><b>M�ximo</b></td>
			</tr>
			<tr>
				<td colspan="3" class="Renglones"><b>Justificaci�n de la participaci�n y Agenda de Cooperaci�n planteada por el investigador (30 puntos)</b></td>				
			</tr>			
			<tr>
				<td>Justificaci�n de la participaci�n en el evento en relaci�n con la actividad de investigaci�n</td>
				<td>10 puntos</td>
			</tr>
			<tr>
				<td>Agenda de cooperaci�n planteada por el investigador.</td>
				<td>20 puntos</td>
			</tr>
			<!--<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">-->			
			<!--</c:if>-->
			<!--<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr>
				<td colspan="3" class="Renglones"><b>Justificaci�n de la participaci�n y Agenda de Cooperaci�n planteada por el investigador (34 puntos)</b></td>
			</tr>
			</c:if>-->
			<!--<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">-->			
			<!--</c:if>-->
			<!--<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr>
				<td colspan="3" class="Renglones"><b>Justificaci�n de la participaci�n en el evento (14 puntos)</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">
			<tr>
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos personales.</td>				
				<td align="center"><b>4</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr>
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos personales.</td>
				<td align="center"><b>4</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">
			<tr class="trb">
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos del grupo/semillero de investigaci�n</td>
				<td align="center"><b>4</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr class="trb">
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos del grupo/semillero de investigaci�n</td>
				<td align="center"><b>5</b></td>
			</tr>
			</c:if>-->
<!--		<tr>
				<td colspan="3" class="Renglones"><b>Beneficio Institucional (30%)</b></td>
			</tr>-->
			<!--<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">
			<tr>
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos de la Universidad.</td>
				<td align="center"><b>4</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr>
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos de la Universidad.</td>
				<td align="center"><b>5</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">
			<tr>
				<td colspan="3" class="Renglones"><b>Agenda de las actividades previas, durante y posteriores al evento (18 puntos).</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr>
				<td colspan="3" class="Renglones"><b>Agenda de las actividades previas, durante y posteriores al evento (20 puntos).</b></td>
			</tr>
			</c:if>
			<c:if test="${sessionScope.InfoA.papel==1 or sessionScope.InfoA.papel==2}">
			<tr class="trb">
				<td>Agenda de las actividades previas, durante y posteriores al evento.</td>
				<td align="center"><b>18</b></td>
			</tr>
			</c:if>			
			<c:if test="${sessionScope.InfoA.papel==3 or sessionScope.InfoA.papel==5}">
			<tr class="trb">
				<td>Agenda de las actividades previas, durante y posteriores al evento.</td>
				<td align="center"><b>20</b></td>
			</tr>
			</c:if>-->
<!--		<tr>
				<td>Beneficio para la universidad</td>
				<td align="center" width="80px"><input class="caja11d" size="5" value="0" type="text" id="val4" name="valCri2" onKeyPress='return soloNumeros(event)' onkeyup="ValidarCaja(this,40)"> <b>%</b></td>
				<td align="center"><b>40</b></td>
			</tr>
			<tr>
				<td colspan="3" class="Renglones"><b>Inter�s Institucional (45%)</b></td>
			</tr>
			<tr>
				<td>Objetivo(s) institucional(es)</td>
				<td align="center" width="80px"><input class="caja11d" size="5" value="0" type="text" id="val5" name="valCri2" onKeyPress='return soloNumeros(event)' onkeyup="ValidarCaja(this,15)"> <b>%</b></td>
				<td align="center"><b>15</b></td>
			</tr>
			<tr class="trb">
				<td>Objetivo personal</td>
				<td align="center" width="80px"><input class="caja11d" size="5" value="0" type="text" id="val6" name="valCri2" onKeyPress='return soloNumeros(event)' onkeyup="ValidarCaja(this,15)"> <b>%</b></td>
				<td align="center"><b>15</b></td>
			</tr>
			<tr>
				<td>Actividades a desarrollar en el marco del evento o por fuera de �l que amerite ser tenido en cuenta en el marco de la agenda de cooperaci�n</td>
				<td align="center" width="80px"><input class="caja11d" size="5" value="0" type="text" id="val7" name="valCri2" onKeyPress='return soloNumeros(event)' onkeyup="ValidarCaja(this,35)"> <b>%</b></td>
				<td align="center"><b>35</b></td>
			</tr>
			<tr class="trb">
				<td>Justificaci�n de la participaci�n en el evento en cuanto a la importancia del mismo en el cumplimiento de los objetivos institucionales</td>
				<td align="center" width="80px"><input class="caja11d" size="5" value="0" type="text" id="val8" name="valCri2" onKeyPress='return soloNumeros(event)' onkeyup="ValidarCaja(this,35)"> <b>%</b></td>
				<td align="center"><b>35</b></td>
			</tr>
			<tr>
				<td class="renglones" align="right"><b>Total</b></td>
				<td class="renglones" align="center"><b><span id="total">&nbsp;</span></b></td>
				<td class="renglones">&nbsp;</td>
			</tr>-->			<tr>
				<td colspan="3" align="center">
					<input type="image" src='<c:url value="/comp/img/Siguiente.gif"/>'>
				</td>
			</tr>
		</table>
		</form>
	</fieldset>


</body>
</html>