<form action="OperacionCBTFServlet?proceso=pfPagoFrecuenteTEX_pr&operacion=pfInscripcionTEX_op&accion=inscribir" name="frmInscripcion" method="post">
<center>

<table >
<tr>
	<td align="justify" width="75%">
		Desea inscribir esta operaci�n como PAGO FRECUENTE?.
		PAGO FRECUENTE le permitir� recordar los datos de esta operaci�n en futuras transacciones
		de este tipo que Ud. desee realizar.
	</td>
	<td align="center" >
	 <INPUT type="button" onclick="inscribir()" value="Inscribir" name="boton1" tabindex="1"><br>
		<font class="letra">
	</td>
</tr>
</table>
<!-- datos enviados para el formulario -->
<input type="hidden" name="operacion" > 
<input type="hidden" name="usuarioAutoriza" >
<input type="hidden" name="numeroCuentaCargo" >
<input type="hidden" name="montoCuentaCargo" >
<input type="hidden" name="numeroCuentaAbono" >
<input type="hidden" name="montoCuentaAbono" >
<input type="hidden" name="nombreBeneficiario" >
<input type="hidden" name="direccionBeneficiario" >
<input type="hidden" name="motivoTransferencia" >
<input type="hidden" name="nombreBancoPagador" >
<input type="hidden" name="direccionBancoPagador" >

</center>
</form>
