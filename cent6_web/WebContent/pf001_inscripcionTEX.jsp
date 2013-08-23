
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
		var duplicado = '<table style="width: 520px;" border="0"><tr class="tr_blanco"><td class="td_izq_color" colspan="2" ><input type="checkbox"/>Mensaje de correo a la dirección electrónica<br> <input type="text" value="DESCRIPCION" /> <button name="btnEnviar" onclick="duplicarEmail();">+</button></table>';
		document.getElementById("contenedorEmail").innerHTML = document.getElementById("contenedorEmail").innerHTML	+ duplicado;
	}

	var conteoTelefonos = 0;
	function duplicarTelefono() {
	
	var comboLocalidades = 	'<SELECT name="Localidad1" size="1">'+
							'<OPTION value="1">Lima-Callao</OPTION>'+
							'<OPTION value="41">Amazonas</OPTION>'+
							'<OPTION value="43">Ancash</OPTION>'+
							'<OPTION value="83">Apurimac</OPTION>'+
							'<OPTION value="54">Arequipa</OPTION>'+
							'<OPTION value="66">Ayacucho</OPTION>'+
							'<OPTION value="76">Cajamarca</OPTION>'+
							'<OPTION value="63">Cerro de Pasco</OPTION>'+
							'<OPTION value="84">Cusco</OPTION>'+
							'<OPTION value="67">Huancavelica</OPTION>'+
							'<OPTION value="62">Huanuco</OPTION>'+
							'<OPTION value="56">Ica</OPTION>'+
							'<OPTION value="64">Junin</OPTION>'+
							'<OPTION value="44">La Libertad</OPTION>'+
							'<OPTION value="74">Lambayeque</OPTION>'+
							'<OPTION value="65">Loreto</OPTION>'+
							'<OPTION value="82">Madre de Dios</OPTION>'+
							'<OPTION value="53">Moquegua</OPTION>'+
							'<OPTION value="73">Piura</OPTION>'+
							'<OPTION value="51">Puno</OPTION>'+
							'<OPTION value="42">San Martin</OPTION>'+
							'<OPTION value="52">Tacna</OPTION>'+
							'<OPTION value="72">Tumbes</OPTION>'+
							'<OPTION value="61">Ucayali</OPTION>'+
					'</SELECT>';
	
		conteoTelefonos++;
		var contenidoDivTelefono = '<table style="width: 520px;" border="0">'
				+ '<tr class="tr_blanco">'
				+ '<td class="td_izq_color" colspan="2" >'
				+ '<input type="checkbox"/>Mensaje de Texto [SMS] a Teléfono Móvil<br>'
				+ '<select><option>CLAIRO</option></select>'
				+ comboLocalidades
				+ '<input type="text" id="txtTelefono" />'
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
							<th colspan="2" id="nue">Datos de la operación</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Operación</td>
							<td class="td_der_blan"><%=request.getParameter("Operacion")%></td>
						</tr>
						<tr class="tr_gris">
							<td class="td_izq_color">Usuario que autoriza-1ra Firma</td>
							<td class="td_der_blan"><%=request.getParameter("UsuarioAutoriza")%></td>
						</tr>
						<!--Número de Cuenta de Cargo-->
						<tr class="tr_blanco">
							<td class="td_izq_color">Número de Cuenta de Cargo</td>
							<td class="td_der_blan">&nbsp;<%= request.getParameter("NumCuentaCargo")%>&nbsp;&nbsp;&nbsp;<%= request.getParameter(("MonCuentaCargo")%></td>
						</tr>

						<!--Número de Cuenta de Abono-->
						<tr class="tr_gris">
							<td class="td_izq_color">Número de Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= request.getParameter("NumeroCtaBenef")%>&nbsp;&nbsp;&nbsp;<%= request.getParameter("MonCuentaAbono")%></td>
						</tr>
						<!--Titular de la Cuenta de Abono-->
						<tr class="tr_blanco">
							<td class="td_izq_color">Titular de la Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= request.getParameter("TitCuentaAbono")%></td>
						</tr>



						<!--Fecha Opeeración -->
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
							<td class="td_izq_color" colspan="2">Descripción para
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
							<td class="td_izq_color">Los días <select><option>1</option></select>
								de cada mes
							</td>
						</tr>
					</table>

					<table style="width: 520px;">
						<tr>
							<th colspan="2" id="nue">Tipo de Aviso</th>
						</tr>
						<tr>
							<td>
								<div id="contenedorTelefonos">
									<table style="width: 520px;">
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de Texto [SMS] a Teléfono Móvil<br>
												<select><option>CLAIRO</option></select><SELECT
												name="Localidad1" size="1">

													<OPTION value="1">Lima-Callao</OPTION>

													<OPTION value="41">Amazonas</OPTION>

													<OPTION value="43">Ancash</OPTION>

													<OPTION value="83">Apurimac</OPTION>

													<OPTION value="54">Arequipa</OPTION>

													<OPTION value="66">Ayacucho</OPTION>

													<OPTION value="76">Cajamarca</OPTION>

													<OPTION value="63">Cerro de Pasco</OPTION>

													<OPTION value="84">Cusco</OPTION>

													<OPTION value="67">Huancavelica</OPTION>

													<OPTION value="62">Huanuco</OPTION>

													<OPTION value="56">Ica</OPTION>

													<OPTION value="64">Junin</OPTION>

													<OPTION value="44">La Libertad</OPTION>

													<OPTION value="74">Lambayeque</OPTION>

													<OPTION value="65">Loreto</OPTION>

													<OPTION value="82">Madre de Dios</OPTION>

													<OPTION value="53">Moquegua</OPTION>

													<OPTION value="73">Piura</OPTION>

													<OPTION value="51">Puno</OPTION>

													<OPTION value="42">San Martin</OPTION>

													<OPTION value="52">Tacna</OPTION>

													<OPTION value="72">Tumbes</OPTION>

													<OPTION value="61">Ucayali</OPTION>

													<input type="text" id="txtTelefono" />
													
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
									<table style="width: 520px;">
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de correo a la dirección
												electrónica<br> <input type="text" value="DESCRIPCION" />
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
