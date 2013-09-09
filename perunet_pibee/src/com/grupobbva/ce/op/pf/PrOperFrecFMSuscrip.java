package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecFMSuscrip extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecFMSuscrip() {
	super();
}


public PrOperFrecFMSuscrip(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecFMSuscrip(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecFMSuscrip(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionFMSuscrip_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarFMSuscrip_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionFMSuscrip_op"))
	{
		ht.put("RealizaIncripcionFMSuscrip", "OperacionCBTFServlet?proceso=pfPagoFrecuenteFMSuscrip_pr&operacion=pfRealizarFMSuscrip_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
