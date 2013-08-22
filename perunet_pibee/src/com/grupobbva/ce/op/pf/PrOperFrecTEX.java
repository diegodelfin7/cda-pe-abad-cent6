package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecTEX extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecTEX() {
	super();
}


public PrOperFrecTEX(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecTEX(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecTEX(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionTEX_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarTEX_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionTEX_op"))
	{
		ht.put("RealizaIncripcionTEX", "OperacionCBTFServlet?proceso=pfPagoFrecuenteTEX_pr&operacion=pfRealizarTEX_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
