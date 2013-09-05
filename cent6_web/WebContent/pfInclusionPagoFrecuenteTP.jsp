<form action="OperacionCBTFServlet?proceso=pfPagoFrecuenteTP_pr&operacion=pfInscripcionTP_op&accion=inscribir" name="frmInscripcion" method="post">
<center>
<table class="oculta">
<tr>
	<td align="justify" width="75%">
		Desea inscribir esta operación como PAGO FRECUENTE?.
		PAGO FRECUENTE le permitirá recordar los datos de esta operación en futuras transacciones
		de este tipo que Ud. desee realizar.
	</td>
	<td align="center" >
	 <!-- <INPUT type="button" onclick="inscribir()" value="  Inscribir  " name="boton1" size="15" class="aceptar"><br> -->
	 <INPUT type="button" onclick="inscribir()" value="Inscribir" name="boton1" size="15" class="aceptar"><br>
		<font class="letra">
	</td>
</tr>
</table>
<input type="hidden" name="operacion"> 
<input type="hidden" name="usuarioAutoriza">
<input type="hidden" name="numCuentaCargo"> 
<input type="hidden" name="monCuentaCargo">
<input type="hidden" name="numCuentaAbono">
<input type="hidden" name="monCuentaAbono">
<input type="hidden" name="titCuentaAbono">	
</center>
</form>


