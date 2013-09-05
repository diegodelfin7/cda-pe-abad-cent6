<form action="OperacionCBTFServlet?proceso=pfPagoFrecuenteRC_pr&operacion=pfInscripcionRC_op&accion=inscribir" name="frmInscripcion" method="post">
<center>

<table class="oculta">
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
<input type="hidden" name="Operacion"> 
<input type="hidden" name="usuariosAutorizan">
<input type="hidden" name="numeroCuentaCargo" >
<input type="hidden" name="nombreEntidad" >
<input type="hidden" name="numeroTarjeta" >


</center>
</form>
