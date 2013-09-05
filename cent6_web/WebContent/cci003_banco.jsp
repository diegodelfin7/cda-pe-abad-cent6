
<html>

<head>

<title>CONTINET-BBVA BANCO CONTINENTAL</title>

<%@ include file="includecbtf.jsp" %> 
<script language='Javascript'>
	var isNN = (navigator.appName.indexOf('Netscape')!=-1);
	var ver = parseInt(navigator.appVersion);
	if(!(isNN && ver == 4))
	{
		document.write("<meta http-equiv='Expires' CONTENT='0'>");
	 	document.write("<meta http-equiv='Pragma' CONTENT='no-cache'>");	
	}

function enviar(valor)
{

	document.cuerpo.cadena.value="<%=datos.get("operacion1")%>|<%=datos.get("operacion2")%>|<%=datos.get("importecargado")%>|<%=datos.get("monedacargo")%>|<%= datos.get("usuario")%>|<%= datos.get("fechaSal")%>|<%=datos.get("horaSal")%>";
	
	document.cuerpo.funcion.value="KW70";
	document.cuerpo.b1.disabled = true;
	document.cuerpo.action="OperacionCBTFServlet?proceso=cf_confirmacion_oper_pr&operacion=cf_ing_datos_op&accion=salvar";
	document.cuerpo.submit();
	  
}


function inscribir(){
	document.frmInscripcion.operacion.value="Pago de Instituciones";
	document.frmInscripcion.usuarioAutoriza.value="<%= datos.get("usuario")%>";
	document.frmInscripcion.numeroCuentaCargo.value="<%= datos.get("ctacargo")%>";
	document.frmInscripcion.montoCuentaCargo.value="<%= datos.get("importe")%>";
	document.frmInscripcion.nombreBeneficiario.value="<%= datos.get("beneficiario")%>";
	document.frmInscripcion.tipoDocumento.value="<%= datos.get("DocumentoDescBenef")%>";
	document.frmInscripcion.numeroDocumento.value="<%= datos.get("NumeroDocBenef")%>";
	document.frmInscripcion.boton1.disabled=true;
	document.frmInscripcion.submit();
}
</script>
<style type="text/css">
	.negra {
			font-weight:bold;
			}
	table.tabla1 {
		border: solid #000 1px;
		}
	table.tabla1 td{ 
		border: solid #000 1px;
		font-size:100%;
		font:;
		}		
</style>
<link rel="stylesheet" media="screen" href="../css/estilos.css" type="text/css" />
<script language='Javascript' src='../js/banner.js'> </script> 

<script language='Javascript' src='../js/utilidades.js'></script>

</head> 



<BODY onLoad='startBanner()' class='pag-contenido' oncontextmenu='return false'>





<!-- (Inicio) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la Empresa //-->

<br>
<div class="contenido_interior">
<div class="maxwidth">
<p align="right"><strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong></p>
<p><strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
<p><strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
<br>
<h2>&nbsp;Transferencias Interbancarias</h2>
</div>
</div>

<!-- (Fin) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la Empresa //-->



<!-- (Inicio) Contenido de la Tabla  camara de compensacion electronica //-->


<div class="contenido_interior">
<div class="maxwidth">
<center>
<div class="caja_tabla" style="width:620px!importants;">
<table cellpadding='3' cellspacing='1' border='0' width='510'>
<tr>
	<th colspan='2' width='510'id="nue">Transferencias Interbancarias - RESULTADO DE LA OPERACION</th>

</tr>

<tr class="tr_blanco">

	<td class="td_izq_color" width='40%'>N&uacute;mero de Operaci&oacute;n</td>

	<td class="td_der_blan"><%= datos.get("operacion1")%>&nbsp;&nbsp;-&nbsp;&nbsp;<%= datos.get("operacion2")%></td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%' align='left'>Operaci&oacute;n</td>

	<td class="td_der_blan">Transferencia Interbancaria</td>

