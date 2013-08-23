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
<input type="hidden" name="Operacion" value="Transferencias a cuentas de terceros"> 
<input type="hidden" name="UsuarioAutoriza" value="<%= datos.get("NombreAbono")%>">
<input type="hidden" name="NumCuentaCargo" value="<%= datos.get("CtaOrd")%>">
<input type="hidden" name="MonCuentaCargo" value="<%= datos.get("monedactaord")%>">
<input type="hidden" name="NumCuentaAbono" value="<%= datos.get("NumeroCtaBenef")%>">
<input type="hidden" name="MonCuentaAbono" value="<%= datos.get("monedactabenef")%>">
<input type="hidden" name="TitCuentaAbono" value="<%= datos.get("NombreAbono")%>">
</center>
</form>
