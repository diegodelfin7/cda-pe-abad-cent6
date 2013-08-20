
<html>
<head>
<LINK rel=STYLESHEET type='text/css' href="../estilos/tablas.css">
<%@ include file ="includecbtf.jsp" %>
<%
java.util.Vector vListaTraspaso = (java.util.Vector) datos.get("ListaTraspaso");
if (vListaTraspaso==null) vListaTraspaso= new java.util.Vector(0);
java.util.Hashtable traspaso = new java.util.Hashtable();
java.util.Enumeration eListaTraspaso = vListaTraspaso.elements();

while (eListaTraspaso.hasMoreElements())
{
	traspaso = (com.ibm.dse.base.Hashtable) eListaTraspaso.nextElement();
}	

%>

<% String hora = (String)traspaso.get("hora");
if(hora.length()==4)
	hora = hora.substring(0,2) + ":" + hora.substring(2,4);
%>
<link rel='stylesheet' media='screen' href='../css/menu.css' type='text/css' />
<link rel="stylesheet" media="screen" href="../css/estilos.css" type="text/css" />
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Pragma" CONTENT="no-cache">	
<script language="Javascript" src="../js/banner.js"> </script>     	
<script language="Javascript" src="../js/utilidades.js"> </script>         
<script language="Javascript">
function enviar(valor)
{
	document.cuerpo.cadena.value="<%= traspaso.get("refcargo")%>|<%= traspaso.get("refabono")%>|<%=traspaso.get("impcargo")%>|<%=traspaso.get("divcargo")%>|<%= datos.get("usuario")%>|<%= traspaso.get("fechoper")%>|<%=hora%>";
	<%	if (datos.get("s_terceros").toString().equals("Propias")) { %>
	document.cuerpo.funcion.value="KW50";
	<% } %>
	<%	if (datos.get("s_terceros").toString().equals("PreInscritas")) { %>
	document.cuerpo.funcion.value="KW52";
	<% } %>
	<%	if (datos.get("s_terceros").toString().equals("Terceros")) { %>
	document.cuerpo.funcion.value="KW51";
	<% } %>
	document.cuerpo.action="OperacionCBTFServlet?proceso=cf_confirmacion_oper_pr&operacion=cf_ing_datos_op&accion=salvar";
	document.cuerpo.submit();
	document.cuerpo.b1.disabled = true;
}

function inscribir() {
	document.cuerpo.action= "OperacionCBTFServlet?proceso=pfPagoFrecuenteTP_pr&operacion=pfInscripcionTP_op&accion=continuar";
	document.cuerpo.submit();
	document.cuerpo.boton1.disabled = true;
}
</script>
<script language=JavaScript>
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
</script>
</HEAD> 
<BODY onLoad="startBanner()" class="pag-contenido" link="#660099">
<br>
<div class="contenido_interior">
<div class="maxwidth">
<p align="right"><strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong></p>
<p><strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
<p><strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
<br>

<h2><%
 java.lang.String wTer = (String) datos.get("s_terceros");
    	if (wTer.equals("Propias"))
            out.println("Transferencias");
    	if (wTer.equals("PreInscritas"))
            out.println("Transferencias - Cuentas Pre - Inscritas");
    	if (wTer.equals("Terceros"))
            out.println("Transferencias - Cuentas de Terceros"); %>
</h2>
</div>
</div>


<!--Contenido de la tabla-->
<div class="contenido_interior">
<div class="maxwidth">
<center>
<div class="caja_tabla" style="width:525px"> 
<table>
<tr> 
	<th colspan="2" id="nue">SU OPERACIÓN HA SIDO REALIZADA </th>
</tr>
<tr class="tr_blanco"> 
	<td class="td_izq_color">Número Operación </td>
  	<td class="td_der_blan">&nbsp;<%= traspaso.get("refcargo")%>-<%= traspaso.get("refabono")%></td>
</tr>
<!--Operación-->
<tr class="tr_gris">
  	<td class="td_izq_color">Operación </td>
  	<td class="td_der_blan">&nbsp;<%
    	if (wTer.equals("Propias"))
            out.println("A CUENTAS PROPIAS");
    	if (wTer.equals("PreInscritas"))
            out.println("A CUENTAS PRE INSCRITAS");
    	if (wTer.equals("Terceros"))
            out.println("A CUENTAS DE TERCEROS"); %>
	</td>
</tr>
<!-- Usuarios que autorizan -->
<tr class="tr_blanco"> 
  	<td class="td_izq_color">Usuarios que autorizan </td>
	<td class="td_der_blan">&nbsp;<%= datos.get("usuario_autorizan")%></td>
</tr>
<!--Número de Cuenta de Cargo-->
<tr class="tr_gris"> 
  	<td class="td_izq_color">Número de Cuenta de Cargo </td>
	<td class="td_der_blan">&nbsp;<%= datos.get("CtaOrd")%>&nbsp;&nbsp;&nbsp;<%= datos.get("monedactaord")%></td>
</tr>
<!--Importe abonado -->
<tr class="tr_blanco">  
  	<td class="td_izq_color">Importe Transferido  </td>
	<td class="td_der_blan">&nbsp;<%= datos.get("ImporteTras")%>&nbsp;&nbsp;<%= datos.get("MonedaTraspaso")%></td>
