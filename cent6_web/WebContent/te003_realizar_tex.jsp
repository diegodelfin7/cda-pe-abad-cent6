<html>
<head>
<%@ include file ="includecbtf.jsp" %>
<link rel=stylesheet type='text/css' href="../estilos/tablas.css">
<link rel='stylesheet' media='screen' href='../css/menu.css' type='text/css' />
<link rel="stylesheet" media="screen" href="../css/estilos.css" type="text/css" />
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Pragma" CONTENT="no-cache">	
<script language='Javascript' src='../js/banner.js'> </script> 
<script language='Javascript' src='../js/utilidades.js'></script>
<script language="Javascript" src="../js/tp003_conf_tras.js"></script> 
<script language="Javascript">
<!-- 
 function doPrint()
 {
   Imprimir();
 } 
 explorer4();
// --> 
</script>

<script language="Javascript">
function enviar(valor)
{	<%
	String mon1 = "";
	if(datos.get("DIVISA").toString().equals("DÓLARES"))
		mon1 = "USD";
	if(datos.get("DIVISA").toString().equals("CORONAS DANESAS"))
		mon1 = "DKK";
	if(datos.get("DIVISA").toString().equals("CORONAS SUECAS"))
		mon1 = "SEK";
	if(datos.get("DIVISA").toString().equals("DÓLAR CANADA"))
		mon1 = "CAD";
	if(datos.get("DIVISA").toString().equals("EUROS"))
		mon1 = "EUR";			
	if(datos.get("DIVISA").toString().equals("FRANCOS SUIZOS"))
		mon1 = "CHF";			
	if(datos.get("DIVISA").toString().equals("LIBRAS ESTERLINAS"))
		mon1 = "GBP";			
	if(datos.get("DIVISA").toString().equals("YENES"))
		mon1 = "JPY";						
	%>
	document.cuerpo.cadena.value="<%= datos.get("NRO_OPERACION_INI")%>| |<%= datos.get("importe")%>|<%=mon1%>|<%= datos.get("usuario")%>| | ";
	document.cuerpo.funcion.value="KW74";
	document.cuerpo.action="OperacionCBTFServlet?proceso=cf_confirmacion_oper_pr&operacion=cf_ing_datos_op&accion=salvar";
	document.cuerpo.submit();
	document.cuerpo.b1.disabled = true;
}
</script>
</head> 
<script language=JavaScript>
<!--	
	function click(e) {
		var message="BBVA Banco Continental - Derechos Reservados 2001";
		if (document.all) {
			if (event.button==2||event.button==3) {
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
	document.onmousedown=click;
	
	function inscribir(){
		
		document.frmInscripcion.operacion.value="Transferencias al Exterior";
		
		document.frmInscripcion.usuarioAutoriza.value="<%= datos.get("usuarioAutoriza")%>";
		document.frmInscripcion.numCuentaCargo.value="<%= datos.get("numeroCuentaCargo")%>";
		document.frmInscripcion.monCuentaCargo.value="<%= datos.get("montoCuentaCargo")%>";
		document.frmInscripcion.numCuentaAbono.value="<%= datos.get("numeroCuentaAbono")%>";
		document.frmInscripcion.monCuentaAbono.value="<%= datos.get("montoCuentaAbono")%>";
		document.frmInscripcion.nombreBeneficiario.value="<%= datos.get("nombreBeneficiario")%>";
		document.frmInscripcion.montoCuentaCargo.value="<%= datos.get("montoCuentaCargo")%>";
		document.frmInscripcion.motivoTransferencia.value="<%= datos.get("motivoTransferencia")%>";
		document.frmInscripcion.nombreBancoPagador.value="<%= datos.get("nombreBancoPagador")%>";
		document.frmInscripcion.direccionBancoPagador.value="<%= datos.get("direccionBancoPagador")%>";
		
		document.frmInscripcion.boton1.disabled=true;
		document.frmInscripcion.submit();


	}
	
// --> 
</script>
<BODY onLoad="startBanner()" class="pag-contenido" link="#660099">
<div class="contenido_interior">
<div class="maxwidth">
<p align="right"><strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong></p>
<p><strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
<p><strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
<h2>Transferencias al Exterior</h2>
</div>
</div>
<br>
<!-- Inicio Contenido de la tabla //-->
<div class="contenido_interior">
<div class="maxwidth">
<br class="falso" />

<center>
<center>
<div class="caja_tabla" style="width:550px!importants;">

<table> 
<tr>	
    <% String tipoOperacion = datos.get("esOK").toString();
    if(tipoOperacion.equals("S")){  %>
		<th colspan="2" id="nue">SU OPERACION HA SIDO REALIZADA</th>          	
    <%}else{%>
       	<th colspan="2" id="nue">TOME NOTA DEL NUMERO DE SOLICITUD PARA PROCESAR LA AUTORIZACION</th>
    <%}%>
</tr>
<tr class="tr_blanco">          
    <%if(tipoOperacion.equals("S")){  %>
		<td class="td_izq_color">Número de Operación</td>
    <%}else{%>
        <td class="td_izq_color">Número de Solicitud</td>
    <%}%>
    <td valign="top" class="td_der_blan"><%=datos.get("NRO_OPERACION_INI")%></td>
</tr>
<tr class="tr_gris"> 
       <td class="td_izq_color">Número de Cuenta de Cargo</td>
       <td valign="top" class="td_der_blan"><%=datos.get("NROCTA")%></td>
</tr>
<tr class="tr_blanco">
       <td class="td_izq_color">Importe a Transferir</td>
       <td valign="top" class="td_der_blan"><%=datos.get("importe")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DIVISA")%></td>
</tr>
<tr class="tr_gris">
      <td class="td_izq_color">Cuenta de Abono</td>
      <td valign="top" class="td_der_blan"><%=datos.get("ctaAbono")%></td>
</tr>
<tr class="tr_blanco"> 
		<td class="td_izq_color">Nombre del Beneficiario</td>
		<td valign="top" class="td_der_blan"><%= datos.get("nomBenef")%> </td>
</tr>
<tr class="tr_gris"> 
		<td class="td_izq_color">Dirección del Beneficiario</td>
    	<td valign="top" class="td_der_blan"><%=datos.get("sMotivo1")%> </td>
</tr>
<% String motivo1 = datos.get("motivo1").toString();
if(!(motivo1.equals(""))){  %>
<tr class="tr_blanco"> 
		<td class="td_izq_color">Motivo</td>
    	<td valign="top" class="td_der_blan"><%=datos.get("motivo1")%> 
    	<% String motivo2 = datos.get("motivo2").toString();
		if(!(motivo2.equals(""))){  %>
			-&nbsp;<%= datos.get("motivo2")%>
		<%}%></td>
</tr>
<%}%>
<% String sAvanceCadena = datos.get("sAvanceCadena").toString();
if(!(sAvanceCadena.equals("0"))){  %>
<tr class="tr_gris">    
    	<td class="td_izq_color">Código de Avance</td>
    	<td valign="top" class="td_der_blan"><%=datos.get("sAvanceCadena")%></td>
</tr>
<%}%> 
<tr class="tr_blanco"> 
    	<td class="td_izq_color">Gastos</td>
    	<td valign="top" class="td_der_blan">
		<% String tipogasto = datos.get("sINDGASTO").toString();
  		if(tipogasto.equals("B")){  %>
    	Beneficiaria
    	<%}else{%>
    	Ordenante
    	<%}%></td>    
</tr>
<tr class="tr_gris"> 
    <td class="td_izq_color">Nombre del Banco Pagador</td>
    <td valign="top" class="td_der_blan"><%=datos.get("sBanNombre")%> </td>    
</tr>
<tr class="tr_blanco">    
    <td class="td_izq_color">Dirección del Banco Pagador</td>
    <td valign="top" class="td_der_blan"><%=datos.get("sDirecBancoPaga")%> </td>    
</tr>
<% String codSwift = datos.get("codSwift").toString();
if(!(codSwift.equals(""))){  %>
<tr class="tr_gris">           
      <td class="td_izq_color" >Codigo (Swift, ABA, Fed wire, etc.)</td>
      <td valign="top" class="td_der_blan"><%= datos.get("codSwift").toString().toUpperCase()%></td>          
</tr>
<%}%>
<% String tipo = datos.get("sutilizaBanco").toString();
     if(tipo.equals("1")){ %>
<tr class="tr_blanco">		
	<td class="td_izq_color">Nombre del Banco Intermediario</td>
	<td valign="top" class="td_der_blan"><%= datos.get("sconBanNombre").toString().toUpperCase()%>&nbsp;</td>    	
</tr>
<tr class="tr_gris">	
	<td class="td_izq_color">Dirección del Banco Intermediario</td>
	<td valign="top" class="td_der_blan"><%= datos.get("sconDirecBancoPaga").toString().toUpperCase()%>&nbsp;</td>	
</tr>
	<% String sconCodSwift = datos.get("sconCodSwift").toString();
	if(!(sconCodSwift.equals(""))){  %>
	<tr class="tr_blanco">
		<td class="td_izq_color">Codigo (Swift, ABA, Fed wire, etc.)</td>
		<td valign="top" class="td_der_blan"><%= datos.get("sconCodSwift").toString().toUpperCase()%>&nbsp;</td>	
	</tr>
	<%}%>
<%}%>       
</table>
<center>
<%if(tipoOperacion.equals("S")){  %>
	<table class="oculta"><tr><td align="justify">
	En "Consulta de Operaciones" podr&aacute; revisar los detalles de su Transferencia al
	Exterior, el mensaje SWIFT lo tendr&aacute; disponible luego que culmine el proceso  
	de validaci&oacute;n que depende de la fecha y hora en que se orden&oacute; la 
	Transferencia al Exterior. 
	 </td></tr></table>    	        
	<jsp:include page="cf001_ing_datos.jsp"  flush="true"/>	        
<%}else{%>
        <table class="oculta"><tr><td align="justify" >
        <b>Estimado Cliente:</b><br>
        Esta operación requiere autorización de otro representante de su empresa. Tome nota
        del "Número de Solicitud" y comuníquele que ingrese a Continet Empresas, por la opción 
        "Autorización de Solicitudes", para completar el envío de esta operación.<br>
        Esta solicitud tiene validez solo el día de hoy, despues será anulada automáticamente.
        </td></tr></table>
<%}%>


<% 
String flagView = "";
if(request.getParameter("flagVolver")!=null ){
	flagView = request.getParameter("flagVolver");
}

if(!flagView.equals("")) { %>
	<jsp:include page="pfInclusionPagoFrecuenteTEX.jsp"  flush="true"/>
<%} %>

</center>
 </div>
 </center>
 </div>
 

 </div>
 </BODY>
</html>
