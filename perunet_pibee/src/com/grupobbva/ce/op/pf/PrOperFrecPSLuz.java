package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecPSLuz extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecPSLuz() {
	super();
}


public PrOperFrecPSLuz(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecPSLuz(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecPSLuz(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSLuz_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarPSLuz_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSLuz_op"))
	{
		ht.put("RealizaIncripcionPSLuz", "OperacionCBTFServlet?proceso=pfPagoFrecuentePSLuz_pr&operacion=pfRealizarPSLuz_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
