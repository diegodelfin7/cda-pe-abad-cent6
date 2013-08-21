
<html>
<head>
<LINK rel=STYLESHEET type='text/css' href="../estilos/tablas.css">
<%@ include file="includecbtf.jsp"%>


<% String hora = (String)traspaso.get("hora");
if(hora.length()==4)
	hora = hora.substring(0,2) + ":" + hora.substring(2,4);
%>
<link rel='stylesheet' media='screen' href='../css/menu.css'
	type='text/css' />
<link rel="stylesheet" media="screen" href="../css/estilos.css"
	type="text/css" />
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Pragma" CONTENT="no-cache">
<script language="Javascript" src="../js/banner.js">
	
</script>
<script language="Javascript" src="../js/utilidades.js">
	
</script>
<script language="Javascript">
	var conteoEmails = 0;
	function duplicarEmail() {
		conteoEmails++;
		var duplicado = '<table style="width: 520px;" border="0"><tr class="tr_blanco"><td class="td_izq_color" colspan="2" ><input type="checkbox"/>Mensaje de correo a la direcci�n electr�nica<br> <input type="text" value="DESCRIPCION" /> <button name="btnEnviar" onclick="duplicarEmail();">+</button></table>';
		document.getElementById("contenedorEmail").innerHTML = document
				.getElementById("contenedorEmail").innerHTML
				+ duplicado;
	}

	var conteoTelefonos = 0;
	function duplicarTelefono() {
		conteoTelefonos++;
		var contenidoDivTelefono = '<table style="width: 520px;" border="0">'
				+ '<tr class="tr_blanco">'
				+ '<td class="td_izq_color" colspan="2" >'
				+ '<input type="checkbox"/>Mensaje de Texto [SMS] a Tel�fono M�vil<br>'
				+ '<select><option>CLAIRO</option></select> <select><option>CLAIRO</option></select>'
				+ '<select><option>1234567890</option></select>'
				+ '<button name="btnEnviar" onclick="duplicarTelefono()">+</button>'
				+ '</td>' + '</tr>' + '</table>';

		document.getElementById("contenedorTelefonos").innerHTML = document
				.getElementById("contenedorTelefonos").innerHTML
				+ contenidoDivTelefono;
	}

	function click(e) {
		var message = "BBVA Banco Continental - Derechos Reservados 2001";
		if (document.all) {
			if (event.button == 2 || event.button == 3) {
				alert(message);
				return false;
			}
		}
		if (document.layers) {
			if (e.which == 3) {
				alert(message);
				return false;
			}
		}
	}
	if (document.layers) {
		document.captureEvents(Event.MOUSEDOWN);
	}
	document.onmousedown = click;
</script>
</HEAD>
<BODY onLoad="startBanner()" class="pag-contenido" link="#660099">
	<br>
	<div class="contenido_interior">
		<div class="maxwidth">
			<p align="right">
				<strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong>
			</p>
			<p>
				<strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
			<p>
				<strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
			<br>


		</div>
	</div>


	<!--Contenido de la tabla-->
	<div class="contenido_interior">
		<div class="maxwidth">
			<center>
				<div class="caja_tabla" style="width: 525px">
					<table>
						<tr>
							<th colspan="2" id="nue">Datos de la operaci�n</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Operaci�n</td>
							<td class="td_der_blan">NOMBRE OPERACION</td>
						</tr>
						<tr class="tr_gris">
							<td class="td_izq_color">Usuario que autoriza-1ra Firma</td>
							<td class="td_der_blan">USUARIO</td>
						</tr>
						<!--N�mero de Cuenta de Cargo-->
						<tr class="tr_blanco">
							<td class="td_izq_color">N�mero de Cuenta de Cargo</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("CtaOrd")%>&nbsp;&nbsp;&nbsp;<%= datos.get("monedactaord")%></td>
						</tr>

						<!--N�mero de Cuenta de Abono-->
						<tr class="tr_gris">
							<td class="td_izq_color">N�mero de Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("NumeroCtaBenef")%>&nbsp;&nbsp;&nbsp;<%= datos.get("moendactabenef")%></td>
						</tr>
						<!--Titular de la Cuenta de Abono-->
						<tr class="tr_blanco">
							<td class="td_izq_color">Titular de la Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("NombreAbono")%></td>
						</tr>



						<!--Fecha Opeeraci�n -->
						<tr class="tr_gris">
							<td class="td_izq_color">Fecha / Hora</td>
							<%String fecha=(String)traspaso.get("fechoper");
  fecha=fecha.substring(8,10)+"/"+fecha.substring(5,7)+"/"+fecha.substring(0,4);
  %>
							<td class="td_der_blan">&nbsp;<%= fecha%>&nbsp;&nbsp;&nbsp;<%=hora%></td>
						</tr>

					</table>

					<table>
						<tr>
							<th colspan="2" id="nue">Alias Asociado</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color" colspan="2">Descripci�n para
								recordar su pago&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
								value="DESCRIPCION" />
							</td>
						</tr>
					</table>

					<table>
						<tr>
							<th colspan="2">Aviso Recordatorio</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Deseo que me envien aviso
								recordatorio&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
								value="SI" id="rdRecordar" />SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="radio" value="NO" id="rdRecordar" />NO
							</td>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Los d�as <select><option>1</option></select>
								de cada mes
							</td>
						</tr>
					</table>

					<table style="width: 520px;" >
						<tr>
							<th colspan="2" id="nue">Tipo de Aviso</th>
						</tr>
						<tr>
							<td>
								<div id="contenedorTelefonos">
									<table style="width: 520px;" >
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de Texto [SMS] a Tel�fono M�vil<br>
												<select><option>CLAIRO</option></select> <select><option>CLAIRO</option></select>
												<select><option>1234567890</option></select>
												<button name="btnEnviar" onclick='duplicarTelefono();'>+</button>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div id="contenedorEmail">
									<table style="width: 520px;" >
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de correo a la direcci�n
												electr�nica<br> <input type="text" value="DESCRIPCION" />
												<button name="btnEnviar" onclick='duplicarEmail();'>+</button>
											</td>

										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
					<jsp:include page="cf001_ing_datos.jsp" flush="true" />
				</div>
			</center>
		</div>
	</div>
</body>
</html>
