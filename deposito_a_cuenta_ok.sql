/*
--Proceso cargo abono en cuenta (para depisito a cuenta '2')

--paso 1 - seleccionamos los registros en 0 y sin rmcccargaid
select rmopfolio, RmopFecReg from PrgEspRemesas.dbo.RemOperaciones where RmstID in ('0') and RmtmID = '2' and RmCCCargaID is null order by RmopFecReg

--paso 2 - generamos cccairga id al
select newid()
begin tran
insert into PrgEspRemesas.dbo.RemCtrlCarga values ('179C2E54-DEE6-4F5B-A4DF-BD295186A5D5','remesas_030120_1430','','MREM',getdate(),'usrtransfo1',0,3,0,'')
--paso 3 (ahora el insert solito)
rollback tran

--paso 4 - consultamos el cccargaid
select top 5 * from PrgEspRemesas.dbo.remctrlcarga order by RmCCFechaCarga desc
--select top 5 * from PrgEspRemesas.dbo.remctrlcarga where rmccfechacarga between '20191025 0:0:0' and '20191025 23:59:59' and rmccnomarch like 'remesas%' order by RmCCFechaCarga desc
--update PrgEspRemesas.dbo.remctrlcarga set rmccnomarch = 'remesas_281019_1115' where rmcccargaid = '808BA349-5742-41FB-8D60-B865E35BB498'

--paso 5 - actualizar el cccargaid a los folios seleccionados
begin tran 
update PrgEspRemesas.dbo.RemOperaciones 
set    RmCCCargaID = '179C2E54-DEE6-4F5B-A4DF-BD295186A5D5'
where  RmstID = '0'
and    RmtmID = '2' 
and    RmCCCargaID is null
and    RmopFolio in ('')
rollback tran

--paso 6 - contar y consultar folios que si tienen cccaigaid
select rmopfolio				  from PrgEspRemesas.dbo.RemOperaciones where RmstID in('0') and RmtmID = '2' and RmCCCargaID is not null and RmInArchID = 0
select count(*), sum(rmopimporte) from PrgEspRemesas.dbo.RemOperaciones where RmstID in('0') and RmtmID = '2' and RmCCCargaID is not null and RmInArchID = 0

--paso 7 - generamos el archid a los sig folios
begin tran
insert into PrgEspRemesas.dbo.PrgIntercambio
	   (PeInFecEnvio, PeInFecVenc, PeInFecResp, PeInNumRegs, PeInTotImp, PeInNumRegsRech, EntiID, PeInNomArch, PeInTAID, PeInRechID, PeInstID, PeInObservacion, PeInTAPrograma)
values ('2020-01-03 14:30:0', '2020-01-08 14:30:0', '2020-01-03 14:45:0', 11, 117841.98, 0, '0166', 'remesas_030120_1430', 'AC', '', 'TP', 'TRANSMITIDO POR ENTIDADES PROCESO DE ACTUALIZACION DE ESTAUS DIARIO' , 29)
rollback tran

--paso 8 - consultamos el RmInArchID
select top 5 * from PrgEspRemesas.dbo.prgintercambio order by 1 desc

--paso 9 - actualizamos el archid a los folios 
begin tran
update PrgEspRemesas.dbo.RemOperaciones
set    rminarchid = 59145,
       rmstid = 'T', 
       RmopFecMov =  getdate()
where  RmopFolio in (
'')
rollback tran

--paso 10 - consultamos los folios en T
declare @archid int; set @archid = 59969
--select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuenta, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid in ('T')				   and rmtmid = '2' and RmInArchID >= @archid order by rmstid
--select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuenta, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','D')          and rmtmid = '2' and RmInArchID >= @archid order by rmstid
select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuenta, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','E','EL','I') and rmtmid = '2' and RmInArchID >= @archid order by rmstid



59213 - 59233 - DEC_100120_1900_13_33 - ok
59234 - 59254 - DEC_100120_1900 - ok
59255 - 59264 - DEC_130120_1130 - ok
59265 - 59275 - DEC_130120_1900 - ok
59275 - 59296 - DEC_150120_1800 - ok
59297 - 59310 - DEC_150120_1430 - ok
59311 - 59369 - DEC_200120_1130 - 
59360 - 59371 - DEC_200120_1130 - ok
59370 - 59401 - DEC_210120_1900 - 
59381 - 59401 - DEC_210120_1900 - ok
59402 - 59422 - DEC_220120_1930 - ok
59423 - 59464 - DEC_240120_1900 - ok
59465 - 59485 - DEC_270120_1930 - 205 REM vs 209 DEC - ok
59486 - 59494 - DEC_280120_1000 - ok
59495 - 59506 - DEC_280120_1900 -   44 rem vs  45 dec - ok
59507 - 59527 - DEC_290120_1930 -   59 rem vs  65 dec - ok
59528 - 59548 - DEC_300120_1900 -   54 rem vs  61 dec - ok
59549 - 59611 - DEC_040220_1900 -  338 rem vs 281 dec - ok
59612 - 59632 - DEC_050220_1930 -   60 rem vs  64 dec - ok
59633 - 59653 - DEC_060220_1930 -   60 rem vs  64 dec - todo mal
59633 - 59653 - DEC_060220_1930_2 - 60 rem vs  93 dec - ok
59653 - 59672 - DEC_070220_1900 -   66 rem vs  65 dec - solo hay 3 pendientes de validación en tcb, ya envié correo a Irais.
59673 - 59695 - DEC_100220_1900 -  218 rem vs 212 dec - solo hay 8 folios que no aparecen en la consulta de Omar, ya le pedí ayuda a Ira para validar.
59696 - 59716 - DEC_110220_1930 -   66 rem vs  70 dec - solo hay un registro que no aparece en DEC_110220
59717 - 59737 - DEC_120220_1930 -   66 rem vs  69 dec - solo hay un registro que no aparece en DEC_120220
59738 - 59788 - DEC_170220_1000 -  284 rem vs 286 dec - solo hay dos registros que no aparecen en DEC_170220
59789 - 59819 - DEC_180220_1830 -  106 rem vs 111 dec - ok
59820 - 59849 - DEC_200220_0930 -   68 rem vs  73 dec - ok
59850 - 59877 - DEC_210220_1430 -   84 rem vs  85 dec - ok
59878 - 59897 - DEC_240220_1900 -  231 rem vs 236 dec - solo hay un regustro que no aparece en DEC_240220
59898 - 59919 - DEC_250220_1400 -   99 rem vs 106 dec - solo hay un regustro que no aparece en DEC_250220
59920 - 59936 - DEC_260220_1330 -   59 rem vs  63 dec - ok
59937 - 59968 - DEC_270220_1900 -  125 rem vs   0 dec
59969 - 59987 - DEC_280220_1830 -   84 rem vs   0 dec
*/


