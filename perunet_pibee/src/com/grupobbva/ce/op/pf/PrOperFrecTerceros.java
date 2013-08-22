package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrOperFrecTerceros extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrOperFrecTerceros() {
	super();
}


public PrOperFrecTerceros(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrOperFrecTerceros(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrOperFrecTerceros(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionTP_op"))
	{
		this.setEstado("1");
	}
	if (nombreOP.equals("pfRealizarTP_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pfInscripcionTP_op"))
	{
		ht.put("RealizaIncripcionTP", "OperacionCBTFServlet?proceso=pfPagoFrecuenteTP_pr&operacion=pfRealizarTP_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
