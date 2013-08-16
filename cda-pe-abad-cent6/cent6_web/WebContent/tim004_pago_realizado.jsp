
<html>
<head>
<title>CONTINET-BBVA BANCO CONTINENTAL</title>
<script language='Javascript'>
	var isNN = (navigator.appName.indexOf('Netscape')!=-1);
	var ver = parseInt(navigator.appVersion);
	if(!(isNN && ver == 4))
	{
		document.write("<meta http-equiv='Expires' CONTENT='0'>");
	 	document.write("<meta http-equiv='Pragma' CONTENT='no-cache'>");	
	}
</script>
<LINK rel=STYLESHEET type='text/css' href='../estilos/tablas.css'>
<link rel="stylesheet" media="screen" href="../css/estilos.css" type="text/css" />
<script language='Javascript' src='js/banner.js'> </script> 
<script language='Javascript' src='js/utilidades.js'></script>

</head>    
<BODY onLoad='startBanner()' class='pag-contenido' link='#660099' oncontextmenu='return false'>
<%@ include file="includecbtf_sc.jsp" %> 
<!-- (Inicio) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la empresa //-->
<div class="contenido_interior">
<div class="maxwidth">
<p align="right"><strong><%= datos.get("fecha_host")%>&nbsp;&nbsp;<%= datos.get("hora_host")%></strong></p>
<p><strong>&nbsp;&nbsp;EMPRESA:</strong>&nbsp;&nbsp;<%=datos.get("empresa")%></p>
<p><strong>&nbsp;&nbsp;USUARIO:</strong>&nbsp;&nbsp;<%=datos.get("usuario")%></p>
<br>
<h2>&nbsp;Pago de Servicios</h2>
</div>
</div>
<div class="contenido_interior">
<div class="maxwidth">
<center>
<br><br>


<!-- (Fin) Este es la tabla CABECERA , Nombre de la Funcion y nombre del titular y la empresa //-->

<br><br>


<!--(inicio) Contenido de la tabla Principal //-->

<center>
<div class="caja_tabla" style="width:500px!importants;">

<table cellpadding='3' cellspacing='1' border='0' >
<tr><th colspan="2" width="500" id="nue">SU OPERACION HA SIDO REALIZADA</th></tr>
	
<tr class="tr_gris">
        <td class="td_izq_color">N&uacute;mero de Operaci&oacute;n :</td>
        <td  class="td_der_blan"><%=datos.get("NumeroOperacion")%></td>
    </tr>
<tr class="tr_blanco">
        <td class="td_izq_color" >Empresa : </td>
        <td class="td_der_blan" ><%=datos.get("NombreEmpresa")%> </td>
    </tr>

<tr class="tr_gris">
        <td class='td_izq_color'>Tipo de Servicio :  </td>
        <td class="td_der_blan" ><%=datos.get("tipoEmp")%></td>
    </tr>
<tr class="tr_blanco">
        <td class="td_izq_color" >
        <% String ww = (String) datos.get("tipoEmp");
	     if (ww.equals("Telefonía Celular")) { %>
  	        Número de Celular :
  	      <%} else {%>
  	       Código Asociado :
  	      <%}%></td>
        <td class="td_der_blan" ><%=datos.get("Celular")%></td>
    </tr>

<tr class="tr_gris">
        <td class="td_izq_color" >Número de Recibo :</td>
        <td class="td_der_blan" ><%=datos.get("sNroRecibo2")%></td>
    </tr>

<tr class="tr_blanco">
        <td class="td_izq_color" >Titular del Servicio</td>
        <td class="td_der_blan" ><%=datos.get("TitularCelular")%></td>
    </tr>
    


<tr class="tr_gris">
        <td class="td_izq_color" >Importe Cargado:</td>
        <td class="td_der_blan" ><%=datos.get("ssImporte")%>&nbsp;&nbsp;&nbsp;<%=datos.get("ssDescripcionDivisa")%></td>
    </tr>

<% 	if(((String) datos.get("DivisaCargo")).equals("DOLARES")){ %>

<tr class="tr_blanco">
        <td class="td_izq_color" >Importe Cargado Convertido: </td>
        <td class="td_der_blan" ><%=datos.get("ImporteCovertido")%>&nbsp;&nbsp;&nbsp;<%=datos.get("DivisaCargo")%></td>
    </tr>
    
<tr class="tr_gris">
        <td class="td_izq_color" >Tipo de Cambio: </td>
        <td class="td_der_blan" ><%=datos.get("TipoCambio")%></td>
    </tr>


<% } %>
<tr class="tr_blanco">
        <td class="td_izq_color" >Número de Cuenta de Cargo </td>
        <td class="td_der_blan" ><%=datos.get("NROCTA")%></td>
    </tr>


</table>


<!--(Fin) Contenido de la tabla Principal //-->
<TABLE class="oculta table_large">
	<tr>
		<td align="center">Estimado cliente, su operación ha sido efectuada,por favor tome nota del Número de Operación.</td>
	</tr>
</TABLE>

</div>
</center>
</div>
</div>


</body>
</html>