</tr>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Usuario(s) que autoriza(n)</td>

	<td class="td_der_blan"><%= datos.get("usuario")%></td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%'>N&uacute;mero de Cuenta de Cargo</td>

	<td class="td_der_blan"><%= datos.get("ctacargo")%></td>

</tr>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Importe Transferido</td>

	<td class="td_der_blan"> <%= datos.get("importe")%>&nbsp;&nbsp;&nbsp;&nbsp;<%= datos.get("moneda")%></td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%'>Cuenta Interbancaria de Abono</td>

	<td class="td_der_blan"><%= datos.get("cuentabeneficiaria")%>&nbsp;&nbsp;-&nbsp;&nbsp;<%= datos.get("bancodestino")%></td>

</tr>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Nombre del Beneficiario</td>

	<td class="td_der_blan"><%= datos.get("beneficiario")%>&nbsp;</td>

</tr>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Tipo y Número de Documento del Beneficiario </td>
	<td class="td_der_blan"><%= datos.get("DocumentoDescBenef")%>&nbsp;-&nbsp;<%= datos.get("NumeroDocBenef")%>&nbsp;</td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%'>Comisi&oacute;n</td>

	<td class="td_der_blan"><%= datos.get("c_gral")%>&nbsp;&nbsp;&nbsp;&nbsp;<%= datos.get("moneda")%></td>

</tr>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Uso de Red</td>

	<td class="td_der_blan"><%= datos.get("c_red")%>&nbsp;&nbsp;&nbsp;&nbsp;<%= datos.get("moneda")%></td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%'>Importe a Cargar</td>

	<td class="td_der_blan"> <%= datos.get("transferido")%>&nbsp;&nbsp;&nbsp;&nbsp;

	<%

	String monedaPagina = datos.get("moneda").toString();

	if ( monedaPagina.equals("USD") ) monedaPagina = "DOLARES";

	if ( monedaPagina.equals("PEN") ) monedaPagina = "NUEVOS SOLES";

	out.print(monedaPagina); %>

</td>

</tr>

<% double tipc = new Double((String) datos.get("tipocambio")).doubleValue();

  if (tipc > 0)

 { %>



<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Tipo de Cambio</td>

	<td class="td_der_blan"><%= datos.get("tipocambio")%></td>

</tr>

<tr class="tr_gris">

	<td class='td_izq_color' width='40%'>TOTAL CARGADO</td>

	<td align='left'><%= datos.get("importecargado")%>&nbsp;&nbsp;&nbsp;&nbsp;

	<%

	String monedaCargoPagina = datos.get("monedacargo").toString();

	if ( monedaCargoPagina.equals("USD") ) monedaCargoPagina = "DOLARES";

	if ( monedaCargoPagina.equals("PEN") ) monedaCargoPagina = "NUEVOS SOLES";

	out.print(monedaCargoPagina); %>

	</td>

</tr>

<% } %>

<tr class="tr_blanco">

	<td class='td_izq_color' width='40%'>Fecha / Hora</td>

	<td align='left'><%= datos.get("fechaSal")%>&nbsp;&nbsp; - &nbsp;&nbsp;<%= datos.get("horaSal")%></td>

</tr>
</table> 
<TABLE class="oculta table_large">
<tr><td align="center">
<% //} %>
<% if (datos.get("itf").toString().toUpperCase().equals("S")) {%>
	Ud. informó como PROPIA la cuenta de abono para ser exonerada del ITF.<br>
<% } 
   if (datos.get("itf").toString().toUpperCase().equals("N")) { %>
	Ud. informó como NO PROPIA la cuenta de abono. NO será exonerada de ITF.
<% }%>
</td></tr>
<tr><td align="center"> Estimado cliente, su transacci&oacute;n ha sido efectuada. Por favor tome nota del</td></tr>
</TABLE>
<!-- (Fin) Contenido de la Tabla  transferencia CCE //-->

