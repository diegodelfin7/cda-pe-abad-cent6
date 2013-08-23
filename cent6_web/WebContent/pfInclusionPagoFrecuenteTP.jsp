<form name="cuerpo" method="post">
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
<input type="hidden" name="operacion" value="Transferencias a cuentas de terceros"> 
<input type="hidden" name="usuarioAutoriza" value="<%= datos.get("usuAutoriza")%>">
<input type="hidden" name="numCuentaCargo" value="<%= datos.get("cuentaCargo")%>">
<input type="hidden" name="monCuentaCargo" value="<%= datos.get("monedaCuentaCar")%>">
<input type="hidden" name="numCuentaAbono" value="<%= datos.get("cuentaAbono")%>">
<input type="hidden" name="monCuentaAbono" value="<%= datos.get("monedaCuentaAbono")%>">
<input type="hidden" name="titCuentaAbono" value="<%= datos.get("titCuentaAbono")%>">


</center>
</form>
