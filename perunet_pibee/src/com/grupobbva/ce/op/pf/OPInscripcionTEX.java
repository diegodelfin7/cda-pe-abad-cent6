package com.grupobbva.ce.op.pf;

import com.grupobbva.bc.per.operacion.ControlErrores;
import com.grupobbva.ii.sf.base.BbvaException;
import com.grupobbva.ii.sf.operacion.OperacionPresentacion;
import com.ibm.dse.base.Context;
import com.ibm.dse.base.DSEInvalidRequestException;
import com.ibm.dse.base.DSEObjectNotFoundException; 
import com.ibm.dse.base.DSEOperation;
import com.ibm.dse.base.Trace;
import java.io.IOException;

public class OPInscripcionTEX extends OperacionPresentacion
{
  public OPInscripcionTEX()
  {
  }

  public OPInscripcionTEX(String anOperationName)
    throws IOException
  {
    super(anOperationName);
  }

  public OPInscripcionTEX(String anOperationName, Context aParentContext)
    throws IOException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  public OPInscripcionTEX(String anOperationName, String aParentContext)
    throws IOException, DSEObjectNotFoundException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  public void inscribir()
    throws BbvaException
  {
    try
    {
    	
      setValueAt("prOperacion", getValueAt("Operacion").toString());
      setValueAt("prUsuarioAutoriza", getValueAt("UsuarioAutoriza").toString());
      setValueAt("prNumeroCuentaCargo", getValueAt("NumCuentaCargo").toString());
      setValueAt("prMontoCuentaCargo", getValueAt("MonCuentaCargo").toString());
      setValueAt("prNumeroCuentaAbono", getValueAt("NumCuentaAbono").toString());
      setValueAt("prMontoCuentaAbono", getValueAt("MonCuentaAbono").toString());
      setValueAt("prNombreBeneficiario", getValueAt("NombreBeneficiario").toString());
      setValueAt("prDireccionBeneficiario", getValueAt("DireccionBeneficiario").toString());
      setValueAt("prMotivoTransferencia", getValueAt("MotivoTransferencia").toString());
      setValueAt("prNombreBancoPagador", getValueAt("NombreBancoPagador").toString());
      setValueAt("prDireccionBancoPagador", getValueAt("DireccionBancoPagador").toString());
      
      setValueAt("prFecha", getValueAt("s_fecha_host").toString());
      setValueAt("prHora", getValueAt("s_hora_host").toString());
      setValueAt("s_clickeo", "N");
      setEstado("1");
      
     
      
      
      
    }
    catch (Exception e)
    {
      Trace.trace(64, "", "Error en inscribir() de " + getName() + " " + e.getMessage());
      new ControlErrores(this, e);
    }
  }
}
