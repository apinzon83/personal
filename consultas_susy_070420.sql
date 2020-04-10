/*
alter table bit_060420 add id_Persona int;
alter table bit_060420 add id_status  int
alter table bit_060420 add id_as      int
alter table bit_060420 add id_aa      int
alter table bit_060420 add id_porg    int
alter table bit_060420 add id_subporg int
alter table bit_060420 add id_ts      int

--select count(*) from bit_060420 where Fec_sol is null
select distinct(estatus) from bit_060420
select * from statusot
update bit_060420 set id_status = 4 where estatus = 'ABIERTO'
update bit_060420 set id_status = 5 where estatus = 'TERMINADO'

select * from bit_060420 
select * from bit_060420 where id_status is null
select noot from bit_060420 where noot not in (select idot from ots) --355

select distinct(Area_Sol) from bit_060420 where id_as is null
select * from AreaSolicitante
update bit_060420 set id_as =  1 where Area_Sol = 'Banca Social'
update bit_060420 set id_as =  2 where Area_Sol = 'Bides'
update bit_060420 set id_as =  6 where Area_Sol = 'Contraloría Interna'
update bit_060420 set id_as =  7 where Area_Sol = 'Dirección de Desarrollo y Mantenimiento de Sistemas'
update bit_060420 set id_as = 15 where Area_Sol = 'Gerencia Compensación y Liquidación'
update bit_060420 set id_as = 15 where Area_Sol = 'Gerencia de Compensación y Liquidación'
update bit_060420 set id_as = 16 where Area_Sol = 'Gerencia de Control Operacional y Seguridad de la Información'
update bit_060420 set id_as = 17 where Area_Sol = 'INCLUSION FINANCIERA'
update bit_060420 set id_as = 19 where Area_Sol = 'Negocios y Corresponsales'
update bit_060420 set id_as = 21 where Area_Sol = 'Operación Tradicional'
update bit_060420 set id_as = 22 where Area_Sol = 'QA'
update bit_060420 set id_as = 25 where Area_Sol = 'subdireccion de Mantenimiento de Software'
update bit_060420 set id_as = 27 where Area_Sol = 'Subdirector de Control de la Operación'
update bit_060420 set id_as = 28 where Area_Sol = 'Subdirección de Administración de Infraestructura'
update bit_060420 set id_as = 29 where Area_Sol = 'Subdirección Fiscal y Control de Facturación'

--insert into AreaSolicitante values(28, 'Subdirección de Administración de Infraestructura');
--insert into AreaSolicitante values(29, 'Subdirección Fiscal y Control de Facturación');

select * from bit_060420 where Area_Sol is null --------------------------------------------------------- 0

select distinct(ASIGNADA_A) from bit_060420 where id_aa is null
select * from AreaAsignacion

update bit_060420 set id_aa =  2 where ASIGNADA_A = 'GI'
update bit_060420 set id_aa =  1 where ASIGNADA_A = 'INFOTEC'
update bit_060420 set id_aa =  5 where ASIGNADA_A = 'One Project'
update bit_060420 set id_aa =  9 where ASIGNADA_A = 'DDMS'
update bit_060420 set id_aa = 14 where ASIGNADA_A = 'ISRAEL G'

select * from bit_060420 where ASIGNADA_A is null     --------------------------------------------------------- 19

select distinct(Programa) from bit_060420 where id_porg is null
select * from cat_Programa

update bit_060420 set id_porg =   1 where Programa = 'ADULTOS MAYORES'
update bit_060420 set id_porg =   2 where Programa = 'AMEXCID'
update bit_060420 set id_porg =   3 where Programa = 'BECAS BENITO JUAREZ'
update bit_060420 set id_porg =   5 where Programa = 'CONAVI'
update bit_060420 set id_porg =  11 where Programa = 'JEFAS DE FAMILIA'
update bit_060420 set id_porg =  12 where Programa = 'OTROS SERVICIOS'
update bit_060420 set id_porg =  17 where Programa = 'SEDATU-FONDEN'
update bit_060420 set id_porg =  19 where Programa = 'SEMBRANDO VIDA'
update bit_060420 set id_porg =  20 where Programa = 'BIDES'

insert into cat_programa values(20,'BIDES')

select * from bit_060420 where Programa is null       --------------------------------------------------------- 29

select distinct(Subprograma) from bit_060420 where Subprograma is null     
select * from cat_subPrograma

update bit_060420 set id_subporg =  1 where Subprograma = 'ABONO A CUENTA'
update bit_060420 set id_subporg =  2 where Subprograma = 'BAJA DE RETENCIÓN'
update bit_060420 set id_subporg =  2 where Subprograma = 'BAJA DE RETENCION/DOMICILIACION'
update bit_060420 set id_subporg =  5 where Subprograma = 'BECAS EDUC. BASICA'
update bit_060420 set id_subporg =  5 where Subprograma = 'BECAS EDUC. BASICA CANAL ABIERTO'
update bit_060420 set id_subporg =  7 where Subprograma = 'BECAS JEF'
update bit_060420 set id_subporg =  8 where Subprograma = 'CANAL ABIERTO'
update bit_060420 set id_subporg =  9 where Subprograma = 'CANAL CERRADO'
update bit_060420 set id_subporg = 12 where Subprograma = 'DOMICILIACIÓN'
update bit_060420 set id_subporg = 16 where Subprograma = 'OTROS'

select * from bit_060420 where Subprograma is null    --------------------------------------------------------- 36

select distinct([tipo_ serv]) from bit_060420 where id_ts is null
select * from cat_TipoServicio

update bit_060420 set id_ts =  1 where [tipo_ serv] = 'AGREGAR TABLAS'
update bit_060420 set id_ts =  4 where [tipo_ serv] = 'APERTURA ADICIONAL VALES DESPENSA'
update bit_060420 set id_ts =  5 where [tipo_ serv] = 'APERTURA TITULAR VALES DESPENSA'
update bit_060420 set id_ts =  6 where [tipo_ serv] = 'APLICACIÓN RETIROS'
update bit_060420 set id_ts =  8 where [tipo_ serv] = 'Baja de Retención , Aplicación cargos y Alta de Retención'
update bit_060420 set id_ts =  8 where [tipo_ serv] = 'BAJA RETENCIÓN'
update bit_060420 set id_ts =  9 where [tipo_ serv] = 'BLOQUEO'
update bit_060420 set id_ts = 12 where [tipo_ serv] = 'CAMBIO ESTATUS'
update bit_060420 set id_ts = 13 where [tipo_ serv] = 'CAMBIO TARIFA'
update bit_060420 set id_ts = 10 where [tipo_ serv] = 'CAMBIOS DE ADSCRIPCIÓN'
update bit_060420 set id_ts = 18 where [tipo_ serv] = 'DESARROLLO'
update bit_060420 set id_ts = 19 where [tipo_ serv] = 'DESBLOQUEO'
update bit_060420 set id_ts = 21 where [tipo_ serv] = 'Devolución de Cuota e IVA de Administración'
update bit_060420 set id_ts = 21 where [tipo_ serv] = 'DEVOLUCIONES'
update bit_060420 set id_ts = 22 where [tipo_ serv] = 'DISPERSIÓN'
update bit_060420 set id_ts = 25 where [tipo_ serv] = 'GENERACION REPORTE'
update bit_060420 set id_ts = 27 where [tipo_ serv] = 'MANTENIMIENTO NOMBRES'
update bit_060420 set id_ts = 30 where [tipo_ serv] = 'REASGINACIÓN TARJETAS'
update bit_060420 set id_ts = 32 where [tipo_ serv] = 'REINTEGRO'
update bit_060420 set id_ts = 35 where [tipo_ serv] = 'SOLICITUD DE MEDIOS'
update bit_060420 set id_ts = 36 where [tipo_ serv] = 'VINCULACIÓN TARJETAS'
update bit_060420 set id_ts = 21 where [tipo_ serv] = 'Cobro de cuota e IVA de administración'
update bit_060420 set id_ts = 38 where [tipo_ serv] = 'ALTA EMISOR'
update bit_060420 set id_ts = 39 where [tipo_ serv] = 'Aplicación de cobranza REFIN'
update bit_060420 set id_ts = 37 where [tipo_ serv] = 'CAMBIO DE NIVEL'
update bit_060420 set id_ts = 40 where [tipo_ serv] = 'Crédito Revolvente'
update bit_060420 set id_ts = 41 where [tipo_ serv] = 'ACTIVIDADES RECURSOS INFOTEC'
update bit_060420 set id_ts =  2 where [tipo_ serv] = 'ALTA RETENCIÓN'
update bit_060420 set id_ts = 14 where [tipo_ serv] = 'CANCELACIÓN CUENTAS'
update bit_060420 set id_ts = 42 where [tipo_ serv] = 'DISPERSIÓN PAUSADA'
update bit_060420 set id_ts = 43 where [tipo_ serv] = 'DISPERSIÓN Y DOMICILIACION'
update bit_060420 set id_ts = 44 where [tipo_ serv] = 'DOMICILIACION'
update bit_060420 set id_ts = 45 where [tipo_ serv] = 'Gestor de Incidencias'
update bit_060420 set id_ts = 46 where [tipo_ serv] = 'MODIFICACIONES SISTEMA BIDES'
update bit_060420 set id_ts = 47 where [tipo_ serv] = 'Transmisión de Archivo DIM'

--insert into cat_TipoServicio values(37,'CAMBIO DE NIVEL')
--insert into cat_TipoServicio values(38,'ALTA EMISOR')
--insert into cat_TipoServicio values(39,'Aplicación de cobranza REFIN')
--insert into cat_TipoServicio values(40,'Crédito Revolvente')
--insert into cat_TipoServicio values(41,'ACTIVIDADES RECURSOS INFOTEC')
--insert into cat_TipoServicio values(42,'DISPERSIÓN PAUSADA')
--insert into cat_TipoServicio values(43,'DISPERSIÓN Y DOMICILIACION')
--insert into cat_TipoServicio values(44,'DOMICILIACION')
--insert into cat_TipoServicio values(45,'Gestor de Incidencias')
--insert into cat_TipoServicio values(46,'MODIFICACIONES SISTEMA BIDES')
--insert into cat_TipoServicio values(47,'Transmisión de Archivo DIM')


select * from bit_060420 where [tipo_ serv] is null   --------------------------------------------------------- 33

select distinct(solicitante) from bit_060420 where [id_persona] is null   

select * from personas where nompersona like '%Roberto%'

Update bit_060420 set id_persona = 120 Where solicitante = 'Alberto Fuentes Mendoza'
Update bit_060420 set id_persona = 121 Where solicitante = 'Alejandro Rámirez Posadas'
Update bit_060420 set id_persona = 122 Where solicitante = 'Annylu Segura Hernández'
Update bit_060420 set id_persona = 125 Where solicitante = 'Carlos Alberto Hidalgo Martinez'
Update bit_060420 set id_persona = 130 Where solicitante = 'Danae Aguirre Mayorga '
Update bit_060420 set id_persona = 110 Where solicitante = 'David Carrillo Lara'
Update bit_060420 set id_persona = 131 Where solicitante = 'Denisse Alejandra Domínguez García'
Update bit_060420 set id_persona = 134 Where solicitante = 'Eduardo López Torres'
Update bit_060420 set id_persona = 135 Where solicitante = 'Edwin Mihail Torres Martínez '
Update bit_060420 set id_persona = 141 Where solicitante = 'Israel Carrillo Plata '
Update bit_060420 set id_persona = 142 Where solicitante in ('Israel Garduño Islas', 'Israel Garduño Islas')
Update bit_060420 set id_persona = 143 Where solicitante = 'Israel Valdez Velázquez '
Update bit_060420 set id_persona = 147 Where solicitante = 'Jorge Gonzalez Acevedo'
Update bit_060420 set id_persona = 149 Where solicitante = 'José Antonio Cortés Reyes'
Update bit_060420 set id_persona = 151 Where solicitante = 'Juan René Garduño Moya'
Update bit_060420 set id_persona = 154 Where solicitante = 'Marco Antonio Hernandez Molina'
Update bit_060420 set id_persona = 158 Where solicitante = 'Miguel Angel Espinosa Moctezuma'
Update bit_060420 set id_persona = 163 Where solicitante = 'Oscar Barrera García'
Update bit_060420 set id_persona = 165 Where solicitante = 'Pedro Deaquino Vargas'
Update bit_060420 set id_persona = 101 Where solicitante = 'ricardo espinosa ramos'
Update bit_060420 set id_persona = 167 Where solicitante = 'Rodolfo Saavedra Fuentes'
Update bit_060420 set id_persona = 170 Where solicitante = 'Servando García Lugo'
Update bit_060420 set id_persona = 171 Where solicitante = 'Victor Trejo Rosales'
Update bit_060420 set id_persona = 175 Where solicitante = 'Abraham Pelcastre Soto'
Update bit_060420 set id_persona = 176 Where solicitante = 'Carolina Hernández Bonilla '
Update bit_060420 set id_persona = 177 Where solicitante = 'Christian Arturo Macias Gonzalez '
Update bit_060420 set id_persona = 178 Where solicitante = 'Edgardo Salomon López López'
Update bit_060420 set id_persona = 179 Where solicitante = 'Fernando Arevalo Piña'
Update bit_060420 set id_persona = 180 Where solicitante = 'Hugo Hérnandez Alanis'
Update bit_060420 set id_persona = 181 Where solicitante = 'Ignacio SanchezLara Estrada'
Update bit_060420 set id_persona = 182 Where solicitante = 'Ignacio Sandoval Sánchez'
Update bit_060420 set id_persona = 183 Where solicitante = 'Monica Cruz Jimenez'

Update bit_060420 set id_persona = 132 Where solicitante = 'Edith Martínez Minian'
Update bit_060420 set id_persona = 104 Where solicitante = 'Elia Alejandra Castro Vargas'
Update bit_060420 set id_persona = 139 Where solicitante = 'Irais Gómez Pérez'
Update bit_060420 set id_persona = 145 Where solicitante = 'Jonathan Ortiz Rivera'
Update bit_060420 set id_persona = 152 Where solicitante = 'Lucila Viridiana Vázquez Velasco'
Update bit_060420 set id_persona = 99 Where solicitante = 'Luis José Manuel Montaño Sánchez'
Update bit_060420 set id_persona = 160 Where solicitante = 'Monica Iliana García Hernández'
Update bit_060420 set id_persona = 105 Where solicitante = 'Ramón Morales Cruz'
Update bit_060420 set id_persona = 112 Where solicitante = 'Roberto Cristian Archer Aguirre'

--Update bit_060420 set id_persona =  Where solicitante = 'Edgar Leonardo Vargas Becerril'
--Update bit_060420 set id_persona =  Where solicitante = 'Elia Verónica García Jiménez'
--Update bit_060420 set id_persona =  Where solicitante = 'Hugo Feliciano Ramos Bahena'
--Update bit_060420 set id_persona =  Where solicitante in ('Jorge Alberto Borbon Sainz','Jorge Borbon ')
--Update bit_060420 set id_persona =  Where solicitante = 'Reporte Febrero'
--Update bit_060420 set id_persona =  Where solicitante = 'RICARDO'

insert into personas values(184,'Edgar Leonardo' ,'Vargas','Becerril',null,null,1)
insert into personas values(185,'Elia Verónica'  ,'García','Jiménez' ,null,null,1)
insert into personas values(186,'Hugo Feliciano' ,'Ramos' ,'Bahena'	 ,null,null,1)
insert into personas values(187,'Jorge Alberto'  ,'Borbon','Sainz'	 ,null,null,1)

select top 10 * from personas 
select top 10 * from bit_060420 Where solicitante = 'Reporte Febrero'
--delete from bit_060420 where noot = 'SMS-0369-20'
*/


