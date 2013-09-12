package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecPSTelefonia extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecPSTelefonia() {
	super();
}


public PrOperFrecPSTelefonia(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecPSTelefonia(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecPSTelefonia(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSTelefonia_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarPSTelefonia_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSTelefonia_op"))
	{
		ht.put("RealizaIncripcionPSTelefonia", "OperacionCBTFServlet?proceso=pfPagoFrecuentePSTelefonia_pr&operacion=pfRealizarPSTelefonia_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
