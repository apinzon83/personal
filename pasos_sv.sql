use [PrgEspRemesas];
--paso 1
--SELECT TOP 1 * into [PrgEspRemesas].[dbo].[remoperaciones_020720] FROM [PrgEspRemesas].[dbo].[remoperaciones_050520];

--paso 2
--truncate table [PrgEspRemesas].[dbo].[remoperaciones_020720];

--paso 3
SELECT top 5 * FROM [PrgEspRemesas].[dbo].remoperaciones_020720;

--paso 4 
select newid() 
begin tran
insert into [PrgEspRemesas].[dbo].[RemCtrlCarga] values ('0C580E34-3971-4C90-86C9-A17B5F2A1378','IMS2020070301','','MREM',getdate(),'usrtransfo1',0,2276,0,'')
--paso 5 (arriba solito)
rollback tran

--paso 6, poner el archivo en c:\carga_sv\por_leer

--paso 7, poner el nombre de la tabla  y el cccargaid en el archivo de configuración

--paso 8, ejecutas el exe
 
--paso 9
select 
--top 10 * 
count(*), sum(RmopImporte)
from PrgEspRemesas.dbo.RemOperaciones_020720
--NRegs="5179" Monto="5179000.00"

--validamos que no existan folios en prod
select * from PrgEspRemesas.dbo.remoperaciones_020720 where rmopfolio in (select rmopfolio from PrgEspRemesas.dbo.RemOperaciones) 
 
--paso 10, insertas en remoperaciones
--insert into [PrgEspRemesas].dbo.RemOperaciones select * from [PrgEspRemesas].dbo.RemOperaciones_020720


--select * from PrgEspRemesas.dbo.RemCtrlCarga where RmCCCargaID in ('825090DD-D0A1-4F47-AF7D-B9CD0C1CE6D5')

select top 5 * from PrgEspRemesas.dbo.remoperaciones_020720

--paso 11, comprobar
select * from PrgEspRemesas.dbo.remoperaciones where RmCCCargaID = '0C580E34-3971-4C90-86C9-A17B5F2A1378'









--INSERT INTO PrgEspRemesas.dbo.RemOperaciones_111219_4 (RemeID,  RmopFolio, RmstID, EntiID, SucuID, RmtmID,  RmopFechaOrden, RmopImporte, RmopNomBen, RmopDirBen, RmopTelBen, RmopEdoBen, RmopSucAdm, RmopCtaAdm, RmopFecReg,  RmopNomRet, RmopDirRet, RmopEdoRet, RmopTelRet, RmopFecVen, RmopTipoCambio, RmopFecMov, [RmopAutoriza], [RmopIdentifica], [RmInArchID], [EmplID], RmCCCargaID, [EmplIDCC], [RmOpAutomatico], [EntiIDCC], [RmopFolioAlterno])
--											    values  (empresa, Folio    , '0'   , EntiId, SucuId, TipoPag, FecOrd,         monto,	   NomBen    , DirBen    , TelBen +  , EdoBen    , '0000'    , Cuenta    , getdate() ,  NomRet    , DirRet    , EdoRet    , TelRet    , FecVen    , ComTipCam     , '19000101', ' '           , ''              , '0'         , ' '     , ccCargaId  , ' '       , '0'             , '0000'    , Folio )
--insert into [PrgEspRemesas].dbo.RemOperaciones 
select 'BSV',giro,'0',entiid,sucuid,tipopag,fecord,cantidad,NomBen,DirBen,TelBen,EdoBen,'0000','0',getdate(),NomRet,'',EdoRet,TelRet,FecVen,'0','081976C5-1E81-41EE-9ADD-3D2F94DF12FE','19000101',' ','','0',' ',' ','0','0000',giro  from [PrgEspRemesas].dbo.RemOperaciones_111219_3 where giro not in (select rmopfolio from [PrgEspRemesas].dbo.RemOperaciones)

--validar folios
--select * from [PrgEspRemesas].dbo.RemOperaciones_111219_3 where giro in (select rmopfolio from PrgEspRemesas.dbo.RemOperaciones)

--SELECT top 5 * FROM [PrgEspRemesas].[dbo].[remoperaciones_240120];
--SELECT  * FROM [PrgEspRemesas].[dbo].[remoperaciones] where RmCCCargaID = '54948DD0-9CDD-4D6A-888E-5397146951F5';


select * from [PrgEspRemesas].[dbo].[remoperaciones] where rmopfolio in (select RmopFolio from [PrgEspRemesas].[dbo].[remoperaciones_170420])

--insert into [PrgEspRemesas].dbo.RemOperaciones select * from [PrgEspRemesas].dbo.RemOperaciones_170420









INSERT INTO PrgEspRemesas.dbo.RemOperaciones_240120(RemeID, RmopFolio		   ,RmstID,EntiID,SucuID,RmtmID,RmopFechaOrden,RmopImporte,RmopNomBen			    ,RmopDirBen,RmopTelBen,RmopEdoBen,RmopSucAdm,RmopCtaAdm,RmopFecReg,RmopNomRet,RmopDirRet,RmopEdoRet,RmopTelRet,RmopFecVen,RmopTipoCambio,RmopFecMov,RmopAutoriza,RmopIdentifica,RmInArchID,EmplID,RmCCCargaID,EmplIDCC,RmOpAutomatico,EntiIDCC,RmopFolioAlterno)                
											values ('PJF' ,'010000003502212011','0'   , ''   ,''    ,'1'   ,'20200124'    ,3610       ,'Aguila Calderon Beatriz',''		   ,''        ,'01'      ,'0000'    ,''		   , getdate() , 'SEDESOLPSVJF','Rio Misisipi no 49 piso 12 Col Cuauhtemoc Del Cuauhtemoc CP 06500','09','','20200220','0.00', '19000101'   ,' '           , ''              , '0'         , ' '     , '54948DD0-9CDD-4D6A-888E-5397146951F5', ' '       , '0'             , '0000'    , '010000003502212011'   ) 