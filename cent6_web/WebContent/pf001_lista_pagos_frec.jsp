
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
			<br><br><br>OTRAS OPERACIONES FRECUENTES    </strong> <select ><option>Usuario</option></select> <select ><option>Servicio</option></select>
				
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
							<th height="21" colspan="8" id="nue">Relación de pagos frecuentes</th>
						</tr>
						
						
						<tr class="tr_blanco">
						  <td width="25" height="52" class="td_izq_color" valign="top"><div align="center"><b>Sel
					      </b></div>						    <b><label></label></b></td>
						  <b>						  </b><td width="202" class="td_der_blan" valign="top"><div align="center">Usuario</div></td>
						  <b>						  </b><td width="202" class="td_der_blan" valign="top"><div align="center">Servicio</div></td>
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
						  <td width="72">&nbsp;</td>
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
