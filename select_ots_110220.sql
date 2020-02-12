/*
select top 10 * from ots_170120 
select top 10 * from dashboard_170120 
--select * from desarollos_140120
--select * from ots_140120 where Estatus <> 'TERMINADO' 
--select * from ots_140120 where NOOT IN ('SMS-2366-19')

--select noot, frs from ots_140120 
--select ot,  frs from dashboard_140120 
--select ot,  frs from dashboard_140120 where ot = 'SMS-2352-19'
--select ot, fecha_recep_sol, hora_recep_so, frs from dashboard_140120 
--select * from dashboard_140120 where tiempo_total_atencion is null
--select * from ots_070120 where estatus = 'EN PROCESO' AND Area_Solicitante in ('Banca Social','Negocios y Corresponsales') and ASIGNADA_A in ('Appwhere','Bansefi','Appwhere/KIO','INFOTEC','Appwhere/INFOTEC','ONE PROJECT','Soporte UANL') and estatus  in ('EN PROCESO') and NoOT not in ('SMS-1761-19','SMS-1867-19')
*/

------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* adecucaciones
1 - agregamos el campo frs donde vamos a calcular la frs para los ots de enero a oct = Fecha_Recepcion_solicitud y para los registrso de nov. a la fecha, van con la frs del dashboard.

a) creamos el campo frs en la tabla ots_140120
alter table ots_170120 add frs datetime
update ots_170120 set frs = Fecha_Recep_sol

b) creamos el campo frs en la tabla dashboard_1401220
alter table dashboard_140120 add frs datetime
update dashboard_140120 set frs = substring(fecha_recep_sol,7,4)+substring(fecha_recep_sol,4,2)+substring(fecha_recep_sol,1,2)+' '+hora_recep_so+':00';

UPDATE dbo.ots_140120 SET ots_140120.FRS = dd.FRS FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT where dd.frs >= '20191101';

--validamos 

select noot, oo.frs, dd.frs from ots_140120 oo join dashboard_140120 dd on dd.ot = oo.noot where oo.frs is null 
select noot, Fecha_Recepcion_solicitud, frs, tipo_servicio from ots_140120 where frs is null
select ot, frs from dashboard_140120 where ot in (select noot from ots_140120 where frs is null)

2 - agregamos los campos fip y feo de tipo datetime a la tabla ots_140120
alter table ots_140120 add fip datetime
alter table ots_140120 add feo datetime

3 - agregamos los campos fip y feo de tipo datetime a la table dashboard_140120
alter table dashboard_140120 add fip datetime
alter table dashboard_140120 add feo datetime

4 - calculamos fip con los datos de fecha_incio_proceso y hora_inicio_proceso
update dbo.dashboard_140120 set fip = substring(Fecha_Inicio_Proceso,7,4)+substring(Fecha_Inicio_Proceso,4,2)+substring(Fecha_Inicio_Proceso,1,2)+' '+Hora_Inicio_proceso+':00';

5 - calculamos feo con los datos de Fecha_Entrega_Orden y Hora_entrega_Orden
select * from dashboard_140120 where substring(Fecha_Entrega_Orden,4,2) = '19' 
update dashboard_140120 set Fecha_Entrega_Orden = '18/12/2019' where ot = 'SMS-2172-19'
update dashboard_140120 set Fecha_Entrega_Orden = '18/12/2019' where ot = 'SMS-2189-19'
update dbo.dashboard_140120 set feo = substring(Fecha_Entrega_Orden,7,4)+substring(Fecha_Entrega_Orden,4,2)+substring(Fecha_Entrega_Orden,1,2)+' '+Hora_entrega_Orden+':00';

6 - calculamos fip y feo de 
UPDATE dbo.ots_140120 SET ots_140120.Fip = dd.Fip FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;
UPDATE dbo.ots_140120 SET ots_140120.Feo = dd.Feo FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;

lo poblamos 
UPDATE dbo.ots_140120 SET ots_140120.Fip = dd.Fip FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;
UPDATE dbo.ots_140120 SET ots_140120.Feo = dd.Feo FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;

7 - agregamos reg_rechazados e importe_rechazado a la tabla ots_140120
alter table ots_140120 add reg_rechazados int
alter table ots_140120 add importe_rechazado money

8 - los poblamos

UPDATE dbo.ots_140120 SET ots_140120.reg_rechazados = dd.Registros_rechazados FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;
UPDATE dbo.ots_140120 SET ots_140120.importe_rechazado = dd.Monto_Rechazado FROM dbo.ots_140120 o14 INNER JOIN dbo.dashboard_140120 dd ON o14.NoOT = dd.OT;

9 - agregamos el campo estatus2 a la tabla ots_140120
alter table ots_140120 add estatus2 nvarchar(50)
select distinct(estatus) from ots_140120
update ots_140120 set estatus2 = ''

