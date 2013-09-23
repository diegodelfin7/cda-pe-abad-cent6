
<html>
<head>
<LINK rel=STYLESHEET type='text/css' href="../estilos/tablas.css">
<%@ include file="includecbtf.jsp"%>


<%// String hora = (String)traspaso.get("hora");
//if(hora.length()==4)
	//hora = hora.substring(0,2) + ":" + hora.substring(2,4);
%>
<link rel='stylesheet' media='screen' href='../css/menu.css'
	type='text/css' />
<link rel="stylesheet" media="screen" href="../css/estilos.css"
	type="text/css" />
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Pragma" CONTENT="no-cache">
<script  src="../js/banner.js">
	
</script>
<script  src="../js/utilidades.js">
	
</script>
<script>
	var telefonos = "";
	var emails = "";


	function fValidar(){
		fValidarAlias();
		fValidarChBoxTelefonos();
	}
	
	function fValidarAlias(){
		var textoAlias = document.getElementById("AliasAsoc").value;
		if(textoAlias == ""){
			alert("Favor de agregar una descripción del Alias Asociado");
		}
	}
	
	function fActivarComponentesTelefonos(){
		var chBoxTelefonos = document.getElementById("chBoxTelefonos");
		if(chBoxTelefonos.checked == true){
			fActivarDivTelefonos();
		}else{
			fDesactivarDivTelefonos();
		}
	}
	
	function fActivarComponentesEmails(){
		var chBoxEmails = document.getElementById("chBoxEmails");
		if(chBoxEmails.checked == true){
			fActivarDivEmails();
		}else{
			fDesactivarDivEmails();
		}
	}
	
	function fActivarDivTelefonos(){
		var divEncabezadosTelefonos = document.getElementById("divEncabezadosTelefonos");
		var divTelefonos = document.getElementById("divTelefonos");
		divEncabezadosTelefonos.disabled = false;
		divTelefonos.disabled = false;
	}
	
	function fDesactivarDivTelefonos(){
		var divEncabezadosTelefonos = document.getElementById("divEncabezadosTelefonos");
		var divTelefonos = document.getElementById("divTelefonos");
		divEncabezadosTelefonos.disabled = true;
		divTelefonos.disabled = true;
	}
	
	function fActivarDivEmails(){
		var divEncabezadosEmails = document.getElementById("divEncabezadosEmails");
		var divEmails = document.getElementById("divEmails");
		divEncabezadosEmails.disabled = false;
		divEmails.disabled = false;
	}
	
	function fDesactivarDivEmails(){
		var divEncabezadosEmails = document.getElementById("divEncabezadosEmails");
		var divEmails = document.getElementById("divEmails");
		divEncabezadosEmails.disabled = true;
		divEmails.disabled = true;
	}	
	
	function fActivarDesactivarTodos(){
	
		//Radio
 		var rdRecordar = document.getElementsByName("rdRecordar");
		var blnRadioSi =  rdRecordar[0].checked;
		
		var chBoxTelefonos = document.getElementById("chBoxTelefonos");
		var chBoxEmails = document.getElementById("chBoxEmails");
		
		if(blnRadioSi){
			chBoxEmails.disabled = false;
			chBoxTelefonos.disabled = false;
			
			fActivarComponentesTelefonos();
			fActivarComponentesEmails(); 
		}else{
			chBoxTelefonos.disabled = true;
			chBoxTelefonos.checked = 0;
			
			chBoxEmails.disabled = true;
			chBoxEmails.checked = 0;
			
			fActivarComponentesTelefonos();
			fActivarComponentesEmails();
		}
	}
	
	

	function form_submit() {
	
		
		document.cuerpo.boton.disabled = true;
		document.cuerpo.action = "OperacionCBTFServlet?proceso=pfPagoFrecuenteTP_pr&operacion=pfRealizarTP_op&accion=realizar";
		document.cuerpo.submit();
	}

	function agregarTelefono(tableID) {

		var companiaTelefonica = document.getElementById("companiaTelefonica").value;
		var numeroTelefono = document.getElementById("txtTelefono").value;

		if (companiaTelefonica == "TELE") {
			numeroTelefono = "M " + numeroTelefono;
		}
		if (companiaTelefonica == "CLAR") {
			numeroTelefono = "C " + numeroTelefono;
		}

		if (telefonos == "") {
			telefonos = numeroTelefono;
		} else {
			telefonos = telefonos + "|" + numeroTelefono;
		}

		document.getElementById("hdTelefonos").value = telefonos;

		var table = document.getElementById(tableID);
		var rowCount = table.rows.length;

		if (rowCount <= 8) {

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
			element02.innerHTML = document.getElementById("txtTelefono").value;
			cell02.appendChild(element02);

			var cell03 = row.insertCell(3);
			var element03 = document.createElement("input");
			element03.type = "button";
			element03.value = "-";
			element03.onclick = function() {
				row.parentNode.removeChild(row);
				fCortarCadenaTelefono(numeroTelefono);
				return false;
			};
			cell03.appendChild(element03);
		}
	}

	function agregarEmail(tableID) {

		var email = document.getElementById("txtEmail").value;

		var table = document.getElementById(tableID);

		var rowCount = table.rows.length;

		var email = document.getElementById("txtEmail").value;

		if (emails == "") {
			emails = email;
		} else {
			emails = emails + "|" + email;
		}

		document.getElementById("hdEmails").value = emails;

		if (rowCount <= 8) {
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
			element02.onclick = function() {
				row.parentNode.removeChild(row);
				fCortarCadenaEmail(email);
				return false;
			};
			cell02.appendChild(element02);

		}
	}

	function fCortarCadenaTelefono(cadenaCortar) {
		var stringArray = telefonos.split("|");
		//Resetemos la variagle global
		telefonos = "";
		for (i = 0; i < stringArray.length; i++) {
			if (stringArray[i] == cadenaCortar) {

			} else {
				if (telefonos == "") {
					telefonos = stringArray[i];
				} else {
					telefonos = telefonos + "|" + stringArray[i];
				}
			}

		}

		document.getElementById("hdTelefonos").value = telefonos;
	}

	function fCortarCadenaEmail(cadenaCortar) {
		var stringArray = emails.split("|");
		//Resetemos la variagle global
		emails = "";
		for (i = 0; i < stringArray.length; i++) {
			if (stringArray[i] == cadenaCortar) {

			} else {
				if (emails == "") {
					emails = stringArray[i];
				} else {
					emails = emails + "|" + stringArray[i];
				}
			}

		}

		document.getElementById("hdEmails").value = emails;
	}

	function resetDatosTelefono() {
		document.getElementById("txtTelefono").value = "";
	}

	function resetDatosEmail() {
		document.getElementById("txtEmail").value = "";
	}

	function llenarCmbDias() {
		//alert("HOLA");
		var select = document.getElementsByTagName('select')[0];
		//select.options.length = 0; // clear out existing items
		for ( var i = 0; i < 32; i++) {
			select.options.add(new Option("" + i, i));
		}
	}

	function deleteTelefono(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[3].childNodes[0];
				// if(null != chkbox && true == chkbox.checked) {
				if (null != chkbox && true == chkbox.clicked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}
			}
		} catch (e) {
			alert(e);
		}
	}

	function deleteEmail(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[2].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}
			}
		} catch (e) {
			alert(e);
		}
	}

	function fObtenerTelefonos(tableID) {
		try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			for ( var i = 0; i < rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[2].childNodes[0];
				if (null != chkbox && true == chkbox.checked) {
					table.deleteRow(i);
					rowCount--;
					i--;
				}
			}
		} catch (e) {
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
<form name="cuerpo" method="post">
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
	<div class="contenido_interior"  id="divContenidoInterior">
		<div class="maxwidth">
			<center>
				<div class="caja_tabla" style="width: 525px">
				

  <tr>
	<td>
	  <tr>
	    <td width="721" height="181"><table width="618">
	      <tr>
	        <th align="left"  colspan="2" id="nue">Inscripcion Operación Frecuente</th>
	        </tr>
	      <tr class="tr_blanco">
	        <td width="304" class="td_izq_color">Operación</td>
	        <td width="302" class="td_der_blan"><%= datos.get("operacion")%></td>
	        </tr>
	      <tr class="tr_gris">
	        <td class="td_izq_color">Usuario que autoriza-1ra Firma</td>
	        <td class="td_der_blan"><%= datos.get("usuAutoriza")%></td>
	        </tr>
	      <!--Número de Cuenta de Cargo-->
	      <tr class="tr_blanco">
	        <td class="td_izq_color">Número de Cuenta de Cargo</td>
	        <td class="td_der_blan">&nbsp;<%= datos.get("cuentaCargo")%>&nbsp;&nbsp;&nbsp;<%= datos.get("monedaCuentaCar")%></td>
	        </tr>
	      <!--Número de Cuenta de Abono-->
	      <tr class="tr_gris">
	        <td class="td_izq_color">Número de Cuenta de Abono</td>
	        <td class="td_der_blan">&nbsp;<%= datos.get("cuentaAbono")%>&nbsp;&nbsp;&nbsp;
	          <%//= datos.get("monedaCuentaAbono")%></td>
	        </tr>
	      <!--Titular de la Cuenta de Abono-->
	      <tr class="tr_blanco">
	        <td class="td_izq_color">Titular de la Cuenta de Abono</td>
	        <td class="td_der_blan">&nbsp;<%= datos.get("titCuentaAbono")%></td>
	        </tr>
	      <!--Fecha Opeeración -->
	      <tr class="tr_gris">
	        <td class="td_izq_color">Fecha / Hora</td>
	        <%/*String fecha=(String)datos.get("fechoper");
  fecha=fecha.substring(8,10)+"/"+fecha.substring(5,7)+"/"+fecha.substring(0,4);*/
  %>
	        <td class="td_der_blan">&nbsp;
	          <%//= fecha%>
	          &nbsp;&nbsp;&nbsp;
	          <%//=hora%></td>
	        </tr>
	      </table></td>
	    </tr>
	  <tr>
	  
	    <td height="80"><table width="622">
	      <tr>
	        <th align="left" colspan="2" id="nue2">Alias Asociado</th>
	        </tr>
	      <tr class="tr_blanco">
	        <td class="td_izq_color" colspan="2">Descripción para
	          recordar su pago&nbsp;&nbsp;&nbsp;&nbsp;
	          <input type="text" name="AliasAsoc" id="AliasAsoc" /></td>
	        </tr>
	      </table></td>
	    
	  
	    <td><table width="625">
	      <tr>
	        <th align="left" colspan="2">Aviso Recordatorio</th>
	        </tr>
	      <tr class="tr_blanco">
	        <td class="td_der_color">Deseo que me envien aviso
	          recordatorio&nbsp;&nbsp;&nbsp;&nbsp;
	          <input type="radio"
									value="SI" name="rdRecordar" id="rdRecordar" checked="checked" onclick="fActivarDesactivarTodos();"/>
	          SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	          <input
									type="radio" value="NO" name="rdRecordar" id="rdRecordar" onclick="fActivarDesactivarTodos();" />
	          NO </td>
	        </tr>
	      <tr class="tr_gris">
	        <td class="td_der_color">Los días
	          <select id="cmbDias" name="cmbDias">
	            <option>1</option>
	            <option>2</option>
	            <option>3</option>
	            <option>4</option>
	            <option>5</option>
	            <option>6</option>
	            <option>7</option>
	            <option>8</option>
	            <option>9</option>
	            <option>10</option>
	            <option>11</option>
	            <option>12</option>
	            <option>13</option>
	            <option>14</option>
	            <option>15</option>
	            <option>16</option>
	            <option>17</option>
	            <option>18</option>
	            <option>19</option>
	            <option>20</option>
	            <option>21</option>
	            <option>22</option>
	            <option>23</option>
	            <option>24</option>
	            <option>25</option>
	            <option>26</option>
	            <option>27</option>
	            <option>28</option>
	            <option>29</option>
	            <option>30</option>
	            <option>31</option>
	            </select>
	          de cada mes </td>
	        </tr>
	        
	    <td><table width="701" border="0">
	      <tr>
	        <th align="left" width="691" colspan="2">Tipo de Aviso</th>
	        </tr>
	     
	        <td height="103"><table width="695"  >
	          <tr>
	            <td width="634"><input type="checkbox" id="chBoxTelefonos"  name="chBoxTelefonos" onclick="fActivarComponentesTelefonos();" />
	              Mensaje de Texto [SMS]
	              a Teléfono Móvil</td>
	            </tr>
	          <tr>
	            <td>
	            
	            <div id="divEncabezadosTelefonos" disabled>
	            <table border="1">
	              <tr>
	                <td width="123" style="width: 127px;">OPERADOR</td>
	                <td width="125" style="width: 129px;"><select
																		name="companiaTelefonica" size="1">
	                  <option value="TELE">Movistar</option>
	                  <option value="CLAR">Claro</option>
	                  </select></td>
	                <td width="112" style="width: 116px;">TELEFONO</td>
	                <td width="144" style="width: 113px;"><input
																		type="text" id="txtTelefono" value="TELEFONO" /></td>
	                <td width="30"><button name="btnAgregar"
																			onclick="agregarTelefono('tablaTelefonos');">+</button></td>
	                <td width="69"><button name="btnEliminar"
																			onclick="resetDatosTelefono();">x</button></td>
	                </tr>
	              </table>
	              </div>
	              </td>
	            </tr>
	          <tr class="tr_blanco">
	            <td class="td_izq_color" colspan="2">
	            
	            <div id="divTelefonos" style="height:100px;overflow:auto;display:inline-block" disabled>
	            <table width="653"  border="1" id="tablaTelefonos"
																>
	              <tr>
	                <td width="69">No.</td>
	                <td width="223">Operador</td>
	                <td width="181">Teléfono</td>
	                <td width="152">Acción</td>
	                </tr>
	              </table>
	              </div>
	              </td>
	            </tr>
	          </table></td>
	        </tr>
	      <tr>
	        <td>&nbsp;</td>
	        </tr>
	      <tr>
	        <td>
	         <div id="divEncabezadosEmails" name="divEncabezadosEmails" >
	        <table width="693" >
	          <tr class="tr_blanco">
	            <td width="595" colspan="2" class="td_izq_color"><input 	type="checkbox" id="chBoxEmails" name="chBoxEmails"  onclick="fActivarComponentesEmails();"/>
	              Mensaje de aviso a la dirección
	              electrónica<br />
	              <input type="text" id="txtEmail"
																value="E-MAIL" />
	              <button name="btnAgregarEmail"
																	onclick="agregarEmail('tablaEmails');">+</button>
	              <button name="btnEliminar" onclick="resetDatosEmail();">x</button></td>
	            </tr>
	          <tr class="tr_blanco">
	            <td class="td_izq_color" colspan="2">
	              </td>
	            </tr>
	          </table>
	          </div>
	          </td>
	        </tr>
	        
	      <tr>
	        <td>  
	        	 <div id="divEmails" name="divEmails"  style="height:100px;overflow:auto;display:inline-block" disabled>
	        	<table width="398" border="1" id="tablaEmails" >
	              <tr>
	                <td>No.</td>
	                <td>Operador</td>
	                <td>Accion</td>
	                </tr>
	              </table></div>
	              
	              </td>
	        </tr>
	      <tr>
	        <td><input type="button"
												value="Aceptar" name="boton" onclick="fValidar();"
												tabindex="12" /></td>
	        </tr>
	      </table></td>
	    </tr>
	  </table>
	  <p>&nbsp;</p>

  <input type="hidden" id="hdTelefonos" name="hdTelefonos" /> 
									<input
									type="hidden" id="hdEmails" name="hdEmails" />
</form>
</body>
</html>
