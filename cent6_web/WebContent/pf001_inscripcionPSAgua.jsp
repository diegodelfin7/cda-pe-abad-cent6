
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
	
	function agregarTelefono(tableID) {
	 
	 		   var companiaTelefonica = document.getElementById("companiaTelefonica").value;	
	 		   var numeroTelefono = document.getElementById("txtTelefono").value; 	
	 			
               var table = document.getElementById(tableID);
               var rowCount = table.rows.length;
               var row = table.insertRow(rowCount);
                
               var cell00 = row.insertCell(0);
               var element00 = document.createElement('label');
			   element00.innerHTML = rowCount; 
               cell00.appendChild(element00);
               
               var cell01 = row.insertCell(1);
               var element01 = document.createElement("label");
               element01.innerHTML = companiaTelefonica;
               cell01.appendChild(element01);
               
               var cell02 = row.insertCell(2);
               var element02 = document.createElement("label");
               element02.innerHTML = numeroTelefono;
               cell02.appendChild(element02);
               
               var cell03 = row.insertCell(3);
               var element03 = document.createElement("input");
               element03.type = "checkbox";
               cell03.appendChild(element03);
     }

 function agregarEmail(tableID) {
	 
	 		   var email = document.getElementById("txtEmail").value; 	
	 			
               var table = document.getElementById(tableID);
               var rowCount = table.rows.length;
               var row = table.insertRow(rowCount);
                
               var cell00 = row.insertCell(0);
               var element00 = document.createElement('label');
			   element00.innerHTML = rowCount; 
               cell00.appendChild(element00);
               
               var cell01 = row.insertCell(1);
               var element01 = document.createElement("label");
               element01.innerHTML = email;
               cell01.appendChild(element01);
               
               
               var cell02 = row.insertCell(2);
               var element02 = document.createElement("input");
               element02.type = "checkbox";
               cell02.appendChild(element02);
     }
     
     
     function deleteTelefono(tableID) {
          try {
	           var table = document.getElementById(tableID);
	           var rowCount = table.rows.length;
	           for(var i=0; i<rowCount; i++) {
	                var row = table.rows[i];
	                var chkbox = row.cells[3].childNodes[0];
	                if(null != chkbox && true == chkbox.checked) {
	                     table.deleteRow(i);
	                     rowCount--;
	                     i--;
	                }
	           }
          }catch(e) {
               alert(e);
          }
     }
     
      function deleteEmail(tableID) {
          try {
	           var table = document.getElementById(tableID);
	           var rowCount = table.rows.length;
	           for(var i=0; i<rowCount; i++) {
	                var row = table.rows[i];
	                var chkbox = row.cells[2].childNodes[0];
	                if(null != chkbox && true == chkbox.checked) {
	                     table.deleteRow(i);
	                     rowCount--;
	                     i--;
	                }
	           }
          }catch(e) {
               alert(e);
          }
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
							<th colspan="2" id="nue">Inscripción - Operación Frecuente</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Servicio</td>
							<td class="td_der_blan"><%=request.getParameter("servicio")%></td>
						</tr>
						

						<tr class="tr_gris">
							<td class="td_izq_color">Número de Cuenta de Cargo</td>
							<td class="td_der_blan">&nbsp;<%= request.getParameter("numeroCuentaCargo")%></td>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Nombre de suministro</td>
							<td class="td_der_blan"><%= request.getParameter("numeroSuministro")%></td>
						</tr>
						<tr class="tr_gris">
							<td class="td_izq_color">Titular del Servicio</td>
							<td class="td_der_blan"><%= request.getParameter("titularServicio")%></td>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Importe pagado</td>
							<td class="td_der_blan"><%= request.getParameter("importePagado")%></td>
						</tr>
						<tr class="tr_gris">
							<td class="td_izq_color">Usuario(s) que autoriza(n)</td>
							<td class="td_der_blan">&nbsp;<%= request.getParameter("usuariosAutorizan")%></td>
						</tr>
						<!--Fecha Opeeración -->
						<tr class="tr_blanco">
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
												<select name="companiaTelefonica" size="1">
															<OPTION value="TELE">Movistar</OPTION>
															<OPTION value="CLAR">Claro</OPTION>

												</select>

													<input type="text" id="txtTelefono"  name="txtTelefono" value="TELEFONO"/>
													<button name="btnAgregar" onclick="agregarTelefono('tablaTelefonos');">+</button>
													<button name="btnEliminar" onclick="deleteTelefono('tablaTelefonos');">-</button>
											</td>
										</tr>
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2">
												<table id="tablaTelefonos" border="1" style="width: 407px;" >
													<tr><td style="width: 20px; ">No.</td><td style="width: 73px; ">Operador</td><td>Teléfono</td><td>Acción</td></tr>
												</table>
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
												electrónica<br> <input id="txtEmail" name="txtEmail" type="text" value="E-MAIL" />
												<button name="btnEnviar" onclick="agregarEmail('tablaEmails');">+</button>
												<button name="btnEliminar" onclick="deleteEmail('tablaEmails');">-</button>
											</td>

										</tr>
											<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2">
											<table id="tablaEmails" name="tablaEmails" border="1" style="width: 520px;" >
												<tr><td style="width: 28px; ">No.</td><td>Operador</td><td>Accion</td></tr>
											</table>
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
