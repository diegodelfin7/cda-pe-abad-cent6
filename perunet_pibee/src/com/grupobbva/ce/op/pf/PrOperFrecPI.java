package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecPI.java extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecPI() {
	super();
}


public PrOperFrecPI(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecPI.java(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecPI.java(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPI_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarPI_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPI_op"))
	{
		ht.put("RealizaIncripcionPI", "OperacionCBTFServlet?proceso=pfPagoFrecuentePI_pr&operacion=pfRealizarPI_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