</tr>
<!--Número de Cuenta de Abono-->
<tr class="tr_gris"> 
  	<td class="td_izq_color">Número de Cuenta de Abono</td>
	<td class="td_der_blan">&nbsp;<%= datos.get("NumeroCtaBenef")%>&nbsp;&nbsp;&nbsp;<%= datos.get("moendactabenef")%></td>
</tr>
<!--Titular de la Cuenta de Abono-->
<tr class="tr_blanco">  
  	<td class="td_izq_color">Titular de la Cuenta de Abono</td>
	<td class="td_der_blan">&nbsp;<%= datos.get("NombreAbono")%></td>
</tr>
<!--Referencia en Lugar de Moneda de Abono-->
<tr class="tr_gris"> 
  	<td class="td_izq_color">Referencia</td>
  	<td class="td_der_blan"><font style="text-transform:uppercase">&nbsp;<%= datos.get("ObservTras")%></font></td>
</tr>
<tr class="tr_blanco">  
	<td class="td_izq_color">Comisión por Otra Plaza</td>
	<%String div = (String)traspaso.get("divisa2");
	if(div.equals("PEN"))
	{
		div= "NUEVOS SOLES";
	}else{
		if(div.equals("USD"))
		{
			div="DOLARES";
		}else{
			if(div.equals("EUR"))
			{
				div="EUROS";
			}else{
				div="";
			}	
		}
	}%>
	<td class="td_der_blan">&nbsp;<%= traspaso.get("importe2")%>&nbsp;&nbsp;&nbsp;<%= div%></td>
</tr>
<!--Tipo de Cambio-->
<%  java.lang.String wTip = traspaso.get("tipcambi").toString();
      if("".equals(wTip)){
      	wTip = "0";
      }
      float  c = new Float (String.valueOf(wTip)).floatValue();
      
      if (c > 0) {
      	out.println("<tr class=\"tr_gris\">"); 
        out.println("<td class=\"td_izq_color\">"); 
        out.println("Tipo de Cambio  ");
        out.println("</td>");
        out.println("<td class=\"td_der_blan\">");
        out.println("&nbsp;" + traspaso.get("tipcambi"));
        out.println("&nbsp;&nbsp;NUEVOS SOLES");
        out.println("</td>");
        out.println("</tr>");
      }
	%>

<!--Importe Cargado en Lugar de Fecha de Operación-->
<tr class="tr_blanco">  
	<td class="td_izq_color">IMPORTE CARGADO  </td>
	<td class="td_der_blan">&nbsp;<%= traspaso.get("importe4")%>&nbsp;&nbsp;<%= div%></td>
</tr>
<!--Importe abonado -->
<tr class="tr_gris">
	<td class="td_izq_color">IMPORTE ABONADO</td>
	<%String divabono = (String)traspaso.get("divcargo");
	if(divabono.equals("PEN"))
	{
		divabono= "NUEVOS SOLES";
	}else{
		if(divabono.equals("USD"))
		{
			divabono="DOLARES";
		}else{
			if(divabono.equals("EUR"))
			{
				divabono="EUROS";
			}else{
				divabono="";	
			}
		}
	}%>
	<td class="td_der_blan">&nbsp;<%= traspaso.get("impcargo")%>&nbsp;&nbsp;<%= divabono%></td>
</tr>
<% if(!(((String) datos.get("Codigo")).equals(""))) { %>
<tr class="tr_blanco">  
  <td class="td_izq_color">Avance Negociado</td>
  <td class="td_der_blan">&nbsp;<%= datos.get("Codigo")%>&nbsp;&nbsp;&nbsp;</td>
</tr>
<% } %>
<!--Fecha Opeeración -->
<tr class="tr_gris">
  <td class="td_izq_color">Fecha / Hora</td>
  <%String fecha=(String)traspaso.get("fechoper");
  fecha=fecha.substring(8,10)+"/"+fecha.substring(5,7)+"/"+fecha.substring(0,4);
  %>
  <td class="td_der_blan">&nbsp;<%= fecha%>&nbsp;&nbsp;&nbsp;<%=hora%></td>
</tr>
 
</table>
<table class="oculta table_large">
<tr>
<td class="izq" colspan="2">
	Estimado cliente, su operación ha sido efectuada, por favor tome nota del Número de Operación.
    </td>
</tr>
<tr>
<td></td>
</tr>
<tr>
	<td align="justify">
	Para efectos de c&aacute;lculo de intereses y sobregiros de las operaciones realizadas 
	despu&eacute;s de las 22:00 horas todos los d&iacute;as y a cualquier hora los d&iacute;as 
	s&aacute;bados, domingos y feriados, se tomar&aacute; como fecha de abono el d&iacute;a
	siguiente &uacute;til de realizada la operaci&oacute;n.
	</td>
	
</tr>
</table>
<% if(!(.equals(""))) { %>
<jsp:include page="pfInclusionPagoFrecuenteTP.jsp"  flush="true"/>
<%} %>

<jsp:include page="cf001_ing_datos.jsp"  flush="true"/>  

</div>  
</center>	
</div>
</div>
</body>
</html>
