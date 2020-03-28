/*
SELECT TOP (1000) [idPersona]
      ,[nomPersona]
      ,[apPersona]
      ,[amPersona]
      ,[email]
      ,[extension]
      ,[estatus]
FROM [ctrlOts].[dbo].[Personas]
where estatus = 1
--where nomPersona like '%Chri%'
where idpersona in (select idSolicitante from ots);

--update personas set estatus = 1 where idPersona in (select idPersona from personas where idpersona in (select idpersona from bit_040320) and estatus =0)

select * from bit_040320

--update Personas set estatus = 0 where idPersona not in (select idsolicitante from ots)
--update Personas set estatus = 0 where idPersona in (120,124,128,138,146,150,169)


Select * from AreaSolicitante

select distinct(idareasol) from ots order by idAreaSol
select distinct(idpersona) from ots order by idAreaSol

select * from ots where idAreaSol = 13;
select * from ots where idSolicitante = 999;

select * from DireccionAdjunta
select * from Direcciones      --where iddireccionAdjunta = 2
select * from Subdireccion     --where idDireccion = 23
select * from Gerencias        --where idSubdireccion = 51


alter table DireccionAdjunta add cve_puesto nvarchar(8);
alter table Direcciones      add cve_puesto nvarchar(8);
alter table subdireccion     add cve_puesto nvarchar(8);
alter table Gerencias        add cve_puesto nvarchar(8);

insert into direccionadjunta values(13,'Dirección General Adjunta de Crédito y Garantías','DGACG',13000000)

update DireccionAdjunta set cve_puesto = '01000000' where idda = 1
update DireccionAdjunta set cve_puesto = '02000000' where idda = 2
update DireccionAdjunta set cve_puesto = '03000000' where idda = 3
update DireccionAdjunta set cve_puesto = '04000000' where idda = 4
update DireccionAdjunta set cve_puesto = '05000000' where idda = 5
update DireccionAdjunta set cve_puesto = '06000000' where idda = 6
update DireccionAdjunta set cve_puesto = '07000000' where idda = 7
update DireccionAdjunta set cve_puesto = '08000000' where idda = 8
update DireccionAdjunta set cve_puesto = '09000000' where idda = 9
update DireccionAdjunta set cve_puesto = '10000000' where idda = 10
update DireccionAdjunta set cve_puesto = '11000000' where idda = 11
update DireccionAdjunta set cve_puesto = '12000000' where idda = 12

update direcciones set cve_puesto = '02010000' where idDireccion =  21
update direcciones set cve_puesto = '02020000' where idDireccion =  22
update direcciones set cve_puesto = '02030000' where idDireccion =  23

update direcciones set cve_puesto = '03010000' where idDireccion =  31
update direcciones set cve_puesto = '03020000' where idDireccion =  32
update direcciones set cve_puesto = '03030000' where idDireccion =  33

update direcciones set cve_puesto = '04010000' where idDireccion =  41
update direcciones set cve_puesto = '04020000' where idDireccion =  42

update direcciones set cve_puesto = '05010000' where idDireccion =  51
update direcciones set cve_puesto = '05020000' where idDireccion =  52
update direcciones set cve_puesto = '05030000' where idDireccion =  53

update direcciones set cve_puesto = '06010000' where idDireccion =  61
update direcciones set cve_puesto = '06020000' where idDireccion =  62

update direcciones set cve_puesto = '07010000' where idDireccion =  71
update direcciones set cve_puesto = '07020000' where idDireccion =  72

update direcciones set cve_puesto = '08010000' where idDireccion =  81
update direcciones set cve_puesto = '08020000' where idDireccion =  82
update direcciones set cve_puesto = '08030000' where idDireccion =  83

update direcciones set cve_puesto = '09010000' where idDireccion =  91
update direcciones set cve_puesto = '09020000' where idDireccion =  92
update direcciones set cve_puesto = '09030000' where idDireccion =  93

update direcciones set cve_puesto = '10010000' where idDireccion = 101
update direcciones set cve_puesto = '10020000' where idDireccion = 102
update direcciones set cve_puesto = '10030000' where idDireccion = 103

update direcciones set cve_puesto = '11010000' where idDireccion = 111
update direcciones set cve_puesto = '11020000' where idDireccion = 112

update direcciones set cve_puesto = '12010000' where idDireccion = 121
update direcciones set cve_puesto = '12020000' where idDireccion = 122


update Subdireccion set cve_puesto = '02010100' where idSubdireccion = 1

update Subdireccion set cve_puesto = '02010200' where idSubdireccion = 2
update Subdireccion set cve_puesto = '02010300' where idSubdireccion = 3
update Subdireccion set cve_puesto = '02010400' where idSubdireccion = 4

update Subdireccion set cve_puesto = '02020100' where idSubdireccion = 5
update Subdireccion set cve_puesto = '02020200' where idSubdireccion = 6
update Subdireccion set cve_puesto = '02020300' where idSubdireccion = 7

update Subdireccion set cve_puesto = '02030100' where idSubdireccion = 8

update Subdireccion set cve_puesto = '03010100' where idSubdireccion =  9
update Subdireccion set cve_puesto = '03010200' where idSubdireccion = 10
update Subdireccion set cve_puesto = '03010300' where idSubdireccion = 11

update Subdireccion set cve_puesto = '03020100' where idSubdireccion = 12
update Subdireccion set cve_puesto = '03020200' where idSubdireccion = 13
update Subdireccion set cve_puesto = '03020300' where idSubdireccion = 14

update Subdireccion set cve_puesto = '03030100' where idSubdireccion = 15
update Subdireccion set cve_puesto = '03030200' where idSubdireccion = 16

update Gerencias set cve_puesto = '02010101' where idGerencia = 1
update Gerencias set cve_puesto = '02010201' where idGerencia = 2
update Gerencias set cve_puesto = '02010301' where idGerencia = 3
update Gerencias set cve_puesto = '02010401' where idGerencia = 4

update Gerencias set cve_puesto = '02020101' where idGerencia = 5
update Gerencias set cve_puesto = '02020102' where idGerencia = 6

update Gerencias set cve_puesto = '02020201' where idGerencia = 7

update Gerencias set cve_puesto = '02020301' where idGerencia = 8

update Gerencias set cve_puesto = '02030101' where idGerencia = 9


update Gerencias set cve_puesto = '03010301' where idGerencia = 10

update Gerencias set cve_puesto = '03020101' where idGerencia = 11
update Gerencias set cve_puesto = '03020101' where idGerencia = 12
update Gerencias set cve_puesto = '03020301' where idGerencia = 13

update Gerencias set cve_puesto = '03030101' where idGerencia = 14

update Gerencias set cve_puesto = '03030201' where idGerencia = 15
update Gerencias set cve_puesto = '03030202' where idGerencia = 16

update Subdireccion set cve_puesto = '04010100' where idSubdireccion = 17
update Subdireccion set cve_puesto = '04010200' where idSubdireccion = 18

update Subdireccion set cve_puesto = '04020100' where idSubdireccion = 19
update Subdireccion set cve_puesto = '04020200' where idSubdireccion = 20

update Gerencias set cve_puesto = '04010101' where idGerencia = 17
update Gerencias set cve_puesto = '04010102' where idGerencia = 18

update Gerencias set cve_puesto = '04020101' where idGerencia = 19

update Subdireccion set cve_puesto = '05010100' where idSubdireccion = 21
update Subdireccion set cve_puesto = '05010200' where idSubdireccion = 22

update Subdireccion set cve_puesto = '05020100' where idSubdireccion = 23
update Subdireccion set cve_puesto = '05020200' where idSubdireccion = 24
update Subdireccion set cve_puesto = '05020300' where idSubdireccion = 25

update Subdireccion set cve_puesto = '05030100' where idSubdireccion = 26
update Subdireccion set cve_puesto = '05030200' where idSubdireccion = 27
update Subdireccion set cve_puesto = '05030300' where idSubdireccion = 28

update Gerencias set cve_puesto = '05010101' where idGerencia = 20
update Gerencias set cve_puesto = '05010102' where idGerencia = 21
update Gerencias set cve_puesto = '05010103' where idGerencia = 22

update Gerencias set cve_puesto = '05010201' where idGerencia = 23
update Gerencias set cve_puesto = '05010202' where idGerencia = 24
update Gerencias set cve_puesto = '05010203' where idGerencia = 25

update Gerencias set cve_puesto = '05020101' where idGerencia = 26

update Gerencias set cve_puesto = '05020301' where idGerencia = 27

update Gerencias set cve_puesto = '05030101' where idGerencia = 28
update Gerencias set cve_puesto = '05030102' where idGerencia = 29
update Gerencias set cve_puesto = '05030103' where idGerencia = 30

update Gerencias set cve_puesto = '05030201' where idGerencia = 31

update Gerencias set cve_puesto = '05030301' where idGerencia = 32
update Gerencias set cve_puesto = '05030302' where idGerencia = 33
update Gerencias set cve_puesto = '05030303' where idGerencia = 34


update Subdireccion set cve_puesto = '06010100' where idSubdireccion = 29
update Subdireccion set cve_puesto = '06010200' where idSubdireccion = 30

update Subdireccion set cve_puesto = '06020100' where idSubdireccion = 31
update Subdireccion set cve_puesto = '06020200' where idSubdireccion = 32

update Gerencias set cve_puesto = '06010101' where idGerencia = 35
update Gerencias set cve_puesto = '06010102' where idGerencia = 36

update Gerencias set cve_puesto = '06010201' where idGerencia = 37

update Gerencias set cve_puesto = '06020101' where idGerencia = 38
update Gerencias set cve_puesto = '06020102' where idGerencia = 39
update Gerencias set cve_puesto = '06020103' where idGerencia = 40

update Gerencias set cve_puesto = '06020201' where idGerencia = 41
update Gerencias set cve_puesto = '06020202' where idGerencia = 42

update Subdireccion set cve_puesto = '07010100' where idSubdireccion = 33
update Subdireccion set cve_puesto = '07010200' where idSubdireccion = 34

update Subdireccion set cve_puesto = '07020100' where idSubdireccion = 35
update Subdireccion set cve_puesto = '07020200' where idSubdireccion = 36

update Gerencias set cve_puesto = '07010101' where idGerencia = 43
update Gerencias set cve_puesto = '07010201' where idGerencia = 44
update Gerencias set cve_puesto = '07020101' where idGerencia = 45
update Gerencias set cve_puesto = '07020201' where idGerencia = 46

update Subdireccion set cve_puesto = '08010100' where idSubdireccion = 37

update Subdireccion set cve_puesto = '08020100' where idSubdireccion = 39
update Subdireccion set cve_puesto = '08010100' where idSubdireccion = 38

update Subdireccion set cve_puesto = '08030100' where idSubdireccion = 41
update Subdireccion set cve_puesto = '08030200' where idSubdireccion = 40

update Gerencias set cve_puesto = '08010101' where idGerencia = 47
update Gerencias set cve_puesto = '08010102' where idGerencia = 48
update Gerencias set cve_puesto = '08010103' where idGerencia = 49

update Gerencias set cve_puesto = '08020101' where idGerencia = 50
update Gerencias set cve_puesto = '08020102' where idGerencia = 51

update Gerencias set cve_puesto = '08030101' where idGerencia = 52
update Gerencias set cve_puesto = '08030102' where idGerencia = 53
update Gerencias set cve_puesto = '08030103' where idGerencia = 54

update Subdireccion set cve_puesto = '09010100' where idSubdireccion = 42
update Subdireccion set cve_puesto = '09010200' where idSubdireccion = 43

update Subdireccion set cve_puesto = '10010100' where idSubdireccion = 44

update Subdireccion set cve_puesto = '10030100' where idSubdireccion = 45
update Subdireccion set cve_puesto = '10030200' where idSubdireccion = 46

update Subdireccion set cve_puesto = '11010100' where idSubdireccion = 47
update Subdireccion set cve_puesto = '11010200' where idSubdireccion = 48

update Subdireccion set cve_puesto = '11020100' where idSubdireccion = 49
update Subdireccion set cve_puesto = '11020200' where idSubdireccion = 50
update Subdireccion set cve_puesto = '11020300' where idSubdireccion = 51

update Subdireccion set cve_puesto = '12010100' where idSubdireccion = 52
update Subdireccion set cve_puesto = '12010200' where idSubdireccion = 53
update Subdireccion set cve_puesto = '12020100' where idSubdireccion = 54
update Subdireccion set cve_puesto = '12020200' where idSubdireccion = 55

insert into Direcciones values(131,13,'Dirección de Oraganización de Crédito y Garantías','DOCG','13010000');
insert into Direcciones values(132,13,'Subdirección de Mesa de Contol y Guardavalores',   'SMCG','13020000');
insert into Direcciones values(133,13,'Dirección de Seguimiento y Recuperación',          'DSR', '13030000');

insert into subdireccion values(56,'Subdirección de Evaluación de Crédito y Garantías', 'SECG',131,'13010100');
insert into subdireccion values(57,'Gerencia de Mesa de Control',                       'GMC', 132,'13020100');
insert into subdireccion values(58,'Gerencia de Guardavalores',                         'GMC', 132,'13020200');
insert into subdireccion values(59,'Subdirección de Seguimiento de Crédito y Garantías','SSCG',133,'13030100');
insert into subdireccion values(60,'Subdirección de Recuperación',                      'SR',  133,'13030200');

update Gerencias set idSubdireccion = 56, nomGerencia = 'Gerencia de Crédito', abrevGerencia = 'GC', cve_puesto = '13010101' where idGerencia = 55;
insert into gerencias values(56,59,'Gerencia de Monitoreo de Crédito y Garantías','GMCG','13030101')
insert into gerencias values(57,60,'Gerencia de Recuperación',                    'GMCG','13030201')

select * from DireccionAdjunta
select * from Direcciones  where iddireccionAdjunta = 13
select * from Subdireccion where idDireccion    between 131 and 133
select * from Gerencias    where idSubdireccion between 42  and 43

--alter table bit_040320 add id_status  int
--alter table bit_040320 add id_as      int
--alter table bit_040320 add id_aa      int
--alter table bit_040320 add id_porg    int
--alter table bit_040320 add id_subporg int
--alter table bit_040320 add id_ts      int

--delete 
--select count(*) from bit_040320 where Fec_sol is null
select distinct(estatus) from bit_040320
select * from statusot
update bit_040320 set id_status = 4 where estatus = 'ABIERTO'
update bit_040320 set id_status = 5 where estatus = 'TERMINADO'

select * from bit_040320 
select * from bit_040320 where id_status is null
select noot from bit_040320 where noot not in (select idot from ots) --355

select distinct(Area_Solicitante) from bit_040320 
select * from AreaSolicitante
update bit_040320 set id_as =  1 where Area_Solicitante = 'Banca Social'
update bit_040320 set id_as =  2 where Area_Solicitante = 'Bides'
update bit_040320 set id_as =  7 where Area_Solicitante = 'Dirección de Desarrollo y Mantenimiento de Sistemas'
update bit_040320 set id_as = 15 where Area_Solicitante = 'Gerencia Compensación y Liquidación'
update bit_040320 set id_as = 15 where Area_Solicitante = 'Gerencia de Compensación y Liquidación'
update bit_040320 set id_as = 16 where Area_Solicitante = 'Gerencia de Control Operacional y Seguridad de la Información'
update bit_040320 set id_as = 19 where Area_Solicitante = 'Negocios y Corresponsales'
update bit_040320 set id_as = 21 where Area_Solicitante = 'Operación Tradicional'
update bit_040320 set id_as = 22 where Area_Solicitante = 'QA'
update bit_040320 set id_as = 25 where Area_Solicitante = 'subdireccion de Mantenimiento de Software'

select * from bit_040320 where Area_Solicitante is null --------------------------------------------------------- 0

select distinct(ASIGNADA_A)       from bit_040320 
select * from AreaAsignacion

update bit_040320 set id_aa =  2 where ASIGNADA_A = 'GI'
update bit_040320 set id_aa =  1 where ASIGNADA_A = 'INFOTEC'
update bit_040320 set id_aa = 14 where ASIGNADA_A = 'ISRAEL G'
update bit_040320 set id_aa =  5 where ASIGNADA_A = 'One Project'

select * from bit_040320 where ASIGNADA_A is null     --------------------------------------------------------- 19

select distinct(Programa) from bit_040320 
select * from cat_Programa

update bit_040320 set id_programa =   1 where Programa = 'ADULTOS MAYORES'
update bit_040320 set id_programa =   2 where Programa = 'AMEXCID'
update bit_040320 set id_programa =   3 where Programa = 'BECAS BENITO JUAREZ'
update bit_040320 set id_programa =   5 where Programa = 'CONAVI'
update bit_040320 set id_programa =  11 where Programa = 'JEFAS DE FAMILIA'
update bit_040320 set id_programa =  12 where Programa = 'OTROS SERVICIOS'
update bit_040320 set id_programa =  17 where Programa = 'SEDATU-FONDEN'
update bit_040320 set id_programa =  19 where Programa = 'SEMBRANDO VIDA'

select * from bit_040320 where Programa is null       --------------------------------------------------------- 29

select distinct(Subprograma) from bit_040320          
select * from cat_subPrograma

update bit_040320 set id_subporg =  1 where Subprograma = 'ABONO A CUENTA'
update bit_040320 set id_subporg =  2 where Subprograma = 'BAJA DE RETENCIÓN'
update bit_040320 set id_subporg =  2 where Subprograma = 'BAJA DE RETENCION/DOMICILIACION'
update bit_040320 set id_subporg =  5 where Subprograma = 'BECAS EDUC. BASICA'
update bit_040320 set id_subporg =  5 where Subprograma = 'BECAS EDUC. BASICA CANAL ABIERTO'
update bit_040320 set id_subporg =  7 where Subprograma = 'BECAS JEF'
update bit_040320 set id_subporg =  8 where Subprograma = 'CANAL ABIERTO'
update bit_040320 set id_subporg =  9 where Subprograma = 'CANAL CERRADO'
update bit_040320 set id_subporg = 12 where Subprograma = 'DOMICILIACIÓN'
update bit_040320 set id_subporg = 16 where Subprograma = 'OTROS'

select * from bit_040320 where Subprograma is null    --------------------------------------------------------- 36

select distinct(Tipo_Servicio)    from bit_040320 where id_ts is null
select * from cat_TipoServicio

update bit_040320 set id_ts =  1 where Tipo_Servicio = 'AGREGAR TABLAS'
update bit_040320 set id_ts =  4 where Tipo_Servicio = 'APERTURA ADICIONAL VALES DESPENSA'
update bit_040320 set id_ts =  5 where Tipo_Servicio = 'APERTURA TITULAR VALES DESPENSA'
update bit_040320 set id_ts =  6 where Tipo_Servicio = 'APLICACIÓN RETIROS'
update bit_040320 set id_ts =  8 where Tipo_Servicio = 'Baja de Retención , Aplicación cargos y Alta de Retención'
update bit_040320 set id_ts =  8 where Tipo_Servicio = 'BAJA RETENCIÓN'
update bit_040320 set id_ts =  9 where Tipo_Servicio = 'BLOQUEO'
update bit_040320 set id_ts = 12 where Tipo_Servicio = 'CAMBIO ESTATUS'
update bit_040320 set id_ts = 13 where Tipo_Servicio = 'CAMBIO TARIFA'
update bit_040320 set id_ts = 10 where Tipo_Servicio = 'CAMBIOS DE ADSCRIPCIÓN'
update bit_040320 set id_ts = 18 where Tipo_Servicio = 'DESARROLLO'
update bit_040320 set id_ts = 19 where Tipo_Servicio = 'DESBLOQUEO'
update bit_040320 set id_ts = 21 where Tipo_Servicio = 'Devolución de Cuota e IVA de Administración'
update bit_040320 set id_ts = 21 where Tipo_Servicio = 'DEVOLUCIONES'
update bit_040320 set id_ts = 22 where Tipo_Servicio = 'DISPERSIÓN'
update bit_040320 set id_ts = 25 where Tipo_Servicio = 'GENERACION REPORTE'
update bit_040320 set id_ts = 27 where Tipo_Servicio = 'MANTENIMIENTO NOMBRES'
update bit_040320 set id_ts = 30 where Tipo_Servicio = 'REASGINACIÓN TARJETAS'
update bit_040320 set id_ts = 32 where Tipo_Servicio = 'REINTEGRO'
update bit_040320 set id_ts = 35 where Tipo_Servicio = 'SOLICITUD DE MEDIOS'
update bit_040320 set id_ts = 36 where Tipo_Servicio = 'VINCULACIÓN TARJETAS'
update bit_040320 set id_ts = 21 where Tipo_Servicio = 'Cobro de cuota e IVA de administración'
update bit_040320 set id_ts = 38 where Tipo_Servicio = 'ALTA EMISOR'
update bit_040320 set id_ts = 39 where Tipo_Servicio = 'Aplicación de cobranza REFIN'
update bit_040320 set id_ts = 37 where Tipo_Servicio = 'CAMBIO DE NIVEL'
update bit_040320 set id_ts = 40 where Tipo_Servicio = 'Crédito Revolvente'

insert into cat_TipoServicio values(37,'CAMBIO DE NIVEL')
insert into cat_TipoServicio values(38,'ALTA EMISOR')
insert into cat_TipoServicio values(39,'Aplicación de cobranza REFIN')
insert into cat_TipoServicio values(40,'Crédito Revolvente')

select * from bit_040320 where tipo_servicio is null   --------------------------------------------------------- 33

*/


SELECT [noot]           
       /*
      ,[Fec_sol]
      ,[fec_rec_sol]
      ,[hor_rec_sol]
      ,[Descripcion]
      
      ,[idPersona]
      ,[Solicitante]
      */
      ,[id_as]
      ,[Area_Solicitante]

      ,[id_aa]
      ,[ASIGNADA_A]
      /*
      ,[Fec_envio]

      ,[id_status]
      ,[ESTATUS]

      ,[Tiem_atn]
      ,[Urgencia]
      ,[Complejidad] 
      ,[Fec_Estim_atn]
      ,[Fec_Entrega]
      ,[En_Tiempo]
      ,[TIEMPO_Atn]
      ,[OBSERVACIONES]
      */
      ,[id_porg]
      ,[Programa]

      ,[id_subporg]
      ,[Subprograma]

      ,[id_ts]
      ,[Tipo_Servicio]
      /*
      ,[Beneficiarios]
      ,[Monto_Orden]
      ,[Aplicados]
      ,[Monto_Dispersado]
      ,[Rechazos]
      ,[Monto_Rechazado]
      */
FROM [ctrlOts].[dbo].[bit_040320]

