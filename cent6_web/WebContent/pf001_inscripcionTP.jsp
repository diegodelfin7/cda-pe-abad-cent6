
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
               element03.type = "button";
               element03.value = "-";
               element03.onclick = function(){ row.parentNode.removeChild(row);return false;};
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
               element02.type = "button";
               element02.value = "-";
               element02.onclick = function(){ row.parentNode.removeChild(row);return false;};
               cell02.appendChild(element02);
     }
     
     function resetDatosTelefono(){
		 document.getElementById("txtTelefono").value="";
     }
     
     function resetDatosEmail(){
		document.getElementById("txtEmail").value="";
     }
     
     function deleteTelefono(tableID) {
          try {
	           var table = document.getElementById(tableID);
	           var rowCount = table.rows.length;
	           for(var i=0; i<rowCount; i++) {
	                var row = table.rows[i];
	                var chkbox = row.cells[3].childNodes[0];
	               // if(null != chkbox && true == chkbox.checked) {
	                if(null != chkbox && true == chkbox.clicked) {
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
							<th colspan="2" id="nue">Datos de la operaci�n</th>
						</tr>
						<tr class="tr_blanco">
							<td class="td_izq_color">Operaci�n</td>
							<td class="td_der_blan"><%= datos.get("Operacion")%></td>
						</tr>
						<tr class="tr_gris">
							<td class="td_izq_color">Usuario que autoriza-1ra Firma</td>
							<td class="td_der_blan"><%= datos.get("UsuarioAutoriza")%></td>
						</tr>
						<!--N�mero de Cuenta de Cargo-->
						<tr class="tr_blanco">
							<td class="td_izq_color">N�mero de Cuenta de Cargo</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("NumCuentaCargo")%>&nbsp;&nbsp;&nbsp;<%= datos.get("MonCuentaCargo")%></td>
						</tr>

						<!--N�mero de Cuenta de Abono-->
						<tr class="tr_gris">
							<td class="td_izq_color">N�mero de Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("NumCuentaAbono")%>&nbsp;&nbsp;&nbsp;<%= datos.get("MonCuentaAbono")%></td>
						</tr>
						<!--Titular de la Cuenta de Abono-->
						<tr class="tr_blanco">
							<td class="td_izq_color">Titular de la Cuenta de Abono</td>
							<td class="td_der_blan">&nbsp;<%= datos.get("TitCuentaAbono")%></td>
						</tr>



						<!--Fecha Opeeraci�n -->
						<tr class="tr_gris">
							<td class="td_izq_color">Fecha / Hora</td>
							<%String fecha=(String)datos.get("fechoper");
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
								id="AliasAsoc" />
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

					<table style="width: 520px;">
						<tr>
							<th colspan="2" id="nue">Tipo de Aviso</th>
						</tr>
						<tr>
							<td>
									<table style="width: 520px;"  >
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de Texto [SMS] a Tel�fono M�vil<br>
												OPERADOR <select name="companiaTelefonica" size="1">
															<OPTION value="TELE">Movistar</OPTION>
															<OPTION value="CLAR">Claro</OPTION>

												</select>
												

													TELEFONO  <input type="text" id="txtTelefono" value="TELEFONO" />
													
												<button name="btnAgregar" onclick="agregarTelefono('tablaTelefonos');">+</button>
												<button name="btnEliminar" onclick="resetDatosTelefono();">x</button>
											</td>
										</tr>
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2">
												<table id="tablaTelefonos" border="1" style="width: 520px;" >
													<tr><td style="width: 20px; ">No.</td><td style="width: 73px; ">Operador</td><td>Tel�fono</td><td>Acci�n</td></tr>
												</table>
											</td>
										</tr>
									</table>
							</td>
						</tr>
						<tr>
							<td>
								<div id="contenedorEmail">
									<table style="width: 476px;">
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2"><input
												type="checkbox" />Mensaje de aviso a la direcci�n
												electr�nica<br> <input type="text" id="txtEmail" value="E-MAIL" />
												<button name="btnAgregarEmail" onclick="agregarEmail('tablaEmails');">+</button>
												<button name="btnEliminar" onclick="resetDatosEmail();">x</button>
											</td>

										</tr>
										<tr class="tr_blanco">
											<td class="td_izq_color" colspan="2">
											<table id="tablaEmails" border="1" style="width: 520px;" >
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
