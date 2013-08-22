package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecCCI extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecCCI() {
	super();
}


public PrOperFrecCCI(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecCCI(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecCCI(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionCCI_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarCCI_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionCCI_op"))
	{
		ht.put("RealizaIncripcionCCI", "OperacionCBTFServlet?proceso=pfPagoFrecuenteCCI_pr&operacion=pfRealizarCCI_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
