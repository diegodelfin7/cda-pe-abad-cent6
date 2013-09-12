package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecPSAgua extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecPSAgua() {
	super();
}


public PrOperFrecPSAgua(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecPSAgua(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecPSAgua(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSAgua_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarPSAgua_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionPSAgua_op"))
	{
		ht.put("RealizaIncripcionPSAgua", "OperacionCBTFServlet?proceso=pfPagoFrecuentePSAgua_pr&operacion=pfRealizarPSAgua_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
