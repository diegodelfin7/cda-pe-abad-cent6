<form action="OperacionCBTFServlet?proceso=pf_PagoFrecuenteFMRF_pr&operacion=pfInscripcionFMRF_op&accion=inscribir" name="frmInscripcion" method="post">
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
<input type="hidden" name="operacion" > 
<input type="hidden" name="tipoFondo" >
<input type="hidden" name="modalidad" >
<input type="hidden" name="cantidad" >
<input type="hidden" name="usuarioAutoriza" >
</center>
</form>
