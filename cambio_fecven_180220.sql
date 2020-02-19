SELECT [RemeID]
      ,[RmopFolio]
      ,[RmstID]
      ,[EntiID]
      ,[SucuID]
      ,[RmtmID]
      ,[RmopFechaOrden]
      ,[RmopImporte]
      ,[RmopNomBen]
      ,[RmopDirBen]
      ,[RmopTelBen]
      ,[RmopEdoBen]
      ,[RmopSucAdm]
      ,[RmopCtaAdm]
      ,[RmopFecReg]
      ,[RmopNomRet]
      ,[RmopDirRet]
      ,[RmopEdoRet]
      ,[RmopTelRet]
      ,[RmopFecVen]
      ,[RmopTipoCambio]
      ,[RmCCCargaID]
      ,[RmopFecMov]
      ,[RmopAutoriza]
      ,[RmopIdentifica]
      ,[RmInArchID]
      ,[EmplID]
      ,[EmplIDCC]
      ,[RmOpAutomatico]
      ,[EntiIDCC]
      ,[RmopFolioAlterno]
  FROM  
  --update 
  PrgEspRemesas.dbo.RemOperaciones
  --set RmopFecVen = '20200306'
  where remeid = 'PJF'
  and   RmopFechaOrden = '20200124'
  and   rmstid = '0' -- 8383
