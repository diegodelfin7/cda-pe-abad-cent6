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

public class OPInscripcionPSLuz extends OperacionPresentacion
{
  public OPInscripcionPSLuz()
  {
  }

  public OPInscripcionPSLuz(String anOperationName)
    throws IOException
  {
    super(anOperationName);
  }

  public OPInscripcionPSLuz(String anOperationName, Context aParentContext)
    throws IOException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  public OPInscripcionPSLuz(String anOperationName, String aParentContext)
    throws IOException, DSEObjectNotFoundException, DSEInvalidRequestException
  {
    super(anOperationName, aParentContext);
  }

  public void inscribir()
    throws BbvaException
  {
    try
    {
        setValueAt("prServicio", getValueAt("Servicio").toString());
        setValueAt("prNumeroCuentaCargo", getValueAt("UsuarioAutoriza").toString());
        setValueAt("prNumeroSuministro", getValueAt("NumeroSuministro").toString());
        setValueAt("prTitularServicio", getValueAt("TitularServicio").toString());
        setValueAt("prImportePagado", getValueAt("ImportePagado").toString());
        setValueAt("prUsuariosAutorizan", getValueAt("UsuarioAutoriza").toString());
        
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
