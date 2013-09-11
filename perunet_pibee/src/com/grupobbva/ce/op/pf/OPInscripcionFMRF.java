package com.grupobbva.ce.op.pf;

import com.grupobbva.bc.per.autenticacion.pau.IdentificacionOperativaPAU;
import com.grupobbva.bc.per.constantes.ConstantesBI;
import com.grupobbva.bc.per.operacion.ControlErrores;
import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.OperacionMulticanal;
import com.grupobbva.ii.sf.operacion.OperacionPresentacion;
import com.ibm.dse.base.Context;
import com.ibm.dse.base.DSEInvalidRequestException;
import com.ibm.dse.base.DSEObjectNotFoundException;
import com.ibm.dse.base.DataElement;
import com.ibm.dse.base.Externalizer;
import com.ibm.dse.base.IndexedCollection;
import com.ibm.dse.base.KeyedCollection;
import com.ibm.dse.base.Trace;
import java.io.IOException;
import java.util.Enumeration;

public class OPInscripcionFMRF extends OperacionPresentacion
{
  public OPInscripcionFMRF()
  {
  }

  public OPInscripcionFMRF(String anOperationName)
    throws IOException
  {
    super(anOperationName);
  }

  public OPInscripcionFMRF(String anOperationName, Context aParentContext)
    throws IOException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  public OPInscripcionFMRF(String anOperationName, String aParentContext)
    throws IOException, DSEObjectNotFoundException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  

  public void inscribir() throws BbvaException
  {
    try {

      setValueAt("prOperacion", getValueAt("operacion").toString());
      setValueAt("prNumeroFondosMutuos", getValueAt("numeroFondosMutuos").toString());
      setValueAt("prTipoFondo", getValueAt("tipoFondo").toString());
      setValueAt("prModalidad", getValueAt("modalidad").toString());
      setValueAt("prCantidad", getValueAt("cantidad").toString());
      setValueAt("prUsuarioAutoriza", getValueAt("usuarioAutoriza").toString());
      
      
      
      setValueAt("s_clickeo", "N");
      setEstado("1");
    }
    catch (Exception e)
    {
      Trace.trace(64, "", "Error en inscribir() de " + getName() + " " + e.getMessage());
      ControlErrores localControlErrores = new ControlErrores(this, e);
    }
  }

}
