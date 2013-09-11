package com.grupobbva.ce.op.pf;

import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.*;
import com.ibm.dse.base.*;


public class PrListaPagosFrecuentes extends com.bbva.continental.pe.web.pibee.PrPrecargaProceso {

	
public PrListaPagosFrecuentes() {
	super();
}


public PrListaPagosFrecuentes(String anOperationName) throws java.io.IOException {
	super(anOperationName);
}


public PrListaPagosFrecuentes(String anOperationName, Context aParentContext) throws java.io.IOException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public PrListaPagosFrecuentes(String anOperationName, String aParentContext) throws java.io.IOException, DSEObjectNotFoundException, DSEInvalidRequestException {
	super(anOperationName, aParentContext);
}


public void actualizarEstado() 
{
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pf_lista_pagos_frec_op"))
	{
		this.setEstado("1");
	}
	
}


public void actualizarUrlData() 
{
	Hashtable ht = new Hashtable();
	String nombreOP;

	nombreOP = this.getNombreOperacionInvocada();
	if (nombreOP.equals("pf_lista_pagos_frec_op"))
	{
		ht.put("ListarPagosFrecuentes", "OperacionCBTFServlet?proceso=pf_pagos_frecuentes_pr&operacion=pf_lista_pagos_frec_op&accion=continuar");
	}
	this.setUrlData(ht);
}
}
