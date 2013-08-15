
<html>
<head>
<title>CONTINET-BBVA BANCO CONTINENTAL</title>
<script language='Javascript'>
var isNN = (navigator.appName.indexOf('Netscape')!=-1);
var ver = parseInt(navigator.appVersion);
if(!(isNN && ver == 4))	{
document.write("<meta http-equiv='Expires' CONTENT='0'>");
document.write("<meta http-equiv='Pragma' CONTENT='no-cache'>");	
}
</script>
<link rel="stylesheet" media="screen" href="../css/estilos.css" type="text/css" />	
<LINK rel=STYLESHEET type='text/css' href="../estilos/tablas.css">
<%@ include file="includecbtf.jsp" %> 
<script language="Javascript" src="../js/banner.js"></script> 
<script language="Javascript" src="../js/tp003_conf_tras.js"></script> 
<script language="Javascript" src="../js/utilidades.js"></script>
<script language="Javascript">
function enviar(valor)
{
	document.cuerpo.cadena.value="<%= datos.get("NRO_OPERA_INI")%>|<%= datos.get("NRO_OPERA_FIN")%>|<%= datos.get("SUMA")%>|<%= datos.get("DIVISACTA")%>|<%= datos.get("usuario")%>|<%= datos.get("Fecha")%>|<%= datos.get("Hora")%>";
	document.cuerpo.funcion.value="KW77";
	
	document.cuerpo.action="OperacionCBTFServlet?proceso=cf_confirmacion_oper_pr&operacion=cf_ing_datos_op&accion=salvar";
	document.cuerpo.submit();
	document.cuerpo.b1.disabled = true;
}
</script>
</head> 
   
<BODY onLoad="startBanner()" class="pag-contenido" link="#660099" oncontextmenu='return true'>


<!-- (Inicio) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la Empresa //-->
<br>
<div class="contenido_interior">
<div class="maxwidth">
<p align="right"><strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong></p>
<p><strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
<p><strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
<br>
<h2>&nbsp;Pago de Instituciones</h2>
</div>
</div>

<!-- (Fin) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la Empresa //-->

<br>
	<!--Contenido de la tabla-->
	
<% 
	String ancho = "", rows = "";
	if(datos.get("val_parcial").toString().toUpperCase().equals("S")) 
	{ 
		ancho = "5";
		rows = "2";
	} 
	else 
	{ 
		ancho = "4";
		rows = "1";
 	} 
 %>	
