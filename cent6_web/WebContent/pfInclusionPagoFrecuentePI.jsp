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
<input type="hidden" name="operacion" value="A CUENTAS PREINSCRITAS">
<input type="hidden" name="usuariosAutorizan" value="<%= datos.get("usuariosAutorizan")%>">
<input type="hidden" name="numeroCuentaCargo" value="<%= datos.get("numeroCuentaCargo")%>">
<input type="hidden" name="monedaCuentaCargo" value="<%= datos.get("monedaCuentaCargo")%>">
<input type="hidden" name="numeroCuentaAbono" value="<%= datos.get("numeroCuentaAbono")%>">
<input type="hidden" name="monedaCuentaAbono" value="<%= datos.get("monedaCuentaAbono")%>">
<input type="hidden" name="titularCuentaAbono" value="<%= datos.get("titularCuentaAbono")%>">
</center>
</form>