--paso 11 - validar los rminarcid
/* 
select distinct( right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10)) cuenta, rmopfolio, RmInArchID, rmopfecmov
from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','E','EL','I') and rmtmid = '2' and RmInArchID between 59850 and 59877  order by RmInArchID

select * from PrgEspRemesas.dbo.DEC_260220_1330 where f6 = 'H' and f7 like '%REM%'

select right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10) cta ,rr.RmInArchID 
from PrgEspRemesas.dbo.DEC_270120_1930 oo 
join PrgEspRemesas.dbo.RemOperaciones rr on (right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10)) = oo.f1 and oo.f7	like concat('%',ltrim(rtrim([RmopFolio])),'%') 
where oo.f6 = 'H' and oo.f7 like 'REM%' and rr.RmInArchID between 59465 and 59485 order by RmInArchID

--paso 12 - solicitamos los movimientos de las cuentas a Omar
*/

truncate table PrgEspRemesas.dbo.t_temp_290120
truncate table PrgEspRemesas.dbo.t_temp_290120

declare @aid_inicio  int;
declare @aid_fin     int;
declare @c_folios	 int;
declare @folio varchar(50);
set 	@aid_inicio = 59920;
set 	@aid_fin    = 59936; 

WHILE @aid_inicio <= @aid_fin
    BEGIN
		insert into PrgEspRemesas.dbo.folios_temp_290120
		select RmopFolio
		from   PrgEspRemesas.dbo.RemOperaciones
		where  RmstID in ('D')
		and	   RmtmID	  = '2'
		and    RmInArchID = @aid_inicio
		and	   RmopCtaAdm not in (
									select right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10) cta
									from PrgEspRemesas.dbo.DEC_260220_1330 oo
									join PrgEspRemesas.dbo.RemOperaciones rr on (right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10)) = oo.f1 and oo.f7	like concat('%',ltrim(rtrim([RmopFolio])),'%')
									where oo.f6 = 'H' 
									and oo.f7 like 'REM%'
									and rr.rminarchid = @aid_inicio
							     );
		set @c_folios = (select count(*) from PrgEspRemesas.dbo.folios_temp_290120);
		if @c_folios > 0 begin
			insert into PrgEspRemesas.dbo.t_temp_290120
			select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cta, RmopImporte, RmstID, RmopFecMov, RmInArchID
			from   PrgEspRemesas.dbo.RemOperaciones
			where  RmstID in ('D') 
			and	   RmtmID = '2'
			and    RmInArchID = @aid_inicio
			and	   RmopFolio in (select RmopFolio from PrgEspRemesas.dbo.folios_temp_290120)
		end;
		set @aid_inicio = @aid_inicio + 1;
	END;
	
	select * from PrgEspRemesas.dbo.t_temp_290120