SELECT top 5 
	   [noot]
      ,[Fec_sol]
      ,[fec_recep]
      ,[Fec_envio]
      ,[Fec_Entrega]
      ,[Fec_Est_atn]

      ,[Descripcion]
      
      ,[id_Persona]
      --,[Solicitante]
      
      ,[id_as]
      --,[Area_Sol]

      ,[id_aa]
      --,[ASIGNADA_A]
      

      ,[id_status]
      --,[ESTATUS]
	  
	  /*
      ,[Tiem_atn]
      ,[Urgencia]
      ,[Complejidad] 
      ,[En_Tiempo]
      ,[TIEMPO_Atn]
      */

      ,[OBSERVACIONES]
      
	  ,[id_porg]
      --,[Programa]

      ,[id_subporg]
      --,[Subprograma]

      ,[id_ts]
      --,[[tipo_ serv]]
      
      ,[Beneficiarios]
      ,[Monto_Orden]
      ,[Aplicados]
      ,[Monto_Dispersado]
      ,[Rechazos]
      ,[Monto_Rechazado]
	  
--select top 5 * 
FROM [ctrlOts].[dbo].[bit_060420] where noot not in (select idot from ots)

select top 5 *  from ots

--insert into ots 
--select noot, SUBSTRING(noot,5,4) cont, fec_sol, descripcion, id_as, id_persona, id_aa, fec_envio,id_status, 5 id_urg, 5 id_comp, 0 tiemp_atn, fec_est_atn, fec_entrega, null en_timepo, OBSERVACIONES,null observ_cancel, null observ_atn, id_porg, id_subporg, id_ts, beneficiarios, monto_orden, rechazos, monto_rechazado from bit_060420 where noot not in (select idot from ots)
--and FEC_SOL is null

--and Fec_envIo is null
--select id_as from bit_060420 where id_as not in (select idas from AreaSolicitante)

--update bit_060420 set id_aa = 17 where id_aa is null 
--update bit_060420 set id_as = 30 where id_as is null 
--update bit_060420 set id_persona = 999 where id_persona is null 
--update bit_060420 set fec_envio = '19000101' where fec_envio is null 
--update bit_060420 set fec_envio = '19000101' where fec_envio is null 
--update bit_060420 set DESCRIPCION = '' where DESCRIPCION is null 
--select * --delete 
--from bit_060420 where noot = 'SMS-0758-20'
--select  * from AreaAsignacion
--select  * from AreaSolicitante
select * from personas
--insert into AreaSolicitante values(30,'Pendiente')
--Msg 547, Level 16, State 0, Line 260
--The INSERT statement conflicted with the FOREIGN KEY constraint "
--FK__OTs__idAreaSol__2E1BDC42
--". The conflict occurred in database "ctrlOts", table "dbo.Direcciones", column 'idDireccion'.