N&uacute;mero de Operaci&oacute;n </p>
<br><br>
<jsp:include page="cf001_ing_datos.jsp"  flush="true"/> 

<TABLE class="oculta table_large">
<tr>
<td align="left" colspan="4">Estimados Señores:</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td align="left" colspan="4">Declaro conocer y aceptar las condiciones generales siguientes:</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td align="center" valign="top" width="5%">1.</td>
<td align="justify" colspan="3" >El Banco no asume la responsabilidad por eventuales errores o demora en la tramitación e interpretación de la
 transferencia que se deriven de la información consignada por el  cliente.</td>

</tr>
<tr>
<td align="center" valign="top" width="5%">2.</td>
<td align="justify" colspan="3" >Queda establecido que si el pago no llegara a realizarse por causas ajenas al Banco, la comisión y gastos
 no serán reembolsados.</td>

</tr>

<tr>
<td align="center" valign="top" width="5%">3.</td>
<td align="justify" colspan="3"  >En el caso de transferencia con destino a cuentas de abono o pago a cuenta de Tarjeta  de Crédito, los 
Bancos se basan en el CCI o número de Tarjeta especificada por el ordenante de la transferencia.
Otros datos como el nombre del beneficiario, tipo o  código del documento de identidad son referenciales.  
El Banco no asume responsabilidad alguna si por error del ordenante al proporcionar el CCI o el número
de tarjeta de crédito, los fondos se acreditan a favor de otro beneficiario distinto.</td>

</tr>
<tr>
<td align="center" valign="top" width="5%">4.</td>
<td align="justify" colspan="3" >Los Bancos efectuarán las devoluciones o rechazo de las transferencias dentro del plazo estipulado  
de 24 horas (días hábiles) y por los motivos siguientes:</td>

</tr>
<TR>
<TD></TD>
<TD align="left">*&nbsp;&nbsp;Cuenta errada o suspendida</TD>
<TD align="left">*&nbsp;&nbsp;Sucursal u oficina errada</TD>
<TD align="left">*&nbsp;&nbsp;Sucursal u oficina no habilitada</TD>

</TR>

<TR>
<TD></TD>
<TD align="left">*&nbsp;&nbsp;Cuenta inexistente</TD>
<TD align="left">*&nbsp;&nbsp;Cuenta bloqueada</TD>
<TD align="left">*&nbsp;&nbsp;Transacción duplicada</TD>

</TR>

<TR>
<TD></TD>
<TD align="left">*&nbsp;&nbsp;Número de cuenta inválido</TD>
<TD align="left">*&nbsp;&nbsp;Moneda distinta a la de la cuenta a acreditar</TD>
<TD align="left">*&nbsp;&nbsp;Vuelta de cámara</TD>

</TR>


<tr>
<td align="center" valign="top" width="5%">5.</td>
<td align="justify" colspan="3" >Horario:</td>

</tr>


<tr>
<td>
</td>
<td style="text-align: justify;" colspan="3"> 
<b>Para Transferencias realizadas a las siguientes Entidades Financieras:</b> Interbank, Scotiabank, 
Banco de Comercio, BanBif, Crediscotia, Mi Banco, HSBC, Banco Falabella, Banco Santander, CMAC Piura, 
CMAC Trujillo, CMAC Sullana, CMAC Arequipa y Caja Metropolitana
</td>
</tr>
<tr>
<td>
</td>
<td style="text-align: justify;" colspan="3"> 
<table class = "tabla1" width="80%" cellpadding="0" cellspacing="0">
		<tr>
				<td rowspan="2" align="left" class="negra" >
				HORA DE ENVÍO
				</td>
				<td colspan="2" align="center" class="negra">
				HORA DE RECEPCIÓN EN EL BANCO DE DESTINO
				</td>								
		</tr>
		<tr>
				<td align="center" class="negra" >
				DÍAS ÚTILES
				</td>
				<td align="center" class="negra">
				SÁBADO, DOMINGO, FERIADO NACIONAL Y/O FERIADO PÚBLICO
				</td>				
		</tr>
		<tr>
				<td class="negra">
				Hasta las 11:30 a.m.
				</td>
				<td>
				A partir de las 2:00 p.m. del mismo día útil
				</td>
				<td rowspan="3">
				A partir de las 2:00 p.m. del siguiente día útil
				</td>
		</tr>
		<tr>
				<td class="negra">
				Entre las 11:30 a.m. y la 1:45 p.m.
				</td>
				<td>
				A partir de las 4:30 p.m. del mismo día útil
				</td>
		</tr>
		<tr>
				<td class="negra">
				Después de la 1:45 p.m.
				</td>
				<td>
				A partir de las 8:45 a.m. del siguiente día útil
				</td>
		</tr>
		
