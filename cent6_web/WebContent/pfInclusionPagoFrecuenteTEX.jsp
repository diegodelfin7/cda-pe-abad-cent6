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
<input type="hidden" name="operacion" value="Transferencias al exterior"> 
<input type="hidden" name="usuarioAutoriza" value="<%= datos.get("usuarioAutoriza")%>">
<input type="hidden" name="numeroCuentaCargo" value="<%= datos.get("numeroCuentaCargo")%>">
<input type="hidden" name="montoCuentaCargo" value="<%= datos.get("montoCuentaCargo")%>">
<input type="hidden" name="numeroCuentaAbono" value="<%= datos.get("numeroCuentaAbono")%>">
<input type="hidden" name="montoCuentaAbono" value="<%= datos.get("montoCuentaAbono")%>">
<input type="hidden" name="nombreBeneficiario" value="<%= datos.get("nombreBeneficiario")%>">
<input type="hidden" name="direccionBeneficiario" value="<%= datos.get("direccionBeneficiario")%>">
<input type="hidden" name="motivoTransferencia" value="<%= datos.get("motivoTransferencia")%>">
<input type="hidden" name="nombreBancoPagador" value="<%= datos.get("nombreBancoPagador")%>">
<input type="hidden" name="direccionBancoPagador" value="<%= datos.get("direccionBancoPagador")%>">

</center>
</form>
