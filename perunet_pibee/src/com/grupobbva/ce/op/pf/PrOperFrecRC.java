package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecRC extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecRC() {
	super();
}


public PrOperFrecRC(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecRC(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecRC(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionRC_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarRC_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionRC_op"))
	{
		ht.put("RealizaIncripcionRC", "OperacionCBTFServlet?proceso=pfPagoFrecuenteRC_pr&operacion=pfRealizarRC_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