--  select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = @folio
--  select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7 like '%'+@folio+'%'


/*
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018126351743'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like    '%018126351743%'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '00591040348517'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%00591040348517%'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '03532000543166'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%03532000543166%'


select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio in ('018125375189','018125383144','20310124160395','19101115039','018125392043','19071884076','19101122225','03532000542990')

select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125375189%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125383144%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%20310124160395%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%19101115039%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125392043%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%19071884076%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%19101122225%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%03532000542990%'



select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio in ('018125330389','018125348662','018125351337','18856357411','018125367473')

select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125330389%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125348662%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125351337%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%18856357411%'
select * from PrgEspRemesas.dbo.DEC_070220_1900 where f7 like '%018125367473%'


select top 10 * from PrgEspRemesas.dbo.RemOperaciones where rmopctaadm = '0468862073'

declare @aid_inicio2 int; 
--declare @folio varchar(50); 
set @aid_inicio2 = 59465; 
--set @folio		= '16359463273';
insert into PrgEspRemesas.dbo.folios_temp_290120
select RmopFolio--, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cta, RmopImporte, RmstID, RmopFecMov, RmInArchID
--into PrgEspRemesas.dbo.folios_temp_290120
from   PrgEspRemesas.dbo.RemOperaciones
where  RmstID     in ('D')
and	   RmtmID	  = '2'
and    RmInArchID = @aid_inicio2

truncate table PrgEspRemesas.dbo.folios_temp_290120;
select * from PrgEspRemesas.dbo.folios_temp_290120;

drop table PrgEspRemesas.dbo.t_temp_290120_@aid_inicio;

declare @aid_inicio int; 
declare @folio varchar(50); 
set @aid_inicio = 59465; 
set @folio		= '16359463273';
insert into PrgEspRemesas.dbo.t_temp_290120
select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cta, RmopImporte, RmstID, RmopFecMov, RmInArchID
from   PrgEspRemesas.dbo.RemOperaciones
where  RmstID     in ('D')
and	   RmtmID	  = '2'
and    RmInArchID = @aid_inicio
and	   RmopFolio  = @folio;


select * from PrgEspRemesas.dbo.t_temp_290120 order by RmInArchID
truncate table PrgEspRemesas.dbo.t_temp_290120







select RmopFolio
from   PrgEspRemesas.dbo.RemOperaciones
where  RmstID in ('D')
and	   RmtmID	  = '2' --59653
and    RmInArchID = 59653
and	   RmopCtaAdm not in (
							select right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10) cta
							from PrgEspRemesas.dbo.DEC_060220_1930_2 oo
							join PrgEspRemesas.dbo.RemOperaciones rr on (right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10)) = oo.f1 and oo.f7	like concat('%',ltrim(rtrim([RmopFolio])),'%')
							where oo.f6 = 'H' 
							and oo.f7 like 'REM%'
							and rr.rminarchid = 59653
						 );







truncate table PrgEspRemesas.dbo.t_temp_290120

select * from PrgEspRemesas.dbo.DEC_100120_1900 order by RmInArchID
select * from PrgEspRemesas.dbo.RemOperaciones where RmInArchID between 59213 and 59233 order by RmInArchID

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '00591040713325'
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123090035'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '00591040744786'      
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123093323'        
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123095497'        
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123096662'        
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '69283175847'         
select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '03532000493509'      

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123220950'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018123277413'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '00591040744915'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018124252725'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018124274121'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018124407125'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = ''

--------------------------------------------------------------------------------------
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018124407125%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018124274121%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018124252725%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%591040713325%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123090035%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%00591040744786%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123093323%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123095497%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123096662%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%69283175847%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%03532000493509%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123220950%'

select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7	like '%018123277413%'

select * from PrgEspRemesas.dbo.DEC_080120_1900 where f7	like '%00591040744915%'

select * from PrgEspRemesas.dbo.DEC_080120_1900 where f7	like '%%'


RmopFolio				cta			RmopImporte	RmstID	RmopFecMov
00591040713325      	0465491850	18840.00	D 		2020-01-03 19:00:06.097
018123090035        	1242606737	14960.00	D 		2020-01-03 19:00:07.957

00591040744786      	1244960785	2052.60		D 		2020-01-03 19:00:10.063
018123093323        	1241168242	18453.40	D 		2020-01-03 19:00:14.027
018123095497        	1180600544	14960.00	D		2020-01-03 19:00:15.997
018123096662        	1250053483	12955.04	D 		2020-01-03 19:00:12.020
69283175847         	1213789058	15160.00	D 		2020-01-03 19:00:18.037
03532000493509      	0289202178	18770.00	D 		2020-01-03 19:00:19.887

018123220950        	0244914743	37300.00	D 		2020-01-06 09:02:25.800

018123277413        	1177105820	37125.00	D 		2020-01-06 14:00:15.287

03532000535355      	4152313408	6000.00		I 		2020-01-07 09:00:15.277





00591040744915      	0255643363	10630.5000	D 	    2020-01-08 09:00:11.793	




--------------------------------------------------------------------------------------------
RmopFolio				cta			RmopImporte	RmstID	RmopFecMov				RmInArchID
03532000522160      	0227737137	1868.0000	D 		2020-01-14 10:00:06.203	59283	


--------------------------------------------------------------------------------------------
RmopFolio				cta			RmopImporte	RmstID	RmopFecMov				RmInArchID
018124180823        	1175061348	3910.20		D 		2020-01-20 12:00:06.253	59370
2533228031315       	1283426359	12395.00	D 		2020-01-20 12:00:10.630	59370
18855249510         	1247871088	2800.50		D 		2020-01-20 12:00:15.613	59370
03532000527575      	1283991410	18580.19	D 		2020-01-20 13:00:08.810	59371
18455850606         	1278600273	24694.96	D 		2020-01-20 13:00:11.410	59371
18528514040         	1274241304	7464.00		D 		2020-01-20 13:00:13.727	59371

RmopFolio				cta			RmopImporte	RmstID	RmopFecMov				RmInArchID
018124252725        	0094771615	2420.60		D 		2020-01-21 15:00:13.617	59395
018124274121        	0261034656	7396.00		D 		2020-01-21 19:00:15.037	59400



RmopFolio				cta			RmopImporte	RmstID	RmopFecMov				RmInArchID
018124407125        	0251857009	1116.0000	D 		2020-01-24 16:00:13.240	59459
*/

