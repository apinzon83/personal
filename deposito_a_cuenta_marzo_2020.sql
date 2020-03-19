/*
--consultamos los folios en T
declare @archid int; set @archid = 60232
--select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuenta, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid in ('T')				   and rmtmid = '2' and RmInArchID >= @archid order by RmopFecMov
--select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuenta, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','D')          and rmtmid = '2' and RmInArchID >= @archid order by RmopFecMov
select RmopFolio, right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10) cuentas, RmopImporte Importe, rmstid, RmopFecMov,RmInArchID from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','E','EL','I') and rmtmid = '2' and RmInArchID >= @archid order by RmopFecMov

60074 - 60094 - DEC_060320_1900 -  109 rem vs 136 dec - solo hay un registro que no aparece en DEC_060320
60095 - 60103 - DEC_090320_1030 -  283 rem vs 321 dec - solo hay un registro que no aparece en DEC_060320
60104 - 60136 - DEC_100320_1900 -  304 rem vs 324 dec - 
60137 - 60157 - DEC_110320_1900 -  137 rem vs 150 dec - 
60158 - 60178 - DEC_120320_1900 -  123 rem vs 174 dec - 
60179 - 60199 - DEC_130320_1900 -  164 rem vs 222 dec - 
60200 - 60231 - DEC_170320_1200 -  394 rem vs   0 dec - 
60232 - 60254 - DEC_180320_1330 -  157 rem vs   0 dec - 

--validar los rminarcid
--alter table dec add rem nvarchar(255)
--update dec set rem = substring(descr,6,3) where folio <> ''
--update dec set rem = substring(descr,6,3) where folio <> '' and rem is null
--update dec set filename = 'dec_130320_1900.TXT' where fileName = 'dec_130320_1900_Omar.TXT'

select * from dec
select distinct(fileName) from dec

select distinct( right('0000000000'+ltrim(rtrim(rmopCtaAdm)),10)) cuenta, rmopfolio, RmInArchID, rmopfecmov
from PrgEspRemesas.dbo.RemOperaciones where rmstid not in ('T','E','EL','I') and rmtmid = '2' 
and RmInArchID between 60137 and 60157  order by RmInArchID

select id, cta, monto, fecha1, fecha2, rem, folio, descr from PrgEspRemesas.dbo.DEC where fileName = 'dec_090320_1030.txt' and folio <> ''
select id, cta, monto, fecha1, fecha2, rem, folio, descr from PrgEspRemesas.dbo.DEC where fileName = 'dec_100320_1900.txt' and folio <> ''
select id, cta, monto, fecha1, fecha2, rem, folio, descr from PrgEspRemesas.dbo.DEC where fileName = 'dec_110320_1900.txt' and folio <> ''
select id, cta, monto, fecha1, fecha2, rem, folio, descr from PrgEspRemesas.dbo.DEC where fileName = 'dec_120320_1900.TXT' and folio <> ''
select id, cta, monto, fecha1, fecha2, rem, folio, descr from PrgEspRemesas.dbo.DEC where fileName = 'dec_130320_1900.TXT' and folio <> ''


select right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10) cta ,rr.RmInArchID 
from PrgEspRemesas.dbo.DEC_270120_1930 oo 
join PrgEspRemesas.dbo.RemOperaciones rr on (right('0000000000'+ltrim(rtrim(rr.rmopCtaAdm)),10)) = oo.f1 and oo.f7	like concat('%',ltrim(rtrim([RmopFolio])),'%') 
where oo.f6 = 'H' and oo.f7 like 'REM%' and rr.RmInArchID between 59465 and 59485 order by RmInArchID

--paso 12 - solicitamos los movimientos de las cuentas a Omar
*/
--truncate table PrgEspRemesas.dbo.DEC_030320_1200
truncate table PrgEspRemesas.dbo.t_temp_290120
truncate table PrgEspRemesas.dbo.t_temp_290120

declare @aid_inicio  int;
declare @aid_fin     int;
declare @c_folios	 int;
declare @folio varchar(50);
set 	@aid_inicio = 60104;
set 	@aid_fin    = 60136; 

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
									from PrgEspRemesas.dbo.DEC_100320_1900 oo
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

/*

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopctaadm in ('0275802502','1250225305','1204426033','1242882494','1269355879') and rminarchid = 60104
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f1 like '%0275802502%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f1 like '%1250225305%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f1 like '%1204426033%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f1 like '%1242882494%'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f1 like '%1269355879%'

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018127678342';
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7 like    '%018127678342%';

select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio = '018127385006'
select * from PrgEspRemesas.dbo.DEC_060120_1000 where f7 like '%018127385006%'

select * from PrgEspRemesas.dbo.DEC_030320_1200_2 where f1 in (select f1 from PrgEspRemesas.dbo.DEC_030320_1200_2 where f1 not in (select f1 from PrgEspRemesas.dbo.DEC_030320_1200))
select count(*) from dec_030320_1200
select count(*) from dec_030320_1200_2
select * from dec_030320_1200_2


select * from PrgEspRemesas.dbo.RemOperaciones  where rmopfolio in (
'00591040337303',
'018126876169',
'018126878608',
'03528022000156',
'03532000526215',
'12826359943',
'69283181506',
'18857801094',
'18857802753',
'19102151090',
'19102151603',
'018126877835',
'018126880208',
'018126880775',
'018126886221',
'018126888441',
'18529138088',
'18566713686',
'1899911121',
'6581692797',
'18857808594',
'18857809238',
'03532000537246',
'018126999027',
'284000000134310',
'03502032000229',
'018127186272')

select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%00591040337303%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%00591040337303%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126876169%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126878608%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%03528022000156%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%03532000526215%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%12826359943%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18857801094%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18857802753%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%69283181506%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%19102151090%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%19102151603%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126877835%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126880208%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126880775%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126886221%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126888441%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18529138088%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18566713686%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18857808594%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%18857809238%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%1899911121%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%6581692797%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%03532000537246%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018126999027%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%284000000134310%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%03502032000229%'
select * from PrgEspRemesas.dbo.dec_030320_1200_2 where f7 like    '%018127186272%'

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

select * from PrgEspRemesas.dbo.DEC 



*/

