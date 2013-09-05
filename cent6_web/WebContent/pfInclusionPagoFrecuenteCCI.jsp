<form action="OperacionCBTFServlet?proceso=pfPagoFrecuenteCCI_pr&operacion=pfInscripcionCCI_op&accion=inscribir" name="frmInscripcion" method="post">
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
<input type="hidden" name="operacion"/>
<input type="hidden" name="usuarioAutoriza" />
<input type="hidden" name="numeroCuentaCargo" />
<input type="hidden" name="montoCuentaCargo" />
<input type="hidden" name="numeroCuentaAbono" />
<input type="hidden" name="montoCuentaAbono" />
<input type="hidden" name="nombreBeneficiario" />
<input type="hidden" name="tipoDocumento" />
<input type="hidden" name="numeroDocumento" />
</center>
</form>