10 - poner null en 0 tanto en monto como en beneficiario, rechazados e monto_rechazado de la tabla ots_140120
select noot, Beneficiarios      from ots_140120 where Beneficiarios     is null --48
select noot, Monto_orden        from ots_140120 where Monto_orden       is null --710
select noot, reg_rechazados     from ots_140120 where reg_rechazados    is null --1413
select noot, importe_rechazado  from ots_140120 where importe_rechazado is null --1271

update ots_170120 set Beneficiarios     = 0 where Beneficiarios     is null --1
update ots_170120 set Monto_orden       = 0 where Monto_orden       is null --18
update dashboard_170120 set registros_rechazados = 0 where registros_rechazados is null --
update dashboard_170120 set monto_rechazado      = 0 where monto_rechazado      is null --93

11 - actualizo las ots que no tienen frs.

UPDATE ots_140120 set frs= '20191114 19:21:00' where noot = 'SMS-1909-19';
UPDATE ots_140120 set frs= '20191115 12:26:00' where noot = 'SMS-1915-19';
UPDATE ots_140120 set frs= '20191120 12:59:00' where noot = 'SMS-1927-19';
UPDATE ots_140120 set frs= '20191120 12:59:00' where noot = 'SMS-1928-19';
UPDATE ots_140120 set frs= '20191120 12:59:00' where noot = 'SMS-1930-19';
UPDATE ots_140120 set frs= '20191120 14:29:00' where noot = 'SMS-1938-19';
UPDATE ots_140120 set frs= '20191120 14:29:00' where noot = 'SMS-1939-19';
UPDATE ots_140120 set frs= '20191119 18:02:00' where noot = 'SMS-1942-19';
UPDATE ots_140120 set frs= '20191120 12:59:00' where noot = 'SMS-1947-19';
UPDATE ots_140120 set frs= '20191121 12:50:00' where noot = 'SMS-1955-19';
UPDATE ots_140120 set frs= '20191127 13:49:00' where noot = 'SMS-2003-19';
UPDATE ots_140120 set frs= '20191206 12:30:00' where noot = 'SMS-2104-19';
UPDATE ots_140120 set frs= '20191206 18:41:00' where noot = 'SMS-2111-19';
UPDATE ots_140120 set frs= '20191213 13:44:00' where noot = 'SMS-2144-19';
UPDATE ots_140120 set frs= '20191226 11:17:00' where noot = 'SMS-2305-19';
UPDATE ots_140120 set frs= '20191227 17:44:00' where noot = 'SMS-2313-19';
UPDATE ots_140120 set frs= '20191014 12:50:00' where noot = 'SMS-1641-19';
UPDATE ots_140120 set frs= '20191101 18:25:00' where noot = 'SMS-1772-19';
UPDATE ots_140120 set frs= '20191107 18:28:00' where noot = 'SMS-1832-19';
UPDATE ots_140120 set frs= '20191111 14:30:00' where noot = 'SMS-1839-19';
UPDATE ots_140120 set frs= '20191107 18:26:00' where noot = 'SMS-1840-19';
UPDATE ots_140120 set frs= '20191107 18:26:00' where noot = 'SMS-1841-19';
UPDATE ots_140120 set frs= '20191108 17:04:00' where noot = 'SMS-1849-19';
UPDATE ots_140120 set frs= '20191108 18:28:00' where noot = 'SMS-1850-19';
UPDATE ots_140120 set frs= '20191112 09:30:00' where noot = 'SMS-1866-19';
UPDATE ots_140120 set frs= '20191113 17:24:00' where noot = 'SMS-1878-19';
UPDATE ots_140120 set frs= '20191113 18:21:00' where noot = 'SMS-1879-19';

12 - agregamos los desarrollos
select top 10 noot, fecha_solicitud, descripcion, programa, subprograma, tipo_servicio, solicitante, area_solicitante, asignada_a, fecha_recepcion_solicitud,estatus from ots_140120

--insert into ots_140120 (noot, fecha_solicitud, descripcion, programa, subprograma, tipo_servicio, solicitante, area_solicitante, asignada_a, fecha_recepcion_solicitud,estatus) select noot, fecha_solicitud, descripcion, programa, 'Desarrollo', tipo_servicio, solicitante, area_solicitante, asignada_a, fecha_envio, 'ABIERTO' from desarrollos_140120

select noot, fecha_solicitud, descripcion, programa, 'Desarrollo', tipo_servicio, solicitante, area_solicitante, asignada_a, fecha_envio, 'ABIERTO' from desarrollos_140120 where noot in ('SMS-1051-19','SMS-1153-19','SMS-1206-19','SMS-1283-19','SMS-1593-19','SMS-1594-19');

