package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecFMRF extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecFMRF() {
	super();
}


public PrOperFrecFMRF(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecFMRF(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecFMRF(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionFMRF_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarFMRF_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionFMRF_op"))
	{
		ht.put("RealizaIncripcionFMRF", "OperacionCBTFServlet?proceso=pfPagoFrecuenteFMRF_pr&operacion=pfRealizarFMRF_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
