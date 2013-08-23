<form name="cuerpo" method="post">
<input type="hidden" name="cadena">
<input type="hidden" name="funcion">
<center>

<table >
<tr>
	<td align="justify" width="75%">
		Desea inscribir esta operación como PAGO FRECUENTE?.
		PAGO FRECUENTE le permitirá recordar los datos de esta operación en futuras transacciones
		de este tipo que Ud. desee realizar.
	</td>
	<td align="center" >
	 <INPUT type="button" onclick="inscribir()" value="Inscribir" name="boton1" tabindex="1"><br>
		<font class="letra">
	</td>
</tr>
</table>
<!-- datos enviados para el formulario -->
<input type="hidden" name="Operacion" value="Pago de Instituciones"> 
<input type="hidden" name="usuariosAutorizan" value="<%= datos.get("usuariosAutorizan")%>">
<input type="hidden" name="numeroCtaCargo" value="<%= datos.get("numeroCtaCargo")%>">
<input type="hidden" name="nombreEntidad" value="<%= datos.get("nombreEntidad")%>">
<input type="hidden" name="numeroTarjeta" value="<%= datos.get("numeroTarjeta")%>">
</center>
</form>
