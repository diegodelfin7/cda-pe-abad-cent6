
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
				<strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%>
			</p>
			<p>
				<strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			</p>
			<p align="right">
				<a href="../ci00_excel.jsp" title="Descargar" target="_new" >
					<img src="../images/excel.gif" border="0" name="excel" title="Descargar Excel ">
				</a>
				<a href="../ci00_excel.jsp" title="Descargar" target="_new" >
					<img src="../images/excel.gif" border="0" name="excel" title="Descargar PDF">
				</a>
			</p>
				
			<p align="center">
				<strong>&nbsp;&nbsp;MIS OPERACIONES FRECUENTES    </strong> <select ><option>Servicio</option></select> 
				
			</p>


		</div>
	</div>


	<!--Contenido de la tabla-->
	<div class="contenido_interior">
		<div class="maxwidth">
			<center>
				<div class="caja_tabla" style="width: 800px">
					<table width="791" height="134" ; height: 192px">
						<tr>
							<th height="21" colspan="7" id="nue">Relación de pagos frecuentes</th>
						</tr>
						
						
						<tr class="tr_blanco">
						  <td width="25" height="52" class="td_izq_color" valign="top"><div align="center"><b>Sel
					      </b></div>						    <b><label></label></b></td>
						  <b>						  </b><td width="202" class="td_der_blan" valign="top"><div align="center"><b>Servicio</b></div></td>
						  <b>						  </b><td width="200" valign="top"><div align="center"><b>Pago Frecuente</b></div></td>
						  <b>						  </b><td colspan="3" valign="top"><table width="223"><b>
						    </b>
						      <tr><b>
						      </b><td colspan="3" align="center"><b>AVISOS</b></td><b>
						      </b></tr><b>
						    </b><tr><td width="69"><div align="center"><b>SMS</b></div></td><b>
						      </b><td width="69"><div align="center"><b>Correo</b></div></td><b>
						      </b><td width="69"><div align="center"><b>Día (*)</b></div></td><b>
						    </b></tr></table></td><b>
						  </b><td width="116" valign="top"><div align="center"><b>Fecha de Creación</b></div></td>
						</tr>
						
						<tr class="tr_blanco">
						  <td class="td_izq_color"><label>
						    <input name="radiobutton" type="radio" value="radiobutton" />
						  </label></td>
						  <td class="td_der_blan">Pago de Servicio </td>
						  <td>Pago de agua de la empresa </td>
						  <td width="77" height="22">&nbsp;</td>
						  <td width="67">&nbsp;</td>
						  <td width="72">&nbsp;</td>
						  <td>&nbsp;</td>
					  </tr>
						<tr class="tr_blanco">
						  <td class="td_izq_color"><input name="radiobutton" type="radio" value="radiobutton" /></td>
						  <td class="td_der_blan">Transferencia a cuentas propias </td>
						  <td>Transferencia de utilidades </td>
						  <td height="21">&nbsp;</td>
						  <td>&nbsp;</td>
						  <td>&nbsp;</td>
						  <td>&nbsp;</td>
					  </tr>
  </table>					



</div><br>

			<p align="center">
				<input type="button" value="EJECUTAR"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="MODIFICAR"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="ELIMINAR"/>  
			</p>
			
			<p align="center">
				(*) La columna Día se refiere al día del mes en que se enviará el aviso recordatorio
			<br><br><br>MIS OPERACIONES FRECUENTES    </strong> <select ><option>Usuario</option></select> <select ><option>Servicio</option></select>
				
			</p>


		</div>
	</div>


	<!--Contenido de la tabla-->
	<div class="contenido_interior">
		<div class="maxwidth">
			<center>
				<div class="caja_tabla" style="width: 800px">
					<table width="791" height="134" ; height: 192px">
						<tr>
							<th height="21" colspan="7" id="nue">Relación de pagos frecuentes</th>
						</tr>
						
						
						<tr class="tr_blanco">
						  <td width="25" height="52" class="td_izq_color" valign="top"><div align="center"><b>Sel
					      </b></div>						    <b><label></label></b></td>
						  <b>						  </b><td width="202" class="td_der_blan" valign="top"><div align="center">Usuario</div></td>
						  <b>						  </b><td width="200" valign="top"><div align="center"><b>Pago Frecuente</b></div></td>
						  <b>						  </b><td colspan="3" valign="top"><table width="223"><b>
						    </b>
						      <tr><b>
						      </b><td colspan="3" align="center"><b>AVISOS</b></td><b>
						      </b></tr><b>
						    </b><tr><td width="69"><div align="center"><b>SMS</b></div></td><b>
						      </b><td width="69"><div align="center"><b>Correo</b></div></td><b>
						      </b><td width="69"><div align="center"><b>Día (*)</b></div></td><b>
						    </b></tr></table></td><b>
						  </b><td width="116" valign="top"><div align="center"><b>Fecha de Creación</b></div></td>
						</tr>
						
						<tr class="tr_blanco">
						  <td class="td_izq_color"><label>
						    <input name="radiobutton" type="radio" value="radiobutton" />
						  </label></td>
						  <td class="td_der_blan"> </td>
						  <td>Pago de agua de la empresa </td>
						  <td width="77" height="22">&nbsp;</td>
						  <td width="67">&nbsp;</td>
						  <td width="72">&nbsp;</td>
						  <td>&nbsp;</td>
					  </tr>
						<tr class="tr_blanco">
						  <td class="td_izq_color"><input name="radiobutton" type="radio" value="radiobutton" /></td>
						  <td class="td_der_blan"> </td>
						  <td>Transferencia de utilidades </td>
						  <td height="21">&nbsp;</td>
						  <td>&nbsp;</td>
						  <td>&nbsp;</td>
						  <td>&nbsp;</td>
					  </tr>
  </table>					



</div><br>

			<p align="center">
				<input type="button" value="EJECUTAR"/></p>
			
			<p align="center">
				(*) La columna Día se refiere al día del mes en que se enviará el aviso recordatorio
			</p>
			</center>
		</div>
	</div>
</body>
</html>