13 - actualizadmos frs con la fecha_recepcion_solicitud
update ots_140120 set frs =  fecha_recepcion_solicitud where noot in ('SMS-1051-19','SMS-1153-19','SMS-1206-19','SMS-1283-19','SMS-1593-19','SMS-1594-19');

14 - ponemo en 0 Beneficiarios, Monto_orden, reg_Rechazos,importe_rechazado

update ots_140120 set Beneficiarios = 0, Monto_orden = 0, reg_Rechazados = 0, importe_rechazado = 0 where noot in ('SMS-1051-19','SMS-1153-19','SMS-1206-19','SMS-1283-19','SMS-1593-19','SMS-1594-19');





update dar
*/


------------------------------------------------------------------------------------------------------------------------------------------------------------------
select	--top 20
		NoOT orden_de_trabajo,
		--descripcion descripcion,
		oo.programa,
		oo.subprograma,
        --oo.tipo_servicio,
		ESTATUS,
        --oo.frs ,
        oo.Fecha_Recep_sol fecha_recepcion_solicitud,
		oo.Hora_Recep_sol  hora_recepcion_solicitud,
		--FORMAT (oo.Fecha_Recep_sol, 'dd/MM/yyyy') fecha_recepcion_solicitud,
		--FORMAT (oo.Hora_Recep_sol, 'hh:mm:ss')   hora_recepcion_solicitud,
		--dd.fecha_inicio_proceso Fecha_Inicio_proceso_FSW,
		--dd.hora_inicio_proceso Hora_Inicio_proceso_FSW2,
		--FORMAT (oo.FIP, 'dd/MM/yyyy') Fecha_Inicio_proceso_FSW,
		--FORMAT (oo.FIP, 'hh:mm:ss')   Hora_Inicio_proceso_FSW2,
        --IsNull(FORMAT (dd.Fecha_Inicio_Proceso, 'dd/MM/yyyy'), '') As Fecha_Inicio_proceso_FSW,
        --IsNull(FORMAT (dd.Hora_Inicio_proceso, 'hh:mm:ss'), '')   As Hora_Inicio_proceso_FSW2,
        IsNull(dd.Fecha_Inicio_Proceso, '') As Fecha_Inicio_proceso_FSW,
        IsNull(dd.Hora_Inicio_proceso,  '') As Hora_Inicio_proceso_FSW2,

		--dd.fecha_entrega_orden Fecha_entraga_orden,
		--dd.hora_entrega_orden Hora_entraga_orden,
		--isnull(FORMAT (dd.Fecha_Entrega_Orden, 'dd/MM/yyyy'), '')  Fecha_entraga_orden,
		--isnull(FORMAT (dd.Hora_entrega_Orden, 'hh:mm:ss'), '')    Hora_entraga_orden,
        isnull(dd.Fecha_Entrega_Orden, '')  Fecha_entraga_orden,
		isnull(dd.Hora_entrega_Orden,  '')    Hora_entraga_orden,
		isnull(dd.Tiempo_proceso,'') Tiempo_proceso,
		oo.Beneficiarios,
		oo.Monto_orden,
		--dd.registros_Rechazos Rechazos,
		dd.Registros_rechazados Rechazos, -----------------------------------------------------------------
		--dd.monto_rechazado Monto_rechazado --
		dd.Monto_Rechazado Monto_rechazado -----------------------------------------------------------------
		--,Area_Solicitante,ASIGNADA_A
from dbo.ots_170120 oo
JOIN dbo.dashboard_170120 dd on dd.OT = oo.noot
--where oo.Area_Solicitante in ('Banca Social','Negocios y Corresponsales') 
--and oo.ASIGNADA_A in ('Appwhere','Bansefi','Appwhere/KIO','INFOTEC','Appwhere/INFOTEC','ONE PROJECT','Soporte UANL') 
--and estatus  in ('ABIERTO','TERMINADO') 
--and NoOT not in ('SMS-1761-19','SMS-1867-19')
--and noot in ('SMS-1051-19','SMS-1153-19','SMS-1206-19','SMS-1283-19','SMS-1593-19','SMS-1594-19')
--and noot in ('SMS-1641-19','SMS-1772-19','SMS-1832-19','SMS-1839-19','SMS-1840-19','SMS-1841-19','SMS-1849-19','SMS-1850-19','SMS-1866-19','SMS-1878-19','SMS-1879-19','SMS-1909-19','SMS-1915-19','SMS-1927-19','SMS-1928-19','SMS-1930-19','SMS-1938-19','SMS-1939-19','SMS-1942-19','SMS-1947-19','SMS-1955-19','SMS-2003-19','SMS-2104-19','SMS-2111-19','SMS-2144-19','SMS-2305-19','SMS-2313-19')
order by estatus, orden_de_trabajo;