</table>
</td> 
</tr>

<tr>
<td>
</td>
<td style="text-align: justify;" colspan="3"> 
<b>Para Transferencias realizadas a las siguientes Entidades Financieras:</b> Banco de Crédito, 
Citibank, Banco de la Nación y Banco Financiero
</td>
</tr>

<tr>
<td>
</td>
<td style="text-align: justify;" colspan="3"> 
<table  class = "tabla1" width="80%" cellpadding="0" cellspacing="0">
		<tr >
				<td rowspan="2" align="left" class= "negra">
				HORA DE ENVÍO
				</td>
				<td colspan="2" align="center" class= "negra">
				HORA DE RECEPCIÓN EN EL BANCO DE DESTINO
				</td>								
		</tr>
		<tr>
				<td align="center" class="negra">
				DÍAS ÚTILES
				</td>
				<td align="center" class="negra">
				SÁBADO, DOMINGO, FERIADO NACIONAL Y/O FERIADO PÚBLICO
				</td>				
		</tr>
		<tr>
				<td class="negra">
				Hasta la 1:45 p.m.
				</td>
				<td>
				A partir de las 4:30 p.m. del mismo día útil
				</td>
				<td rowspan="2">
				A partir de las 4:30 p.m. del siguiente día útil
				</td>
		</tr>
		<tr>
				<td class="negra">
				Después de la 1:45 p.m.
				</td>
				<td>
				A partir de las 8:45 a.m. del siguiente día útil
				</td>
		</tr>
</table>
</td>
</tr>

<tr>
<td>
</td>
<td style="text-align: justify;" colspan="3"> 
<u><b>NOTA IMPORTANTE:</b></u> Las Transferencias mayores a S/. 310,000 o US$ 60,000, emitidas a cualquier 
Entidad Financiera, sólo podrán ser realizadas en días útiles de 8:00 a.m. a 1:45 p.m.
</td>
</tr>


<tr>
<td align="center" valign="top" width="5%">6.</td>
<td align="justify" colspan="3" >ITF:</td>

</tr>
<tr>
<td align="right" valign="top" width="5%">-</td>
<td align="justify" colspan="3" >La exoneración en el cobro de ITF para transferencias entre cuentas propias depende de las
condiciones de la cuenta de abono en el Banco destino, de acuerdo a lo estipulado por las leyes
vigentes. De no cumplir con estas condiciones, la transferencia será rechazada por el Banco 
destino, sin responsabilidad para el BBVA Banco Continental.</td>

</tr>
</TABLE>






<% 
String flagView = "";
if(request.getParameter("flagVolver")!=null ){
	flagView = request.getParameter("flagVolver");
}

if(!flagView.equals("")) { %>
 <table cellpadding="3" cellspacing="1" border="0" style="width=550px">
 <tr>
	<td colspan='2'><jsp:include page="pfInclusionPagoFrecuenteCCI.jsp"  flush="true"/></td>
 </tr>
</table>
<%} %>
</div>
</center>
</div>
</div>
</body>

</html>