<div class="contenido_interior">
<div class="maxwidth" >
<div class="caja_tabla">
<% if (((String)datos.get("Ind_Bd")).equals("S") || ((String)datos.get("Ind_Bd")).equals("P")) { %>
	<center>
	<table cellpadding="3" cellspacing="1" border="0" style="width=550px">
	<% if (!(datos.get("INDOK").toString().equals("S"))) { %>
	  <tr> 
		<th colspan='<%=datos.get("TotalCampos")%>' id="nue">OPERACION PENDIENTE DE AUTORIZACION</th> 
	  </tr>
	  <tr class="tr_gris"> 
		<td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Número de Solicitud</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("NROAUTOR")%>&nbsp;</td>
	  </tr>
	  <tr class="tr_blanco"> 
		<td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Operaci&oacute;n</td>
  		<td class="td_der_blan"colspan="<%=ancho%>">Pago de Instituciones</td>
	  </tr>
	  <tr class="tr_gris"> 
  		<td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Nombre de la Entidad</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("sDescripcion")%></td>
	  </tr>
	   <tr class="tr_blanco">
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Usuario que autoriza - 1ra Firma</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("usuario")%></td>
	   </tr>
	   <tr class="tr_gris">
  		<td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>N&uacute;mero de Cuenta de Cargo</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("NROCTA")%></td>
	  </tr>  
	  <tr class="tr_blanco">
		<td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Monto a cargar</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("SUMA1")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DIVISACTA1")%></td>
	   </tr>
	  <tr class="tr_gris"> 
    	  <td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Fecha / Hora de 1ra Firma</td>
	      <td class="td_der_blan" colspan="<%=ancho%>"><%= datos.get("Fecha")%>&nbsp;-&nbsp;<%= datos.get("Hora")%></td>
	</tr>

	  <%
	   } else {
	  %>
	  <tr>  
		<th colspan='<%=datos.get("TotalCampos")%>' id="nue">SU OPERACION HA SIDO REALIZADA</th>
	  </tr>
	  <tr class="tr_gris"> 
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Número de Operación</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("NRO_OPERA_INI")%>-<%=datos.get("NRO_OPERA_FIN")%></td>
	  </tr>
	  <tr class="tr_blanco">  
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Operaci&oacute;n</td>
  		<td class="td_der_blan"colspan="<%=ancho%>">Pago de Instituciones</td>
	  </tr>
	   <tr class="tr_gris"> 
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Usuario(s) que autoriza(n)</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("usuario")%>
    			 <% if (datos.get("rsptaOp").toString().equals("n")) { %>
          /&nbsp;<%=datos.get("AUX4")%>
          <% } %>
  		</td>
	  </tr>
	  <tr class="tr_blanco">
  		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>N&uacute;mero de Cuenta de Cargo</td>
  		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("NROCTA")%></td>
	  </tr>
	  <tr class="tr_gris"> 
  		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Nombre de la Entidad</td>
  		<td class="td_der_blan"  colspan="<%=ancho%>"><%=datos.get("sDescripcion")%></td>
	  </tr>
	  <tr class="tr_blanco"> 
 		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'><%=datos.get("campo_des")%></td>
 		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("CodMatri")%></td>
	   </tr>
	   <tr class="tr_gris">
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Nombre</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("NOMBRE")%>&nbsp;</td>
	   </tr>
	   <tr class="tr_blanco">
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Monto a cargar</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("SUMA1")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DIVISACTA1")%></td>
	   </tr>
	    <%
	        java.lang.String wTip3 = datos.get("TIPO_CAMBIO").toString();
			float  z = new Float (String.valueOf(wTip3)).floatValue();
       		if (z > 0) {
        %>
	   <tr class="tr_gris">
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Tipo de Cambio</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("TIPO_CAMBIO")%>&nbsp;&nbsp;&nbsp;NUEVOS SOLES</td>
	   </tr>
	   <% 
		   }
	   %>
	   <tr class="tr_blanco">
		<td class="td_izq_color" colspan='<%=datos.get("Relleno")%>'>Monto Cargado</td>
		<td class="td_der_blan" colspan="<%=ancho%>"><%=datos.get("SUMA")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DIVISACTA")%></td>
	   </tr>
	  	<tr class="tr_gris"> 
    	  <td class="td_izq_color"  colspan='<%=datos.get("Relleno")%>'>Fecha / Hora de 1ra Firma</td>
	      <td class="td_der_blan" colspan="<%=ancho%>"><%= datos.get("Fecha")%>&nbsp;-&nbsp;<%= datos.get("Hora")%></td>
		</tr>
       <tr>
        <th colspan='<%=datos.get("TotalCampos")%>' id="nue">Detalle del Pago</th>
       </tr>
	   </table>
	   
	   <table>
       <tr class="tr_blanco">
   	  <%
		java.util.Vector vCampos = (java.util.Vector) datos.get("ListaOCURRENCIAS_TEMP");
		java.util.Hashtable campos;
		java.util.Enumeration eCampos = vCampos.elements();
												
		while (eCampos.hasMoreElements()) {
			campos = (com.ibm.dse.base.Hashtable) eCampos.nextElement();
	  %>
	  
	  <% if(datos.get("val_parcial").toString().toUpperCase().equals("S")) { %>
		<td class="td_izq_col" rowspan='2' style='width:35%'><%=(String) campos.get("DESCRIPCION")%></td>
	  <% } else { %>
		<td class="td_izq_col" style='width:35%'><%=(String) campos.get("DESCRIPCION")%></td>
	  <%
	  	}
	  
		}
	  %>
        <td class="td_izq_col" style='width:15%' rowspan="<%=rows%>">Fec.Vcmto</td>
        <td class="td_izq_col" style='width:25%' colspan="2" rowspan="<%=rows%>">Moneda</td>
        <% if(datos.get("val_parcial").toString().toUpperCase().equals("S")) { %>
       	<td class="td_izq_col" style='width:25%' colspan="2">MONTO DEL DOCUMENTO</td>
       	<% } else { %>
       	<td class="td_izq_col" style='width:25%' rowspan="<%=rows%>">Importe</td>
       <% } %>
       
       <% if(datos.get("val_parcial").toString().toUpperCase().equals("S")) { %>
         		<tr class="tr_blanco">
         			<td class="td_izq_col" >Mínimo</td>
       				<td class="td_izq_col" >Máximo</td>
       			</tr>
       			<% } %>
       
       </tr>
       
	<% 
	java.util.Vector vPagPendientes = (java.util.Vector) datos.get("ListaPagosSeleccionados");
	java.util.Hashtable REGISTRO_PAGO;
	java.util.Enumeration ePagPendientes = vPagPendientes.elements();
	int i = 0;
	String fila = "";
	while (ePagPendientes.hasMoreElements()) {
		REGISTRO_PAGO = (com.ibm.dse.base.Hashtable) ePagPendientes.nextElement();
		if (++i%2 == 0) {
		    fila = "tr_blanco";
		} else {
		    fila = "tr_gris";
		}
	%>
		<tr class="<%=fila%>">
	<%
		java.lang.String wTip = datos.get("Relleno").toString();
	 	int m = new Integer(String.valueOf(wTip)).intValue();
	 	int n = 0;
		int p = 0;	 	
		
	 	for(int j=0;j<m;j++) {
			java.util.Vector vCampos2 = (java.util.Vector) datos.get("ListaOCURRENCIAS_TEMP");
			java.util.Hashtable c = (com.ibm.dse.base.Hashtable) vCampos2.get(j);
			java.lang.String wTip2 = c.get("LOGI_CAMPO").toString();
			int x = new Integer(String.valueOf(wTip2)).intValue();
					
			if(n!=0)	
	          	p = n + x;
    	    else
        	    p = x;
        	    int numero= REGISTRO_PAGO.get("sDESCRIPCION_DOCU_SEL").toString().length();
			if(m==j+1) {
			if (n<numero){
		%>
			<td class="td_der_blan cen"><%=REGISTRO_PAGO.get("sDESCRIPCION_DOCU_SEL").toString().substring(n)%></td>
		<%}
			} else {
			if (p<numero){
		%>
 		    <td class="td_der_blan cen"><%=REGISTRO_PAGO.get("sDESCRIPCION_DOCU_SEL").toString().substring(n,p)%></td>
		<%   }
 		    }	
			n = p;
	 	}
		%>
		<td class="td_der_blan cen"><%=(String) REGISTRO_PAGO.get("sFEC_VCMTO_SEL")%></td>
		<td colspan=2 class="td_der_blan cen"><%=(String) datos.get("DIVISA")%></td>

		<%
		if(datos.get("val_parcial").toString().toUpperCase().equals("S")) 
		{
		out.println("<td class=\"td_der_blan cen\">");
		out.print((String) REGISTRO_PAGO.get("IMPORTE_MINIMO_SEL"));
		out.println("</td>");
		
		out.println("<td class=\"td_der_blan cen\">");
		out.print((String) REGISTRO_PAGO.get("IMPORTE"));
		out.println("</td>");
		}
		else
		{
		out.println("<td class=\"td_der_blan cen\">");
		out.print((String) REGISTRO_PAGO.get("IMPORTE"));
		out.println("</td>");
		}
		%>
		
      </tr>
	<%
	}
	%>
	  <%
	    }
	  %>

		</table>
	</center>
		<table class="oculta">
			<% if (datos.get("INDOK").toString().equals("S")) { %>
		<tr>
			<td colspan='<%=datos.get("TotalCampos")%>' >
			Estimado Cliente, su operación ha sido efectuda. Por favor, tome nota del Número de Operación.
			</td>
		</tr>
		<jsp:include page="cf001_ing_datos.jsp"  flush="true"/> 
	<% 
	}  else { %>	  
		<tr>
			<td colspan='<%=datos.get("TotalCampos")%>' align="justyfy">
						<b>Estimado Cliente:</b><br>
                Esta operación ha quedado pendiente de autorización. Tome nota del "Número de Solicitud" e ingrese a Continental net cash, por la  opción "Firmas - Operaciones Pendientes de Firma", para completar el envío de esta operación.
						Esta solicitud tiene validez hasta el <b><%= datos.get("FechaVenc").toString() %></b>, despues será anulada.
			</td>
		</tr>
	<% }%>
		</table>
   
<% } else { 

 if (!(datos.get("INDOK").toString().equals("S"))) { %>
<center>
<table style="width=550px" align="center">
 <tr> 
	<th colspan='2' id="nue">OPERACION PENDIENTE DE AUTORIZACION</th> 
 </tr>
 <tr class="tr_gris"> 
	<td class="td_izq_color">Número de Solicitud</td>
	<td class="td_der_blan"><%=datos.get("NROAUTOR")%>&nbsp;</td>
 </tr>
 <tr class="tr_blanco"> 
	<td class="td_izq_color">Operaci&oacute;n</td>
   <td  class="td_der_blan">Pago de Instituciones</td>
 </tr>
 <tr class="tr_gris"> 
 	<td class="td_izq_color">Nombre de la Entidad</td>
	<td class="td_der_blan"><%=datos.get("sDescripcion")%></td>
 </tr>
 <tr class="tr_blanco">
	<td class="td_izq_color">Usuario que autoriza - 1ra Firma</td>
	<td class="td_der_blan"><%=datos.get("usuario")%></td>
 </tr>
 <tr class="tr_gris">
 	<td class="td_izq_color">N&uacute;mero de Cuenta de Cargo</td>
   <td  class="td_der_blan"><%=datos.get("NROCTA")%></td>
 </tr>  
 <%
	java.util.StringTokenizer cadena2 = new java.util.StringTokenizer((String)datos.get("arreglo"));
	int stop = 0, i = 0, x = 0;
	String fila = "", temporal = "";
	stop = Integer.parseInt(datos.get("longitud_arreglo").toString());
		
	while(x < stop)
	{
		temporal = cadena2.nextToken("$");
    	x++;
	}
	
	double d = Double.valueOf(temporal).doubleValue();
	
	java.text.DecimalFormat df = new java.text.DecimalFormat();
	java.text.DecimalFormatSymbols dfs =  new java.text.DecimalFormatSymbols();
	dfs.setGroupingSeparator(',');
	dfs.setDecimalSeparator('.');
	df.setDecimalFormatSymbols(dfs);
	String mask = "###,##0.00";
	df.applyPattern(mask);
 
 	String divisa_cta = "";
 	if (((String)datos.get("DIVISACTA1")).equals("PEN")) 
 	{ 	
 		divisa_cta = "NUEVOS SOLES";
 	}
 	else
 	{
 		divisa_cta = "DOLARES";
 	}
 
 %>
	<tr class="tr_blanco"> 
		<td class="td_izq_color">Monto a cargar</td>
   		<td class="td_der_blan"><%= df.format(d)%>&nbsp;&nbsp;&nbsp;<%=divisa_cta%></td>
	</tr>		
 
 <tr class="tr_gris"> 
 	<td class="td_izq_color">Fecha / Hora de 1ra Firma</td>
   	<td class="td_der_blan"><%= datos.get("Fecha")%>&nbsp;-&nbsp;<%= datos.get("Hora")%></td>
 </tr>
 </table>
 <center>
 <table class="oculta">
  <tr>
	<td colspan='2' align="justyfy" ><br>
	<b>Estimado Cliente:</b><br>
   Esta operación ha quedado pendiente de autorización. Tome nota del "Número de Solicitud" e ingrese a Continet Empresas, por la  opción "Autorización de 
   Solicitudes", para completar el envío de esta operación.
	Esta solicitud tiene validez hasta el <b><%= datos.get("FechaVenc").toString() %></b>, despues será anulada.
	
 </tr>
 </table>

 <br>
 <% } else {%>
 
 <center>
 <table cellpadding="3" cellspacing="1" border="0" style="width=550px">
 <tr> 
	<th colspan='2' id="nue">SU OPERACION HA SIDO REALIZADA</td>
 </tr>
 <tr class="tr_gris"> 
	<td class="td_izq_color">Número de Operación</td>
   	<td  class="td_der_blan"><%=datos.get("NRO_OPERA_INI")%>-<%=datos.get("NRO_OPERA_FIN")%></td>
 </tr>
 <tr class="tr_blanco"> 
	<td class="td_izq_color">Operaci&oacute;n</td>
   	<td class="td_der_blan">Pago de Instituciones</td>
 </tr>
 <tr class="tr_gris"> 
	<td class="td_izq_color">Usuario(s) que autoriza(n)</td>
 	<td class="td_der_blan"><%=datos.get("usuario")%><% if (datos.get("rsptaOp").toString().equals("n")) { %>/&nbsp;<%=datos.get("AUX4")%><% } %></td>
 </tr>
 <tr class="tr_blanco">
	<td class="td_izq_color">N&uacute;mero de Cuenta de Cargo</td>
	<td class="td_der_blan"><%=datos.get("NROCTA")%></td>
 </tr>
 <tr class="tr_gris"> 
 	<td class="td_izq_color">Nombre de la Entidad</td>
  	<td class="td_der_blan"><%=datos.get("sDescripcion")%></td>
 </tr>
 <%
	java.util.StringTokenizer cadena12 = new java.util.StringTokenizer((String)datos.get("arreglo"));
	java.util.StringTokenizer cadena13 = new java.util.StringTokenizer((String)datos.get("arreglotitulos"));
	int stop1 = 0, i = 0, x1 = 0;
	String fila = "";
	stop1 = Integer.parseInt(datos.get("longitud_arreglo").toString());
		
	while(x1 < stop1-1)
	{
		if(i++%2==0)
			fila = "tr_blanco";
		else
			fila = "tr_gris";
%>
<tr class="<%=fila%>"> 
	<td class="td_izq_color"><%=cadena13.nextToken("$")%></td>
   <td class="td_der_blan"><%=cadena12.nextToken("$")%></td>
</tr>		
		
<%
	x1++;
	}
%>
 
<%
	java.lang.String wTip3 = datos.get("TIPO_CAMBIO").toString();
   float  z = new Float (String.valueOf(wTip3)).floatValue();
   if (z > 0) {
%>
 <tr class="tr_gris">
	<td class="td_izq_color">Tipo de Cambio</td>
	<td class="td_der_blan"><%=datos.get("TIPO_CAMBIO")%>&nbsp;&nbsp;&nbsp;NUEVOS SOLES</td>
 </tr>
<% } %>
<%
	java.util.StringTokenizer cadena2 = new java.util.StringTokenizer((String)datos.get("arreglo"));
	int stop = 0, x = 0;
	String temporal = "";
	stop = Integer.parseInt(datos.get("longitud_arreglo").toString());
		
	while(x < stop)
	{
		temporal = cadena2.nextToken("$");
    	x++;
	}
	
	double d = Double.valueOf(temporal).doubleValue();
	
	java.text.DecimalFormat df = new java.text.DecimalFormat();
	java.text.DecimalFormatSymbols dfs =  new java.text.DecimalFormatSymbols();
	dfs.setGroupingSeparator(',');
	dfs.setDecimalSeparator('.');
	df.setDecimalFormatSymbols(dfs);
	String mask = "###,##0.00";
	df.applyPattern(mask);
 
 	String divisa_cta = "";
 	if (((String)datos.get("DIVISACTA1")).equals("PEN")) 
 	{ 	
 		divisa_cta = "NUEVOS SOLES";
 	}
 	else
 	{
 		divisa_cta = "DOLARES";
 	}
 
 %>
 <tr class="tr_blanco"> 
 	<td class="td_izq_color">Monto a Pagar</td>
	<td class="td_der_blan"><%= df.format(d)%>&nbsp;&nbsp;&nbsp;<%=divisa_cta%></td>
 </tr>
 <tr class="tr_gris"> 
	<td class="td_izq_color">Monto a Cargar</td>
   	<td class="td_der_blan"><%=datos.get("SUMA")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DIVISACTA")%></td>
 </tr>
 </tr>
 <tr class="tr_blanco"> 
 	<td class="td_izq_color">Fecha / Hora de 1ra Firma</td>
	<td class="td_der_blan"><%= datos.get("Fecha")%>&nbsp;-&nbsp;<%= datos.get("Hora")%></td>
 </tr>
</table>
</center>
<table class="oculta">
 <tr>
	<td colspan='2'>Estimado Cliente, su operación ha sido efectuda. Por favor, tome nota del Número de Operación.</td>
 </tr>
 <jsp:include page="cf001_ing_datos.jsp"  flush="true"/> 
</table>
</div>
</div>
</div>

<%      } %>

<% } %>

   </body>
</html>
