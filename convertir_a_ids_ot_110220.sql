/*

----------------- modificamos estructura --------------

alter table dbo.ots_140120 add idAreaSol int;
alter table dbo.ots_140120 add idSolicitante int;
alter table dbo.ots_140120 add idAreaAsig int;
alter table dbo.ots_140120 add idEstatus int;
alter table dbo.ots_140120 add idUrgencia int;
alter table dbo.ots_140120 add idComplejidad int;
alter table dbo.ots_140120 add enTiempo bit;
alter table dbo.ots_140120 add new_tea datetime;
alter table dbo.ots_140120 add new_ta int;
alter table dbo.ots_140120 add idPrograma int;
alter table dbo.ots_140120 add idSubPrograma int;
alter table dbo.ots_140120 add idTipoServicio int;

select top 10 * from ots_140120
select distinct(solicitante) from ots_140120 where idsolicitante is null order by Solicitante

select distinct(solicitante) from dbo.ots_140120 where idSolicitante is null order by solicitante;
select * from dbo.ots_140120 where solicitante is null;


update ctrlOts.dbo.ots_140120 set idSolicitante = 120 where SOLICITANTE = 'Alberto Fuentes Mendoza';
update ctrlOts.dbo.ots_140120 set idSolicitante = 121 where SOLICITANTE = 'Alejandro Rámirez Posadas';
update ctrlOts.dbo.ots_140120 set idSolicitante = 122 where SOLICITANTE = 'Annylu Segura Hernández';
update ctrlOts.dbo.ots_140120 set idSolicitante = 123 where SOLICITANTE = 'Arturo Figueroa Chavez';
update ctrlOts.dbo.ots_140120 set idSolicitante =  72 where SOLICITANTE = 'Arturo Ramos Elorduy';
update ctrlOts.dbo.ots_140120 set idSolicitante = 124 where SOLICITANTE = 'Carlos Alberto Aldana Gonzalez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 125 where SOLICITANTE = 'Carlos Alberto Hidalgo Martinez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 126 where SOLICITANTE = 'Carlos Cano Hernández';
update ctrlOts.dbo.ots_140120 set idSolicitante = 127 where SOLICITANTE = 'Carlos Torres Jiménez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 128 where SOLICITANTE = 'César López Muñoz';
update ctrlOts.dbo.ots_140120 set idSolicitante = 129 where SOLICITANTE = 'Claudia Avendaño García';
update ctrlOts.dbo.ots_140120 set idSolicitante = 130 where SOLICITANTE = 'Danae Aguirre Mayorga ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 131 where SOLICITANTE = 'Denisse Alejandra Domínguez García';
update ctrlOts.dbo.ots_140120 set idSolicitante = 132 where SOLICITANTE = 'Edith Martínez Minian';
update ctrlOts.dbo.ots_140120 set idSolicitante = 133 where SOLICITANTE = 'Eduardo Aguilar Azuela';
update ctrlOts.dbo.ots_140120 set idSolicitante = 134 where SOLICITANTE = 'Eduardo López Torres';
update ctrlOts.dbo.ots_140120 set idSolicitante = 135 where SOLICITANTE = 'Edwin Mihail Torres Martínez ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 136 where SOLICITANTE = 'Fabricio Joel Cortes Bejero ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 137 where SOLICITANTE = 'Gerardo Efraín Avila Gutiérrez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 138 where SOLICITANTE = 'Hugo Suárez Luna';
update ctrlOts.dbo.ots_140120 set idSolicitante = 139 where SOLICITANTE = 'Irais Gómez Pérez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 140 where SOLICITANTE in ('Ismael Luna López','Lic.Ismale Omar Luna Lopez');
update ctrlOts.dbo.ots_140120 set idSolicitante = 141 where SOLICITANTE = 'Israel Carrillo Plata ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 142 where SOLICITANTE = 'Israel Garduño Islas';
update ctrlOts.dbo.ots_140120 set idSolicitante = 143 where SOLICITANTE = 'Israel Valdez Velázquez ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 144 where SOLICITANTE = 'Jesus Ramón Sánchez Vázquez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 145 where SOLICITANTE = 'Jonathan Ortiz Rivera';
update ctrlOts.dbo.ots_140120 set idSolicitante = 146 where SOLICITANTE = 'Jorge Alberto Cabello Aguilar';
update ctrlOts.dbo.ots_140120 set idSolicitante = 147 where SOLICITANTE = 'Jorge Gonzalez Acevedo';
update ctrlOts.dbo.ots_140120 set idSolicitante = 148 where SOLICITANTE = 'Jorge Gonzalez Flores';
update ctrlOts.dbo.ots_140120 set idSolicitante = 149 where SOLICITANTE = 'José Antonio Cortés Reyes';
update ctrlOts.dbo.ots_140120 set idSolicitante = 150 where SOLICITANTE = 'José Antonio Pérez Cedillo';
update ctrlOts.dbo.ots_140120 set idSolicitante = 107 where SOLICITANTE = 'Juan Alfredo Buxade López';
update ctrlOts.dbo.ots_140120 set idSolicitante = 151 where SOLICITANTE = 'Juan René Garduño Moya';
update ctrlOts.dbo.ots_140120 set idSolicitante = 152 where SOLICITANTE = 'Lucila Viridiana Vázquez Velasco';
update ctrlOts.dbo.ots_140120 set idSolicitante =  63 where SOLICITANTE = 'Luis Angel Canseco Rodriguez';
update ctrlOts.dbo.ots_140120 set idSolicitante = 153 where SOLICITANTE = 'Ma. De los Angeles Pérez Fraga';
update ctrlOts.dbo.ots_140120 set idSolicitante = 153 where SOLICITANTE = 'Ma. De los Angeles Perez Fraga';
update ctrlOts.dbo.ots_140120 set idSolicitante = 154 where SOLICITANTE = 'Marco Antonio Hernandez Molina';
update ctrlOts.dbo.ots_140120 set idSolicitante = 155 where SOLICITANTE = 'Mario Alberto López Flores';
update ctrlOts.dbo.ots_140120 set idSolicitante = 156 where SOLICITANTE = 'Mary Ruth Monroy Cid del Prado';
update ctrlOts.dbo.ots_140120 set idSolicitante = 157 where SOLICITANTE = 'Miguel A. Lara Raíz';
update ctrlOts.dbo.ots_140120 set idSolicitante = 158 where SOLICITANTE = 'Miguel Angel Espinosa Moctezuma';
update ctrlOts.dbo.ots_140120 set idSolicitante = 159 where SOLICITANTE = 'Miguel Ángel Gómez Recillas';
update ctrlOts.dbo.ots_140120 set idSolicitante = 160 where SOLICITANTE = 'Monica Iliana García Hernández';
update ctrlOts.dbo.ots_140120 set idSolicitante = 106 where SOLICITANTE = 'Nahum Diaz Serrano';
update ctrlOts.dbo.ots_140120 set idSolicitante = 161 where SOLICITANTE = 'Norma Arely Manzano García';
update ctrlOts.dbo.ots_140120 set idSolicitante = 162 where SOLICITANTE = 'Omar López Mejia';
update ctrlOts.dbo.ots_140120 set idSolicitante = 163 where SOLICITANTE = 'Oscar Barrera García';
update ctrlOts.dbo.ots_140120 set idSolicitante = 164 where SOLICITANTE = 'Patricia Serrano Villa ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 165 where SOLICITANTE = 'Pedro Deaquino Vargas';
update ctrlOts.dbo.ots_140120 set idSolicitante = 101 where SOLICITANTE = 'Ricardo Espinosa Ramos';
update ctrlOts.dbo.ots_140120 set idSolicitante = 166 where SOLICITANTE = 'Rocio Elena Ávila Hernández ';
update ctrlOts.dbo.ots_140120 set idSolicitante = 167 where SOLICITANTE = 'Rodolfo Saavedra Fuentes';
update ctrlOts.dbo.ots_140120 set idSolicitante = 168 where SOLICITANTE = 'Ruben Bernal Cruz';
update ctrlOts.dbo.ots_140120 set idSolicitante = 169 where SOLICITANTE = 'Sandra Yareli Melo Cadena';
update ctrlOts.dbo.ots_140120 set idSolicitante = 170 where SOLICITANTE = 'Servando García Lugo';
update ctrlOts.dbo.ots_140120 set idSolicitante = 171 where SOLICITANTE = 'Victor Trejo Rosales';
update ctrlOts.dbo.ots_140120 set idSolicitante = 172 where SOLICITANTE = 'Yenessi Hernández Quiroga';
update ctrlOts.dbo.ots_140120 set idSolicitante = 173 where SOLICITANTE = 'Jonathan Bonilla Quintero';

select distinct(Area_Solicitante) from dbo.ots_140120 where idAreaSol is null order by Area_Solicitante;
select * from dbo.ots_140120 where area_solicitante is null;

update ctrlOts.dbo.ots_140120 set idAreaSol =  1 where area_solicitante = 'Banca Social'
update ctrlOts.dbo.ots_140120 set idAreaSol =  2 where area_solicitante = 'Bides'
update ctrlOts.dbo.ots_140120 set idAreaSol =  3 where area_solicitante = 'Cartera de Crédito'
update ctrlOts.dbo.ots_140120 set idAreaSol =  4 where area_solicitante = 'Compensación y Liquidación'
update ctrlOts.dbo.ots_140120 set idAreaSol =  5 where area_solicitante = 'Contabilidad'
update ctrlOts.dbo.ots_140120 set idAreaSol =  6 where area_solicitante = 'Contraloría Interna'
update ctrlOts.dbo.ots_140120 set idAreaSol =  7 where area_solicitante = 'Dirección de Desarrollo y Mantenimiento de Sistemas'
update ctrlOts.dbo.ots_140120 set idAreaSol =  8 where area_solicitante = 'Direccion de Sucursales'
update ctrlOts.dbo.ots_140120 set idAreaSol =  9 where area_solicitante = 'Director de seguimiento y recuperación DGA de Crédito y Garantías'
update ctrlOts.dbo.ots_140120 set idAreaSol = 10 where area_solicitante = 'Gerencia de desarrollo'
update ctrlOts.dbo.ots_140120 set idAreaSol = 11 where area_solicitante = 'Gerencia de Información'
update ctrlOts.dbo.ots_140120 set idAreaSol = 12 where area_solicitante = 'Gerencia de Remuneraciones y Prestaciones'
update ctrlOts.dbo.ots_140120 set idAreaSol = 13 where area_solicitante = 'Gerencia de Sucursales'
update ctrlOts.dbo.ots_140120 set idAreaSol = 14 where area_solicitante = 'Gerente de Banca Electrónica y Tarjetas'
update ctrlOts.dbo.ots_140120 set idAreaSol = 15 where area_solicitante = 'Gerente de Compensación y Liquidación'
update ctrlOts.dbo.ots_140120 set idAreaSol = 16 where area_solicitante = 'Gerente de Control Operacional y Seguridad de la Información'
update ctrlOts.dbo.ots_140120 set idAreaSol = 17 where area_solicitante = 'Inclusion Financiera'
update ctrlOts.dbo.ots_140120 set idAreaSol = 18 where area_solicitante = 'Medios de Pago'
update ctrlOts.dbo.ots_140120 set idAreaSol = 19 where area_solicitante = 'Negocios y Corresponsales'
update ctrlOts.dbo.ots_140120 set idAreaSol = 20 where area_solicitante = 'OIC'
update ctrlOts.dbo.ots_140120 set idAreaSol = 21 where area_solicitante = 'Operación Tradicional'
update ctrlOts.dbo.ots_140120 set idAreaSol = 22 where area_solicitante = 'QA'
update ctrlOts.dbo.ots_140120 set idAreaSol = 23 where area_solicitante = 'Subdirección de Control de la Producción'
update ctrlOts.dbo.ots_140120 set idAreaSol = 24 where area_solicitante = 'Subdirección de Desarrollo TI'
update ctrlOts.dbo.ots_140120 set idAreaSol = 25 where area_solicitante in ('subdireccion de Mantenimiento de Software', 'Subdirección de Mantenimiento de Software')
update ctrlOts.dbo.ots_140120 set idAreaSol = 26 where area_solicitante = 'Subdirección Técnico y Enlace de Vinculación Institucional'
update ctrlOts.dbo.ots_140120 set idAreaSol = 27 where area_solicitante = 'Subdirector de Control de la Operación'

select distinct(ASIGNADA_A) from dbo.ots_140120 where idAreaAsig is null order by ASIGNADA_A;
select * from dbo.ots_140120 where ASIGNADA_A is null;

update ctrlOts.dbo.ots_140120 set idAreaAsig =  1 where ASIGNADA_A ='INFOTEC';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  3 where ASIGNADA_A ='Soporte UANL';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  4 where ASIGNADA_A ='Appwhere';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  5 where ASIGNADA_A ='ONE PROJECT';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  6 where ASIGNADA_A ='Appwhere/INFOTEC';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  7 where ASIGNADA_A ='Appwhere/KIO';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  8 where ASIGNADA_A ='Bansefi';
update ctrlOts.dbo.ots_140120 set idAreaAsig =  9 where ASIGNADA_A ='DDMS-INTERNO';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 10 where ASIGNADA_A ='Gerencia de desarrollo';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 11 where ASIGNADA_A ='GI';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 12 where ASIGNADA_A ='GI (IRAIS)';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 13 where ASIGNADA_A ='GI (VIC)';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 14 where ASIGNADA_A ='ISRAEL GARDUÑO';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 15 where ASIGNADA_A ='KIO';
update ctrlOts.dbo.ots_140120 set idAreaAsig = 16 where ASIGNADA_A ='Subdirección de Mantenimiento de Software';

select distinct(ESTATUS) from dbo.ots_140120 where idEstatus is null order by ESTATUS;
select * from dbo.ots_140120 where ESTATUS is null;

update ctrlOts.dbo.ots_140120 set idEstatus = 5 where ESTATUS IN ('ATENDIDA','TERMINADO');
update ctrlOts.dbo.ots_140120 set idEstatus = 4 where ESTATUS in ('EN PROCESO','ABIERTO');
update ctrlOts.dbo.ots_140120 set idEstatus = 3 where ESTATUS = 'QA';
update ctrlOts.dbo.ots_140120 set idEstatus = 2 where ESTATUS = 'USUARIO';

select distinct(Urgencia) from dbo.ots_140120 where idUrgencia is null order by Urgencia;
select * from dbo.ots_140120 where Urgencia is null;

update ctrlOts.dbo.ots_140120 set idUrgencia = 3 where Urgencia = 'Alta'
update ctrlOts.dbo.ots_140120 set idUrgencia = 2 where Urgencia = 'Media'
update ctrlOts.dbo.ots_140120 set idUrgencia = 4 where Urgencia = 'Muy Alta'


select distinct(Complejidad) from dbo.ots_140120 where idComplejidad is null order by Complejidad;
select * from dbo.ots_140120 where Complejidad is null;


update ctrlOts.dbo.ots_140120 set idComplejidad = 1 where Complejidad = 'Baja'
update ctrlOts.dbo.ots_140120 set idComplejidad = 2 where Complejidad = 'Media'
update ctrlOts.dbo.ots_140120 set idComplejidad = 3 where Complejidad = 'Alta'
update ctrlOts.dbo.ots_140120 set idComplejidad = 4 where Complejidad = 'Muy Alta'


select distinct(en_Tiempo) from dbo.ots_140120 where enTiempo is null order by En_Tiempo;
select * from dbo.ots_140120 where En_Tiempo is null;

select	 top 10 * from dbo.ots_140120 

select	 --top 10 
		 NoOT
		,FECHA_ENVIO --cuando tu la envias a la fabrique
		--,Urgencia
		--,Complejidad
		--,Tiempo_Atencion
		,new_ta
		,Fecha_Estimada_atencion
		,new_tea
		,Fecha_Entrega
from dbo.ots_140120
where 
--Urgencia = 'Muy Alta' and Complejidad = 'Muy Alta'
--fecha_estimada_atencion is null and Urgencia is not null and Complejidad is not null
--Tiempo_Atencion = 'A determinar'
--Tiempo_Atencion = '#N/A'
--FECHA_ENVIO is null and
--new_ta is not null
--fecha_entrega is null and ESTATUS = 'atendida'
order by new_ta

select distinct(tiempo_atencion) from dbo.ots_140120



--update dbo.ots_140120 set new_ta = 18 where Urgencia = 'Media'	and Complejidad = 'Baja'
--update dbo.ots_140120 set new_ta = 32 where Urgencia = 'Media'	and Complejidad = 'Alta'
--update dbo.ots_140120 set new_ta = 12 where Urgencia = 'Alta'		and Complejidad = 'Baja'
--update dbo.ots_140120 set new_ta = 18 where Urgencia = 'Alta'		and Complejidad = 'Media'
--update dbo.ots_140120 set new_ta = 24 where Urgencia = 'Alta'		and Complejidad = 'Alta'
--update dbo.ots_140120 set new_ta =  8 where Urgencia = 'Muy Alta' and Complejidad = 'Baja'
--update dbo.ots_140120 set new_ta = 12 where Urgencia = 'Muy Alta' and Complejidad = 'Media'
--update dbo.ots_140120 set new_ta = 18 where Urgencia = 'Muy Alta' and Complejidad = 'Alta'
--update dbo.ots_140120 set new_ta =  0 where tiempo_atencion = 'A determinar'


select count(*)    en_tiempo from dbo.ots_140120 where Fecha_Entrega <= Fecha_Estimada_atencion
select count(*)    en_tiempo from dbo.ots_140120 where En_Tiempo	  = 'EN TIEMPO'
select count(*) fuera_tiempo from dbo.ots_140120 where Fecha_Entrega  > Fecha_Estimada_atencion
select count(*) fuera_tiempo from dbo.ots_140120 where En_Tiempo      = 'FUERA DE TIEMPO'


--select distinct(programa)     from ots_140120 order by programa;
--select distinct(subprograma)  from ots_140120 order by subprograma;

--select noot, descripcion, programa, subprograma, tipo_servicio from ots_140120 where tipo_servicio in('PROYECTO','Desarrollo Generación e Impresión Contratos para entrega de Tarjetas','Desarrollo Sistematización de OTS')
--select distinct(tipo_Servicio) from ots_140120 order by tipo_Servicio;

--update ots_140120 set tipo_Servicio = 'DESARROLLO' where tipo_Servicio IN ('Desarrollo BD','Desarrollo Generación e Impresión Contratos para entrega de Tarjetas','Desarrollo Sistematización de OTS','PROYECTO');
--update ots_140120 set tipo_Servicio = 'AGREGAR TABLAS' where NOOT = 'SMS-0739-19'


update ots_140120 set idPrograma = 1  where programa = 'ADULTOS MAYORES';
update ots_140120 set idPrograma = 2  where programa = 'AMEXCID';
update ots_140120 set idPrograma = 3  where programa = 'BECAS BENITO JUAREZ';
update ots_140120 set idPrograma = 4  where programa = 'BIENESTAR';
update ots_140120 set idPrograma = 5  where programa = 'CONAVI';
update ots_140120 set idPrograma = 6  where programa = 'DESARROLLO';
update ots_140120 set idPrograma = 7  where programa = 'ESTADO DE VERACRUZ';
update ots_140120 set idPrograma = 8  where programa = 'FONDEN';
update ots_140120 set idPrograma = 9  where programa = 'FUNCIONARIOS';
update ots_140120 set idPrograma = 10 where programa = 'GOBIERNO DEL ESTADO';
update ots_140120 set idPrograma = 11 where programa = 'JEFAS DE FAMILIA';
update ots_140120 set idPrograma = 12 where programa = 'OTROS SERVICIOS';
update ots_140120 set idPrograma = 13 where programa = 'PROIIF';
update ots_140120 set idPrograma = 14 where programa = 'PROSPERA';
update ots_140120 set idPrograma = 15 where programa = 'REINTERO A CUENTA';
update ots_140120 set idPrograma = 16 where programa = 'SEDATU';
update ots_140120 set idPrograma = 17 where programa = 'SEDATU-FONDEN';
update ots_140120 set idPrograma = 18 where programa = 'SEDESOL';
update ots_140120 set idPrograma = 19 where programa = 'SEMBRANDO VIDA';

select noot, descripcion, programa, subprograma, tipo_servicio from ots_140120 where idprograma is null


update ots_140120 set idSubPrograma = 1  where SubPrograma = 'ABONO A CUENTA';
update ots_140120 set idSubPrograma = 2	 where SubPrograma = 'BAJA DE RETENCION/DOMICILIACION';
update ots_140120 set idSubPrograma = 3	 where SubPrograma = 'BECAS ADEFAS';
update ots_140120 set idSubPrograma = 4	 where SubPrograma = 'BECAS ADULTOS MAYORES';
update ots_140120 set idSubPrograma = 5	 where SubPrograma = 'BECAS EDUC. BASICA';
update ots_140120 set idSubPrograma = 6	 where SubPrograma = 'BECAS EDUC.SUPERIOR';
update ots_140120 set idSubPrograma = 7	 where SubPrograma = 'BECAS JEF';
update ots_140120 set idSubPrograma = 8	 where SubPrograma = 'CANAL ABIERTO';
update ots_140120 set idSubPrograma = 9	 where SubPrograma = 'CANAL CERRADO';
update ots_140120 set idSubPrograma = 10 where SubPrograma = 'Desarrollo';
update ots_140120 set idSubPrograma = 11 where SubPrograma = 'DISPERSION';
update ots_140120 set idSubPrograma = 12 where SubPrograma = 'DOMICILIACIÓN';
update ots_140120 set idSubPrograma = 13 where SubPrograma = 'EDUC. BECAS BASICAS';
update ots_140120 set idSubPrograma = 14 where SubPrograma = 'MEJORAMIENTO URBANO NIVEL 2';
update ots_140120 set idSubPrograma = 15 where SubPrograma = 'MEJORAMIENTO URBANO NIVEL 4';
update ots_140120 set idSubPrograma = 16 where SubPrograma = 'OTROS';
update ots_140120 set idSubPrograma = 17 where SubPrograma = 'RECONSTRUCCIÓN NIVEL 2';
update ots_140120 set idSubPrograma = 18 where SubPrograma = 'RECONSTRUCCIÓN NIVEL 4';
update ots_140120 set idSubPrograma = 19 where SubPrograma = 'RECUPERACION DE RECURSOS';
update ots_140120 set idSubPrograma = 20 where SubPrograma = 'VIVIENDA SOCIAL NIVEL 2';
update ots_140120 set idSubPrograma = 21 where SubPrograma = 'VIVIENDA SOCIAL NIVEL 4';

select noot, descripcion, programa, subprograma, tipo_servicio from ots_140120 where idsubprograma is null 




update ots_140120 set idTipoServicio = 1 where tipo_servicio = 'AGREGAR TABLAS'	
update ots_140120 set idTipoServicio = 2 where tipo_servicio = 'ALTA RETENCION'	
update ots_140120 set idTipoServicio = 3 where tipo_servicio = 'ANEXO 7'	
update ots_140120 set idTipoServicio = 4 where tipo_servicio = 'APERTURA ADICIONAL VALES DESPENSA'	
update ots_140120 set idTipoServicio = 5 where tipo_servicio = 'APERTURA TITULAR VALES DESPENSA'	
update ots_140120 set idTipoServicio = 6 where tipo_servicio = 'APLICACIÓN RETIROS'	
update ots_140120 set idTipoServicio = 7 where tipo_servicio = 'BAJA CUENTAS'	
update ots_140120 set idTipoServicio = 8 where tipo_servicio = 'BAJA RETENCION'	
update ots_140120 set idTipoServicio = 9 where tipo_servicio = 'BLOQUEO'	
update ots_140120 set idTipoServicio = 10 where tipo_servicio = 'CAMBIO ADSCRIPCION'	
update ots_140120 set idTipoServicio = 11 where tipo_servicio = 'CAMBIO CENTRO'	
update ots_140120 set idTipoServicio = 12 where tipo_servicio = 'CAMBIO ESTATUS'	
update ots_140120 set idTipoServicio = 13 where tipo_servicio = 'CAMBIO TARIFA'	
update ots_140120 set idTipoServicio = 14 where tipo_servicio = 'CANCELACION CUENTAS'	
update ots_140120 set idTipoServicio = 15 where tipo_servicio = 'Creación Nvo. Producto Monedero Bienestar'	
update ots_140120 set idTipoServicio = 16 where tipo_servicio = 'CREDITO MAS AHORRO'	
update ots_140120 set idTipoServicio = 17 where tipo_servicio = 'DEPOSITO A CUENTA'	
update ots_140120 set idTipoServicio = 18 where tipo_servicio = 'DESARROLLO'	
update ots_140120 set idTipoServicio = 19 where tipo_servicio = 'DESBLOQUEO'	
update ots_140120 set idTipoServicio = 20 where tipo_servicio = 'DESBLOQUEO/REINTEGRO'	
update ots_140120 set idTipoServicio = 21 where tipo_servicio = 'DEVOLUCIONES'	
update ots_140120 set idTipoServicio = 22 where tipo_servicio = 'DISPERSIÓN'	
update ots_140120 set idTipoServicio = 23 where tipo_servicio = 'ELIMINACION BLOQUEO'
update ots_140120 set idTipoServicio = 24 where tipo_servicio = 'Generación Recibos de Pago'
update ots_140120 set idTipoServicio = 25 where tipo_servicio = 'GENERACION REPORTE'
update ots_140120 set idTipoServicio = 26 where tipo_servicio = 'Listado de Movimientos'
update ots_140120 set idTipoServicio = 27 where tipo_servicio = 'MANTENIMIENTO NOMBRES'
update ots_140120 set idTipoServicio = 28 where tipo_servicio = 'MARPEX'
update ots_140120 set idTipoServicio = 29 where tipo_servicio = 'PROIIF'
update ots_140120 set idTipoServicio = 30 where tipo_servicio = 'REASIGNACION TARJETAS'
update ots_140120 set idTipoServicio = 31 where tipo_servicio = 'RECUPERACION RECURSOS'	
update ots_140120 set idTipoServicio = 32 where tipo_servicio = 'REINTEGRO'
update ots_140120 set idTipoServicio = 33 where tipo_servicio = 'REINTEGRO/DISPERSIÓN'
update ots_140120 set idTipoServicio = 34 where tipo_servicio = 'REVERSO'	
update ots_140120 set idTipoServicio = 35 where tipo_servicio = 'SOLICITUD DE MEDIOS'	
update ots_140120 set idTipoServicio = 36 where tipo_servicio = 'VINCULACION TARJETAS'	

select noot, descripcion, programa, subprograma, tipo_servicio from ots_140120 where idtiposervicio is null

select top 10 * from ots_140120

select * from ots_140120 where idAreaSol     is null
select * from ots_140120 where idSolicitante is null
select * from ots_140120 where idAreaAsig    is null
select * from ots_140120 where idEstatus     is null
select noot, descripcion, programa, subprograma, tipo_servicio from ots_140120 where idsubprograma is null 

update  ots_140120 set idsubprograma = 16 where idsubprograma is null 
select * from cat_subprograma



--calcular idurgencia e idcomplejidad desde la tabla ots_070120

select top 10 * from ots_060120
select top 10 * from ots_140120
select top 10 * from ots_070120
select top 10 * from ots_090120

select count(*) from ots_060120
select count(*) from ots_070120
select count(*) from ots_090120

select count(*) from ots_140120 where noot not in (select noot from ots_060120)--0
select count(*) from ots_140120 where noot not in (select noot from ots_070120)--6
select count(*) from ots_140120 where noot not in (select noot from ots_090120)--8

alter table ots_060120 add idU int;
alter table ots_060120 add idC int;

select distinct(Urgencia) from ots_060120
select distinct(Complejidad) from ots_060120

select * from Urgencia
select * from Complejidad

update ots_060120 set idU = 2 where urgencia = 'Media'
update ots_060120 set idU = 3 where urgencia = 'Alta'
update ots_060120 set idU = 4 where urgencia = 'Muy Alta'

update ots_060120 set idC = 1 where complejidad = 'Baja'
update ots_060120 set idC = 2 where complejidad = 'Media'
update ots_060120 set idC = 3 where complejidad = 'Alta'
update ots_060120 set idC = 4 where complejidad = 'Muy Alta'

select * from ots_060120 where idU is null



select --top 10 * 
count(*)
from ots_140120 o14
join ots_060120 o06 on o06.[No# OT] = o14.noot
where o06.idu is not null

update ots_140120 set ots_140120.idurgencia = ots_060120.idu
from ots_140120 inner join ots_060120 on ots_060120.[No# OT] = noot
where idu is not null

update ots_140120 set ots_140120.idcomplejidad = ots_060120.idc
from ots_140120 inner join ots_060120 on ots_060120.[No# OT] = noot
where idc is not null

alter table ots add idPrograma int 
alter table ots add idSubPrograma int
alter table ots add idTipoServ int
alter table 


--llenamos la tabla ots con los datos de la tabla 140120
--insert into ots select noot, SUBSTRING(noot,5,4) contOT, fecha_solicitud, DESCRIPCION, idAreaSol,idSolicitante,idAreaAsig, '20200101' f_Enevio, idEstatus,idUrgencia,idComplejidad,0 tiempAtn, null fecha_atn, Fecha_Entrega, null enTiempo, null observ, null observCancel, null observAtn, idprograma, idsubprograma, idtiposervicio
--from OTs_140120 where idComplejidad is not null

-- importamos la bitacora de Su (original) para obetener los datos faltantes. (urgencia y complejidad de 804 registros)
-- calculamos idU y idC a los nuevos registros
-- calculamos idareasol
-- calculamos idsolicitante
-- calculamos idareaasig
-- calculamos idstatus
-- calculamos idprograma, idsubprograma, idtiposerv  en    la tabla ots_300120
-- obtenemos  idprograma, idsubprograma, idtipo_serv desde la tabla ots_300120

select top 10 * from OTs
select top 10 * from OTs_300120
select top 10 * from OTs_310120

select count(*) from OTs 		--1097
select count(*) from OTs_310120 --1897
select count(*) from OTs_310120 where noot not in (select idot from ots) --804
select count(*) from OTs_300120 where noot not in (select idot from ots) --804
select count(*) from OTs_310120 where noot not in (select idot from ots) and idSolicitante IS NOT NULL AND idAreaSol IS NOT NULL and idAreaAsig is not null and idEstatus is not null and idPrograma is not null and idsubprograma is not null and idTipoServ is not null --333

--insert into ots 
select noot, SUBSTRING(noot,5,4) contOT, fecsol, DESCRIP, idAreaSol,idSolicitante,idAreaAsig, fecEnvio, idEstatus,idU,idC,0 tiempAtn, null fecha_atn, Fech_Entrega, null en_tiempo, observ, null observCancel, null observAtn, idprograma, idsubprograma, idtiposerv
from OTs_310120
where idestatus is not null
and idareaasig is not null
and idU is not null
and idareasol is not null 
and noot not in (select idot from ots) -- 300

update ots_310120 set fecenvio = '20200101' where fecenvio is null
--calculamos idU y idC

alter table ots_310120 add idU int;
alter table ots_310120 add idC int;

select distinct(Urgencia)    from ots_310120
select distinct(Complejidad) from ots_310120

select * from Urgencia
select * from Complejidad

update ots_310120 set idU = 1 where urgencia = 'Baja'
update ots_310120 set idU = 2 where urgencia = 'Media'
update ots_310120 set idU = 3 where urgencia = 'Alta'
update ots_310120 set idU = 4 where urgencia = 'Muy Alta'

update ots_310120 set idC = 1 where complejidad = 'Baja'
update ots_310120 set idC = 2 where complejidad = 'Media'
update ots_310120 set idC = 3 where complejidad = 'Alta'
update ots_310120 set idC = 4 where complejidad = 'Muy Alta'

alter table ots_300120 add idPrograma int 
alter table ots_300120 add idSubPrograma int
alter table ots_300120 add idTipoServ int

update ots_300120 set idPrograma = 1  where programa = 'ADULTOS MAYORES';
update ots_300120 set idPrograma = 2  where programa = 'AMEXCID';
update ots_300120 set idPrograma = 3  where programa = 'BECAS BENITO JUAREZ';
update ots_300120 set idPrograma = 4  where programa = 'BIENESTAR';
update ots_300120 set idPrograma = 5  where programa = 'CONAVI';
update ots_300120 set idPrograma = 6  where programa = 'DESARROLLO';
update ots_300120 set idPrograma = 7  where programa = 'ESTADO DE VERACRUZ';
update ots_300120 set idPrograma = 8  where programa = 'FONDEN';
update ots_300120 set idPrograma = 9  where programa = 'FUNCIONARIOS';
update ots_300120 set idPrograma = 10 where programa = 'GOBIERNO DEL ESTADO';
update ots_300120 set idPrograma = 11 where programa = 'JEFAS DE FAMILIA';
update ots_300120 set idPrograma = 12 where programa = 'OTROS SERVICIOS';
update ots_300120 set idPrograma = 13 where programa = 'PROIIF';
update ots_300120 set idPrograma = 14 where programa = 'PROSPERA';
update ots_300120 set idPrograma = 15 where programa = 'REINTERO A CUENTA';
update ots_300120 set idPrograma = 16 where programa = 'SEDATU';
update ots_300120 set idPrograma = 17 where programa = 'SEDATU-FONDEN';
update ots_300120 set idPrograma = 18 where programa = 'SEDESOL';
update ots_300120 set idPrograma = 19 where programa = 'SEMBRANDO VIDA';

select noot, programa, subprograma, tipo_ot from ots_300120 where idprograma is null

update ots_300120 set idSubPrograma = 1  where SubPrograma = 'ABONO A CUENTA';
update ots_300120 set idSubPrograma = 2	 where SubPrograma = 'BAJA DE RETENCION/DOMICILIACION';
update ots_300120 set idSubPrograma = 3	 where SubPrograma = 'BECAS ADEFAS';
update ots_300120 set idSubPrograma = 4	 where SubPrograma = 'BECAS ADULTOS MAYORES';
update ots_300120 set idSubPrograma = 5	 where SubPrograma = 'BECAS EDUC. BASICA';
update ots_300120 set idSubPrograma = 6	 where SubPrograma = 'BECAS EDUC.SUPERIOR';
update ots_300120 set idSubPrograma = 7	 where SubPrograma = 'BECAS JEF';
update ots_300120 set idSubPrograma = 8	 where SubPrograma = 'CANAL ABIERTO';
update ots_300120 set idSubPrograma = 9	 where SubPrograma = 'CANAL CERRADO';
update ots_300120 set idSubPrograma = 10 where SubPrograma = 'Desarrollo';
update ots_300120 set idSubPrograma = 11 where SubPrograma = 'DISPERSION';
update ots_300120 set idSubPrograma = 12 where SubPrograma = 'DOMICILIACIÓN';
update ots_300120 set idSubPrograma = 13 where SubPrograma = 'EDUC. BECAS BASICAS';
update ots_300120 set idSubPrograma = 14 where SubPrograma = 'MEJORAMIENTO URBANO NIVEL 2';
update ots_300120 set idSubPrograma = 15 where SubPrograma = 'MEJORAMIENTO URBANO NIVEL 4';
update ots_300120 set idSubPrograma = 16 where SubPrograma = 'OTROS';
update ots_300120 set idsubprograma = 16 where subprograma is null 
update ots_300120 set idSubPrograma = 17 where SubPrograma = 'RECONSTRUCCIÓN NIVEL 2';
update ots_300120 set idSubPrograma = 18 where SubPrograma = 'RECONSTRUCCIÓN NIVEL 4';
update ots_300120 set idSubPrograma = 19 where SubPrograma = 'RECUPERACION DE RECURSOS';
update ots_300120 set idSubPrograma = 20 where SubPrograma = 'VIVIENDA SOCIAL NIVEL 2';
update ots_300120 set idSubPrograma = 21 where SubPrograma = 'VIVIENDA SOCIAL NIVEL 4';

select noot, programa, subprograma, tipo_ot from ots_300120 where idsubprograma is null 
select noot, programa, subprograma, tipo_ot from ots_300120 where subprograma is null 

update ots_300120 set idTipoServ = 1 where tipo_ot = 'AGREGAR TABLAS'	
update ots_300120 set idTipoServ = 2 where tipo_ot in ('ALTA RETENCION','ALTA RETENCIÓN')
update ots_300120 set idTipoServ = 3 where tipo_ot = 'ANEXO 7'	
update ots_300120 set idTipoServ = 4 where tipo_ot = 'APERTURA ADICIONAL VALES DESPENSA'	
update ots_300120 set idTipoServ = 5 where tipo_ot = 'APERTURA TITULAR VALES DESPENSA'	
update ots_300120 set idTipoServ = 6 where tipo_ot = 'APLICACIÓN RETIROS'	
update ots_300120 set idTipoServ = 7 where tipo_ot = 'BAJA CUENTAS'	
update ots_300120 set idTipoServ = 8 where tipo_ot in ('BAJA RETENCION','BAJA RETENCIÓN')
update ots_300120 set idTipoServ = 9 where tipo_ot = 'BLOQUEO'	
update ots_300120 set idTipoServ = 10 where tipo_ot in ('CAMBIO ADSCRIPCION','CAMBIOS DE ADSCRIPCIÓN')
update ots_300120 set idTipoServ = 11 where tipo_ot = 'CAMBIO CENTRO'	
update ots_300120 set idTipoServ = 12 where tipo_ot = 'CAMBIO ESTATUS'	
update ots_300120 set idTipoServ = 13 where tipo_ot = 'CAMBIO TARIFA'	
update ots_300120 set idTipoServ = 14 where tipo_ot = 'CANCELACION CUENTAS'	
update ots_300120 set idTipoServ = 15 where tipo_ot = 'Creación Nvo. Producto Monedero Bienestar'	
update ots_300120 set idTipoServ = 16 where tipo_ot = 'CREDITO MAS AHORRO'	
update ots_300120 set idTipoServ = 17 where tipo_ot = 'DEPOSITO A CUENTA'	
update ots_300120 set idTipoServ = 18 where tipo_ot = 'DESARROLLO'	
update ots_300120 set idTipoServ = 19 where tipo_ot = 'DESBLOQUEO'	
update ots_300120 set idTipoServ = 20 where tipo_ot = 'DESBLOQUEO/REINTEGRO'	
update ots_300120 set idTipoServ = 21 where tipo_ot = 'DEVOLUCIONES'	
update ots_300120 set idTipoServ = 22 where tipo_ot = 'DISPERSIÓN'	
update ots_300120 set idTipoServ = 23 where tipo_ot = 'ELIMINACION BLOQUEO'
update ots_300120 set idTipoServ = 24 where tipo_ot = 'Generación Recibos de Pago'
update ots_300120 set idTipoServ = 25 where tipo_ot = 'GENERACION REPORTE'
update ots_300120 set idTipoServ = 26 where tipo_ot = 'Listado de Movimientos'
update ots_300120 set idTipoServ = 27 where tipo_ot = 'MANTENIMIENTO NOMBRES'
update ots_300120 set idTipoServ = 28 where tipo_ot = 'MARPEX'
update ots_300120 set idTipoServ = 29 where tipo_ot = 'PROIIF'
update ots_300120 set idTipoServ = 30 where tipo_ot in ('REASIGNACION TARJETAS','REASIGNACIÓN TARJETAS')
update ots_300120 set idTipoServ = 31 where tipo_ot in ('RECUPERACION RECURSOS','RECUPERACIÓN RECURSOS')
update ots_300120 set idTipoServ = 32 where tipo_ot = 'REINTEGRO'
update ots_300120 set idTipoServ = 33 where tipo_ot = 'REINTEGRO/DISPERSIÓN'
update ots_300120 set idTipoServ = 34 where tipo_ot = 'REVERSO'	
update ots_300120 set idTipoServ = 35 where tipo_ot = 'SOLICITUD DE MEDIOS'	
update ots_300120 set idTipoServ = 36 where tipo_ot = 'VINCULACION TARJETAS'	

select noot, programa, subprograma, tipo_ot from ots_300120 where idTipoServ is null

-- obtenemos idPrograma, idSubPrograma, idTipoServ desde ots_310120
update ots_310120 
set ots_310120.idprograma 	 = ots_300120.idprograma, 
	ots_310120.idsubprograma = ots_300120.idsubprograma,
	ots_310120.idtiposerv    = ots_300120.idtiposerv
from ots_310120 inner join ots_300120 on ots_310120.noot = ots_300120.noot

alter table dbo.ots_310120 add idAreaSol 	 int;
alter table dbo.ots_310120 add idSolicitante int;
alter table dbo.ots_310120 add idAreaAsig 	 int;
alter table dbo.ots_310120 add idEstatus 	 int;

select distinct(solicitante) from dbo.ots_310120 where idSolicitante is null order by solicitante;
--select * from dbo.ots_310120 where solicitante is null;
select * from dbo.ots_310120 where solicitante = 'Devoluciones de cuota e IVA de Administración total acuerdos 91, importe total $5,162.79'
select * from Personas where nomPersona like '%Franc%'
select max(idPersona) from Personas

--insert into personas values (174, 'Jesus','Rodrigues','Mercado','','')

update ctrlOts.dbo.ots_310120 set idSolicitante = 120 where SOLICITANTE = 'David Carrillo Lara'
update ctrlOts.dbo.ots_310120 set idSolicitante = 174 where SOLICITANTE = 'Jesus Rodrigues Mercado'
update ctrlOts.dbo.ots_310120 set idSolicitante = 108 where SOLICITANTE = 'Lic. Francisco Vazquez Balmori'
--update ctrlOts.dbo.ots_310120 set DESCRIP = 'Dispersión MAY JUN 2019 (1,197 REGISTROS) BLOQUE V CA BANSEFI. Devoluciones de cuota e IVA de Administración total acuerdos 91, importe total $5,162.79', solicitante = null where noot = 'SMS-1238-19'

update ctrlOts.dbo.ots_310120 set idSolicitante = 120 where SOLICITANTE = 'Alberto Fuentes Mendoza';
update ctrlOts.dbo.ots_310120 set idSolicitante = 121 where SOLICITANTE = 'Alejandro Rámirez Posadas';
update ctrlOts.dbo.ots_310120 set idSolicitante = 122 where SOLICITANTE = 'Annylu Segura Hernández';
update ctrlOts.dbo.ots_310120 set idSolicitante = 123 where SOLICITANTE = 'Arturo Figueroa Chavez';
update ctrlOts.dbo.ots_310120 set idSolicitante =  72 where SOLICITANTE = 'Arturo Ramos Elorduy';
update ctrlOts.dbo.ots_310120 set idSolicitante = 124 where SOLICITANTE = 'Carlos Alberto Aldana Gonzalez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 125 where SOLICITANTE = 'Carlos Alberto Hidalgo Martinez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 126 where SOLICITANTE = 'Carlos Cano Hernández';
update ctrlOts.dbo.ots_310120 set idSolicitante = 127 where SOLICITANTE = 'Carlos Torres Jiménez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 128 where SOLICITANTE = 'César López Muñoz';
update ctrlOts.dbo.ots_310120 set idSolicitante = 129 where SOLICITANTE = 'Claudia Avendaño García';
update ctrlOts.dbo.ots_310120 set idSolicitante = 130 where SOLICITANTE = 'Danae Aguirre Mayorga ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 131 where SOLICITANTE = 'Denisse Alejandra Domínguez García';
update ctrlOts.dbo.ots_310120 set idSolicitante = 132 where SOLICITANTE = 'Edith Martínez Minian';
update ctrlOts.dbo.ots_310120 set idSolicitante = 133 where SOLICITANTE = 'Eduardo Aguilar Azuela';
update ctrlOts.dbo.ots_310120 set idSolicitante = 134 where SOLICITANTE = 'Eduardo López Torres';
update ctrlOts.dbo.ots_310120 set idSolicitante = 135 where SOLICITANTE = 'Edwin Mihail Torres Martínez ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 136 where SOLICITANTE = 'Fabricio Joel Cortes Bejero ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 137 where SOLICITANTE = 'Gerardo Efraín Avila Gutiérrez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 138 where SOLICITANTE = 'Hugo Suárez Luna';
update ctrlOts.dbo.ots_310120 set idSolicitante = 139 where SOLICITANTE = 'Irais Gómez Pérez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 140 where SOLICITANTE in ('Ismael Luna López','Lic.Ismale Omar Luna Lopez');
update ctrlOts.dbo.ots_310120 set idSolicitante = 141 where SOLICITANTE = 'Israel Carrillo Plata ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 142 where SOLICITANTE = 'Israel Garduño Islas';
update ctrlOts.dbo.ots_310120 set idSolicitante = 143 where SOLICITANTE = 'Israel Valdez Velázquez ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 144 where SOLICITANTE = 'Jesus Ramón Sánchez Vázquez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 145 where SOLICITANTE = 'Jonathan Ortiz Rivera';
update ctrlOts.dbo.ots_310120 set idSolicitante = 146 where SOLICITANTE = 'Jorge Alberto Cabello Aguilar';
update ctrlOts.dbo.ots_310120 set idSolicitante = 147 where SOLICITANTE = 'Jorge Gonzalez Acevedo';
update ctrlOts.dbo.ots_310120 set idSolicitante = 148 where SOLICITANTE = 'Jorge Gonzalez Flores';
update ctrlOts.dbo.ots_310120 set idSolicitante = 149 where SOLICITANTE = 'José Antonio Cortés Reyes';
update ctrlOts.dbo.ots_310120 set idSolicitante = 150 where SOLICITANTE = 'José Antonio Pérez Cedillo';
update ctrlOts.dbo.ots_310120 set idSolicitante = 107 where SOLICITANTE = 'Juan Alfredo Buxade López';
update ctrlOts.dbo.ots_310120 set idSolicitante = 151 where SOLICITANTE = 'Juan René Garduño Moya';
update ctrlOts.dbo.ots_310120 set idSolicitante = 152 where SOLICITANTE = 'Lucila Viridiana Vázquez Velasco';
update ctrlOts.dbo.ots_310120 set idSolicitante =  63 where SOLICITANTE = 'Luis Angel Canseco Rodriguez';
update ctrlOts.dbo.ots_310120 set idSolicitante = 153 where SOLICITANTE = 'Ma. De los Angeles Pérez Fraga';
update ctrlOts.dbo.ots_310120 set idSolicitante = 153 where SOLICITANTE = 'Ma. De los Angeles Perez Fraga';
update ctrlOts.dbo.ots_310120 set idSolicitante = 154 where SOLICITANTE = 'Marco Antonio Hernandez Molina';
update ctrlOts.dbo.ots_310120 set idSolicitante = 155 where SOLICITANTE = 'Mario Alberto López Flores';
update ctrlOts.dbo.ots_310120 set idSolicitante = 156 where SOLICITANTE = 'Mary Ruth Monroy Cid del Prado';
update ctrlOts.dbo.ots_310120 set idSolicitante = 157 where SOLICITANTE = 'Miguel A. Lara Raíz';
update ctrlOts.dbo.ots_310120 set idSolicitante = 158 where SOLICITANTE = 'Miguel Angel Espinosa Moctezuma';
update ctrlOts.dbo.ots_310120 set idSolicitante = 159 where SOLICITANTE = 'Miguel Ángel Gómez Recillas';
update ctrlOts.dbo.ots_310120 set idSolicitante = 160 where SOLICITANTE = 'Monica Iliana García Hernández';
update ctrlOts.dbo.ots_310120 set idSolicitante = 106 where SOLICITANTE = 'Nahum Diaz Serrano';
update ctrlOts.dbo.ots_310120 set idSolicitante = 161 where SOLICITANTE = 'Norma Arely Manzano García';
update ctrlOts.dbo.ots_310120 set idSolicitante = 162 where SOLICITANTE = 'Omar López Mejia';
update ctrlOts.dbo.ots_310120 set idSolicitante = 163 where SOLICITANTE = 'Oscar Barrera García';
update ctrlOts.dbo.ots_310120 set idSolicitante = 164 where SOLICITANTE = 'Patricia Serrano Villa ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 165 where SOLICITANTE = 'Pedro Deaquino Vargas';
update ctrlOts.dbo.ots_310120 set idSolicitante = 101 where SOLICITANTE = 'Ricardo Espinosa Ramos';
update ctrlOts.dbo.ots_310120 set idSolicitante = 166 where SOLICITANTE = 'Rocio Elena Ávila Hernández ';
update ctrlOts.dbo.ots_310120 set idSolicitante = 167 where SOLICITANTE = 'Rodolfo Saavedra Fuentes';
update ctrlOts.dbo.ots_310120 set idSolicitante = 168 where SOLICITANTE = 'Ruben Bernal Cruz';
update ctrlOts.dbo.ots_310120 set idSolicitante = 169 where SOLICITANTE = 'Sandra Yareli Melo Cadena';
update ctrlOts.dbo.ots_310120 set idSolicitante = 170 where SOLICITANTE = 'Servando García Lugo';
update ctrlOts.dbo.ots_310120 set idSolicitante = 171 where SOLICITANTE = 'Victor Trejo Rosales';
update ctrlOts.dbo.ots_310120 set idSolicitante = 172 where SOLICITANTE = 'Yenessi Hernández Quiroga';
update ctrlOts.dbo.ots_310120 set idSolicitante = 173 where SOLICITANTE = 'Jonathan Bonilla Quintero';

select distinct(Area_Solicitante) from dbo.ots_310120 where idAreaSol is null order by Area_Solicitante;
select * from dbo.ots_310120 where area_solicitante is null;

update ctrlOts.dbo.ots_310120 set idAreaSol =  1 where area_solicitante = 'Banca Social'
update ctrlOts.dbo.ots_310120 set idAreaSol =  2 where area_solicitante = 'Bides'
update ctrlOts.dbo.ots_310120 set idAreaSol =  3 where area_solicitante = 'Cartera de Crédito'
update ctrlOts.dbo.ots_310120 set idAreaSol =  4 where area_solicitante = 'Compensación y Liquidación'
update ctrlOts.dbo.ots_310120 set idAreaSol =  5 where area_solicitante = 'Contabilidad'
update ctrlOts.dbo.ots_310120 set idAreaSol =  6 where area_solicitante = 'Contraloría Interna'
update ctrlOts.dbo.ots_310120 set idAreaSol =  7 where area_solicitante = 'Dirección de Desarrollo y Mantenimiento de Sistemas'
update ctrlOts.dbo.ots_310120 set idAreaSol =  8 where area_solicitante = 'Direccion de Sucursales'
update ctrlOts.dbo.ots_310120 set idAreaSol =  9 where area_solicitante = 'Director de seguimiento y recuperación DGA de Crédito y Garantías'
update ctrlOts.dbo.ots_310120 set idAreaSol = 10 where area_solicitante = 'Gerencia de desarrollo'
update ctrlOts.dbo.ots_310120 set idAreaSol = 11 where area_solicitante = 'Gerencia de Información'
update ctrlOts.dbo.ots_310120 set idAreaSol = 12 where area_solicitante = 'Gerencia de Remuneraciones y Prestaciones'
update ctrlOts.dbo.ots_310120 set idAreaSol = 13 where area_solicitante = 'Gerencia de Sucursales'
update ctrlOts.dbo.ots_310120 set idAreaSol = 14 where area_solicitante = 'Gerente de Banca Electrónica y Tarjetas'
update ctrlOts.dbo.ots_310120 set idAreaSol = 15 where area_solicitante = 'Gerente de Compensación y Liquidación'
update ctrlOts.dbo.ots_310120 set idAreaSol = 16 where area_solicitante = 'Gerente de Control Operacional y Seguridad de la Información'
update ctrlOts.dbo.ots_310120 set idAreaSol = 17 where area_solicitante = 'Inclusion Financiera'
update ctrlOts.dbo.ots_310120 set idAreaSol = 18 where area_solicitante = 'Medios de Pago'
update ctrlOts.dbo.ots_310120 set idAreaSol = 19 where area_solicitante = 'Negocios y Corresponsales'
update ctrlOts.dbo.ots_310120 set idAreaSol = 20 where area_solicitante = 'OIC'
update ctrlOts.dbo.ots_310120 set idAreaSol = 21 where area_solicitante = 'Operación Tradicional'
update ctrlOts.dbo.ots_310120 set idAreaSol = 22 where area_solicitante = 'QA'
update ctrlOts.dbo.ots_310120 set idAreaSol = 23 where area_solicitante = 'Subdirección de Control de la Producción'
update ctrlOts.dbo.ots_310120 set idAreaSol = 24 where area_solicitante = 'Subdirección de Desarrollo TI'
update ctrlOts.dbo.ots_310120 set idAreaSol = 25 where area_solicitante in ('subdireccion de Mantenimiento de Software', 'Subdirección de Mantenimiento de Software')
update ctrlOts.dbo.ots_310120 set idAreaSol = 26 where area_solicitante = 'Subdirección Técnico y Enlace de Vinculación Institucional'
update ctrlOts.dbo.ots_310120 set idAreaSol = 27 where area_solicitante = 'Subdirector de Control de la Operación'

select distinct(ASIGNADA_A) from dbo.ots_310120 where idAreaAsig is null order by ASIGNADA_A;
select * from dbo.ots_310120 where ASIGNADA_A is null;

update ctrlOts.dbo.ots_310120 set idAreaAsig =  1 where ASIGNADA_A ='INFOTEC';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  3 where ASIGNADA_A ='Soporte UANL';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  4 where ASIGNADA_A ='Appwhere';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  5 where ASIGNADA_A ='ONE PROJECT';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  6 where ASIGNADA_A ='Appwhere/INFOTEC';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  7 where ASIGNADA_A ='Appwhere/KIO';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  8 where ASIGNADA_A ='Bansefi';
update ctrlOts.dbo.ots_310120 set idAreaAsig =  9 where ASIGNADA_A ='DDMS-INTERNO';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 10 where ASIGNADA_A ='Gerencia de desarrollo';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 11 where ASIGNADA_A ='GI';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 12 where ASIGNADA_A ='GI (IRAIS)';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 13 where ASIGNADA_A ='GI (VIC)';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 14 where ASIGNADA_A ='ISRAEL GARDUÑO';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 15 where ASIGNADA_A ='KIO';
update ctrlOts.dbo.ots_310120 set idAreaAsig = 16 where ASIGNADA_A ='Subdirección de Mantenimiento de Software';

select distinct(ESTATUS) from dbo.ots_310120 where idEstatus is null order by ESTATUS;
select * from dbo.ots_310120 where ESTATUS is null;

update ctrlOts.dbo.ots_310120 set idEstatus = 5 where ESTATUS IN ('ATENDIDA','TERMINADO');
update ctrlOts.dbo.ots_310120 set idEstatus = 4 where ESTATUS in ('EN PROCESO','ABIERTO');
update ctrlOts.dbo.ots_310120 set idEstatus = 3 where ESTATUS = 'QA';
update ctrlOts.dbo.ots_310120 set idEstatus = 2 where ESTATUS = 'USUARIO';




select top 10 * from OTs

--agregamos campos para reporte niveles de servicio

alter table ots add tiempoProceso int --es lo mismo que tiempoAtn?
alter table ots add beneficiarios int
alter table ots add monto money
alter table ots add rechazos int
alter table ots add montoRechazo money

select count(*) from OTs_300120 where noot not in (select idot from ots) --499
select distinct(idestatus) from ots
select distinct(estatus) from ots_300120
select * from statusot
select * from ots_300120 where idestatus is null
select * from ots_300120 where AreaAsignacion is null

update ots 
set ots.fechaEnvio = ots_310120.fecenvio
from ots inner join ots_310120 on ots_310120.noot = ots.idot



alter table ots_300120_2 add idAreaSol 	   int;
alter table ots_300120_2 add idSolicitante int;
alter table ots_300120_2 add idAreaAsig    int;
alter table ots_300120_2 add idEstatus 	   int;
alter table ots_300120_2 add idPrograma    int; 
alter table ots_300120_2 add idSubPrograma int;
alter table ots_300120_2 add idTipoServ    int;
alter table ots_300120_2 add fecEnvio      datetime;
alter table ots_300120_2 add fecRecSol     datetime;
alter table ots_300120_2 add fecIniProc    datetime;
alter table ots_300120_2 add fecEntOrd     datetime;
alter table ots_300120_2 add hrs_2         nvarchar(8);
alter table ots_300120_2 add hip_2         nvarchar(8);
alter table ots_300120_2 add heo_2         nvarchar(8);
alter table ots_300120_2 add frs_2         nvarchar(17);
alter table ots_300120_2 add fip_2         nvarchar(17);
alter table ots_300120_2 add feo_2         nvarchar(17);
alter table ots_300120_2 drop column frs_2
alter table ots_300120_2 drop column fip_2
alter table ots_300120_2 drop column feo_2

update ots_300120_2 
set    ots_300120_2.fecEnvio = ots_310120.fecenvio
from   ots_300120_2 
inner join ots_310120 on ots_310120.noot = ots_300120_2.noot

select * from OTs_300120_2 where noot not in (select idot from ots) --499
select * from ots where idot not in (select noot from ots_300120_2)
select * from OTs_310120 

--select noot, frs, cast(hrs as nvarchar(13)),SUBSTRING(frs,7,4)+SUBSTRING(frs,4,2)+SUBSTRING(frs,1,2)+' '+hrs fecrecsol from OTs_300120_2 
--select noot, frs, cast(hrs as nvarchar(13)),SUBSTRING(frs,7,4)+SUBSTRING(frs,4,2)+SUBSTRING(frs,1,2)+' '+hrs fecrecsol from OTs_300120_2 
--select noot,frs, hrs, hrs_2 from OTs_300120_2 where hrs like '% p. m.%' and SUBSTRING(hrs,1,2) like '%:'





--select noot,frs, hrs, (substring(hrs,1,1)+12) hh,SUBSTRING(hrs,2,6) rr, concat((substring(hrs,1,1)+12),SUBSTRING(hrs,2,6)) from OTs_300120_2 where hrs like '% p. m.%' and SUBSTRING(hrs,1,2) like '%:' and hrs_2 is null order by hh
--select noot,frs, hrs, substring(hrs,1,8) hh from OTs_300120_2 where hrs like '% p. m.%' and SUBSTRING(hrs,1,2) = '12' and hrs_2 is null order by hh
--select noot,frs, hrs , ('0'+substring(hrs,1,1)) hh ,SUBSTRING(hrs,2,6) rr, concat('0',(substring(hrs,1,1)),SUBSTRING(hrs,2,6)) from OTs_300120_2 where hrs like '% a. m.%' and SUBSTRING(hrs,1,2) like '%:' and hrs_2 is null order by hh
--select noot,frs, hrs , substring(hrs,1,8) hh from OTs_300120_2 where SUBSTRING(hrs,1,2) = '12' and  hrs_2 is null order by hh
--select noot,frs, hrs , substring(hrs,1,8) hh from OTs_300120_2 where hrs like '%a. m.%' and hrs_2 is null order by hh
--select noot,frs, hrs , (substring(hrs,1,2)+12) hh,SUBSTRING(hrs,3,6) rr from OTs_300120_2 where SUBSTRING(hrs,1,2) < 8 and  hrs_2 is null order by hh
--select noot,frs, hrs , substring(hrs,1,8) hh from OTs_300120_2 where SUBSTRING(hrs,1,2) < 12 and  hrs_2 is null order by hh
--select noot,frs, hrs , concat(substring(frs,7,4),substring(frs,4,2),substring(frs,1,2),' ',hrs_2) ff  from OTs_300120_2 where   frs_2 is null  
--select distinct( len(concat(substring(frs,7,4),substring(frs,4,2),substring(frs,1,2),' ',hrs_2)))ll from OTs_300120_2 where   frs_2 is null 

--update ots_300120_2 set hrs_2 = concat((substring(hrs,1,1)+12),SUBSTRING(hrs,2,6)) where hrs like '% p. m.%' and SUBSTRING(hrs,1,2) like '%:'
--update ots_300120_2 set hrs_2 = substring(hrs,1,8) where hrs like '% p. m.%' and SUBSTRING(hrs,1,2) = '12' and hrs_2 is null
--update ots_300120_2 set hrs_2 = concat('0',substring(hrs,1,1),SUBSTRING(hrs,2,6))  where hrs like '% a. m.%' and SUBSTRING(hrs,1,2) like '%:' and hrs_2 is null
--update ots_300120_2 set hrs_2 = substring(hrs,1,8) where  SUBSTRING(hrs,1,2) = '12' and hrs_2 is null
--update ots_300120_2 set hrs_2 = substring(hrs,1,8) where  hrs like '%a. m.%' and hrs_2 is null
--update ots_300120_2 set hrs_2 = concat((substring(hrs,1,2)+12),SUBSTRING(hrs,3,6)) where SUBSTRING(hrs,1,2) < 8  and hrs_2 is null
--update ots_300120_2 set hrs_2 = substring(hrs,1,8) where  SUBSTRING(hrs,1,2) < 12 and hrs_2 is null
--update ots_300120_2 set frs_2 = concat(substring(frs,7,4),substring(frs,4,2),substring(frs,1,2),' ',hrs_2)

--select noot, fip, hip from OTs_300120_2 where fip is not null and fip = ''
--update OTs_300120_2 set fip=null, hip=null where fip is not null and fip = ''
--select noot, fip, hip, SUBSTRING(hip, 1, 8) from OTs_300120_2 where fip is not null and fip <> '' and substring(hip,1,2) not like '%:' and hip like '%a. m.%' and fip_2 is null 
--update OTs_300120_2 set hip_2=SUBSTRING(hip, 1, 8) where fip is not null and fip <> '' and substring(hip,1,2) not like '%:' and hip like '%a. m.%' and fip_2 is null 
--select noot, fip, hip, concat('0', SUBSTRING(hip, 1, 8)) from OTs_300120_2 where fip is not null and fip <> '' and substring(hip,1,2) like '%:' and hip like '%a. m.%' and fip_2 is null 
--update OTs_300120_2 set hip_2=concat('0', SUBSTRING(hip, 1, 8))  where hip is not null and fip <> '' and substring(hip,1,2) like '%:' and hip like '%a. m.%' and fip_2 is null 
--select noot, fip, hip, (SUBSTRING(hip, 1, 8)) from OTs_300120_2 where hip like '%p. m.%' and substring(hip,1,2) = '12'  and hip_2 is null 
--update OTs_300120_2 set hip_2=SUBSTRING(hip, 1, 8) where hip like '%p. m.%' and substring(hip,1,2) = '12'  and hip_2 is null 
--select noot, fip, hip, (12+SUBSTRING(hip, 1, 1)) hh, SUBSTRING(hip,2,6) rr,concat((12+SUBSTRING(hip, 1, 1)), SUBSTRING(hip,2,6)) hip_ok, hip_2 from OTs_300120_2 where substring(hip,1,2) like '%:' and hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=concat((12+SUBSTRING(hip, 1, 1)), SUBSTRING(hip,2,6)) where substring(hip,1,2) like '%:' and hip is not null and  hip_2 is null 
--select noot, fip, hip,SUBSTRING(hip, 1, 8) hh, hip_2 from OTs_300120_2 where substring(hip,1,2) = '12' and len(hip)>5 and hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=SUBSTRING(hip, 1, 8) where substring(hip,1,2) = '12' and len(hip)>5 and hip is not null and  hip_2 is null 
--select noot, fip, hip,concat(SUBSTRING(hip, 1, 5),':00') hh, hip_2 from OTs_300120_2 where substring(hip,1,2) = '12' and len(hip)=5 and hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=concat(SUBSTRING(hip, 1, 5),':00') where substring(hip,1,2) = '12' and len(hip)=5 and hip is not null and  hip_2 is null 
--select noot, fip, hip,12+SUBSTRING(hip, 1, 2) hh, SUBSTRING(hip,3,6) rr,concat((12+SUBSTRING(hip, 1, 2)), SUBSTRING(hip,3,6)) hip_ok, hip_2 from OTs_300120_2 where SUBSTRING(hip, 1, 2)<8 and hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=concat((12+SUBSTRING(hip, 1, 2)), SUBSTRING(hip,3,6))  where SUBSTRING(hip, 1, 2)<8 and hip is not null and  hip_2 is null
--select noot, fip, hip,SUBSTRING(hip, 1, 8) hh,  hip_2 from OTs_300120_2 where SUBSTRING(hip, 1, 2)<13 and hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=SUBSTRING(hip, 1, 8) where SUBSTRING(hip, 1, 2)<13 and hip is not null and  hip_2 is null
--select noot, fip, hip,concat(SUBSTRING(hip, 1, 6),':00') hh,  hip_2 from OTs_300120_2 where  hip is not null and  hip_2 is null order by hh
--update OTs_300120_2 set hip_2=concat(SUBSTRING(hip, 1, 6),':00') where  hip is not null and  hip_2 is null
--select noot, fip, hip,SUBSTRING(hip, 1, 1) hh,  hip_2 from OTs_300120_2 where  hip is not null and  hip_2 is null order by hh
--select noot, fip, hip_2, concat(substring(fip,7,4),substring(fip,4,2),substring(fip,1,2),' ',hip_2) from  OTs_300120_2 where  hip is not null
--update OTs_300120_2 set fip_2=concat(substring(fip,7,4),substring(fip,4,2),substring(fip,1,2),' ',hip_2) where  hip is not null


--select noot, feo, heo from OTs_300120_2 where feo is not null and feo = ''
--update OTs_300120_2 set feo=null where feo is not null and feo = ''
--select noot, feo, heo from OTs_300120_2 where heo is not null and heo = ''
--update OTs_300120_2 set heo=null where heo is not null and heo = ''
--select noot, feo, heo, SUBSTRING(heo,1,8) from OTs_300120_2 where feo is not null and heo like '%a. m.%' and heo_2 is null
--update ots_300120_2 set heo_2 = SUBSTRING(heo, 1, 8) where feo is not null and heo like '%a. m.%' and heo_2 is null
--select noot, feo, heo, SUBSTRING(heo,1,8) hh from OTs_300120_2 where heo is not null and heo like '%p. m.%' and SUBSTRING(heo, 1,2) not like '%:' and heo_2 is null order by hh
--update ots_300120_2 set heo_2 = SUBSTRING(heo,1,8) where heo is not null and heo like '%p. m.%' and SUBSTRING(heo, 1,2) not like '%:' and heo_2 is null 
--select noot, feo, heo, (12+SUBSTRING(heo,1,1)) hh, SUBSTRING(heo,2,6) rr, concat((12+SUBSTRING(heo,1,1)), SUBSTRING(heo,2,6)) rr from OTs_300120_2 where heo is not null and heo like '%p. m.%' and heo_2 is null order by hh
--update ots_300120_2 set heo_2 = concat((12+SUBSTRING(heo,1,1)), SUBSTRING(heo,2,6))where heo is not null and heo like '%p. m.%' and heo_2 is null
--select noot, feo, heo, (12+SUBSTRING(heo,1,2)) hh, SUBSTRING(heo,3,6) rr, concat(12+SUBSTRING(heo,1,2),SUBSTRING(heo,3,6)) heo_ok from OTs_300120_2 where substring(heo,1,2) < 9 and heo is not null and heo_2 is null order by hh
--update ots_300120_2 set heo_2 = concat(12+SUBSTRING(heo,1,2),SUBSTRING(heo,3,6)) where substring(heo,1,2) < 9 and heo is not null and heo_2 is null
--select noot, feo, heo, SUBSTRING(heo,1,2) hh, concat(SUBSTRING(heo,1,5),':00') heo_ok from OTs_300120_2 where len(heo) = 5 and heo is not null and heo_2 is null order by hh
--update ots_300120_2 set heo_2 = concat(SUBSTRING(heo,1,5),':00') where len(heo) = 5 and heo is not null and heo_2 is null
--select noot, feo, heo, SUBSTRING(heo,1,2) hh from OTs_300120_2 where heo is not null and heo_2 is null order by hh
--update ots_300120_2 set heo_2 = heo  where heo is not null and heo_2 is null 
--select noot, feo, heo, concat(substring(feo,7,4),substring(feo,4,2),substring(feo,1,2),' ',heo_2) feo_ok from OTs_300120_2 where heo_2 is not null order by feo_ok
--update ots_300120_2 set feo_2 = concat(substring(feo,7,4),substring(feo,4,2),substring(feo,1,2),' ',heo_2) where heo_2 is not null

select * from ots_300120_2 where noot not in (select idot from ots)-499

--obtenemos el idSolicitante desde la tabal ots_310120
--update ots_300120_2 
set    ots_300120_2.idsolicitante = ots_310120.idSolicitante
from   ots_300120_2 join ots_310120 on ots_310120.noot = ots_300120_2.noot--1287

select noot from ots_300120_2 where noot not in (select idot from ots) and idareasol is null --499
--update ots_300120_2 
set    ots_300120_2.idareasol = ots_310120.idareasol
from   ots_300120_2 join ots_310120 on ots_310120.noot = ots_300120_2.noot--1287


select noot from ots_300120_2 where noot not in (select idot from ots) and idareasol is null --166

--calculamos el idareaasig
select noot from ots_300120_2 where noot not in (select idot from ots) and idareaasig is null --499
--update ots_300120_2 
set    ots_300120_2.idareaasig = ots_310120.idareaasig
from   ots_300120_2 join ots_310120 on ots_310120.noot = ots_300120_2.noot--1287


select noot from ots_300120_2 where noot not in (select idot from ots) and idareaasig is null --99



--calculamos el idestatus
select noot from ots_300120_2 where noot not in (select idot from ots) and idareaasig is null --499
--update ots_300120_2 
set    ots_300120_2.idareaasig = ots_310120.idareaasig
from   ots_300120_2 join ots_310120 on ots_310120.noot = ots_300120_2.noot--1287


select noot from ots_300120_2 where noot not in (select idot from ots) and idareaasig is null --99

select distinct(ESTATUS) from dbo.ots_300120_2 where idEstatus is null order by ESTATUS;
select * from dbo.ots_300120_2 where ESTATUS is null;

--update ctrlOts.dbo.ots_300120_2 set idEstatus = 5 where ESTATUS IN ('ATENDIDA','TERMINADO');
--update ctrlOts.dbo.ots_300120_2 set idEstatus = 4 where ESTATUS in ('EN PROCESO','ABIERTO');
--update ctrlOts.dbo.ots_300120_2 set idEstatus = 3 where ESTATUS = 'QA';
--update ctrlOts.dbo.ots_300120_2 set idEstatus = 2 where ESTATUS = 'USUARIO';




select top 100 * from ots_300120_2



--obtenemos el programa, subprograma, tipo_Servicio de la tabla ots_310120
--update ots_300120_2 
set    ots_300120_2.idprograma    = ots_310120.idprograma,
       ots_300120_2.idsubprograma = ots_310120.idsubprograma,
       ots_300120_2.idtiposerv    = ots_310120.idtiposerv
from   ots_300120_2 join ots_310120 on ots_310120.noot = ots_300120_2.noot--1287

select noot from ots_300120_2 where noot not in (select idot from ots) and idprograma is null --166
select noot from ots_300120_2 where noot not in (select idot from ots) and idsubprograma is null --166
select noot from ots_300120_2 where noot not in (select idot from ots) and idtiposerv is null --166


--select noot, programa, idprograma, subprograma,  idsubprograma, idtiposerv from ots_170120 where noot in (select noot from ots_300120_2 where noot not in (select idot from ots) and idprograma is null)
--select noot, idprograma,  idsubprograma, idtiposerv from ots_310120 where noot in (select noot from ots_300120_2 where noot not in (select idot from ots) and idprograma is null)


--obtenemos la Urgencia y la Complejidad de la tabla ots_310120
select o302.noot, --o31.Urgencia,
	   o31.idUrgencia,--o31.complejidad, 
	   o31.idComplejidad
from   ots_300120_2 o302
join   ots_140120 o31 on o31.noot = o302.noot
where  o302.noot not in (select idot from ots)

--llenamos la tabla ots con los datos de la tabla 140120
--insert into ots 
select noot, SUBSTRING(noot,5,4) contOT, fecrecsol, '' DESCRIPCION, idAreaSol,idSolicitante,idAreaAsig, fecEnvio, idEstatus,5 idu,5 idC,0 tiempAtn, null fecha_atn, FecEntOrd, null enTiempo, null observ, null observCancel, null observAtn, 
	   idprograma, idsubprograma, idtiposerv, Beneficiarios, monto, Rechazos, Monto_rechazado
from OTs_300120_2 where noot not in (select idot from ots) 

--select * from OTs_170120 where noot not in (select idot from ots) 

select * from urgencia
select * from complejidad
select * from areaSolicitante
select * from areaasignacion
select top 10 * from personas

insert into urgencia values(5,'Pendiente');
insert into complejidad values(5,'Pendiente');
insert into areaSolicitante values(28,'Pendiente');
insert into areaAsignacion values(0,'Pendiente');
insert into personas values(0,'Pendiente','','','','');
update ots_300120_2 set idAreaSol = 28 where idAreaSol is null
update ots_300120_2 set idAreaAsig = 0 where idAreaAsig is null
update ots_300120_2 set idSolicitante = 0 where idsolicitante is null
update ots_300120_2 set fecEnvio = '20200101' where fecEnvio is null --166

--update ots_300120_2 set fecrecsol  = frs_2 where frs_2 is not null
--update ots_300120_2 set feciniproc = fip_2 where fip_2 is not null
--update ots_300120_2 set fecENTORD  = feo_2 where feo_2 is not null

select top 10 * from ots_170120 order by Fecha_Recep_sol desc

--validamos si existen las 166 ots en la tabla 200120
select count(*)
from ots_300120_2 t1 join ots_170120 t2 on t2.noot = t1.noot
where t1.idprograma is null

--generamos idPrograma, idSubprogama, idTipoServ en la tabla ots_170120
alter table ots_170120 add idPrograma int;
alter table ots_170120 add idSubPrograma int;
alter table ots_170120 add idTipoServ int;


--update ots_300120_2 
set    ots_300120_2.idprograma    = ots_170120.idprograma,
       ots_300120_2.idsubprograma = ots_170120.idsubprograma,
       ots_300120_2.idtiposerv    = ots_170120.idtiposerv
from   ots_300120_2 join ots_170120 on ots_170120.noot = ots_300120_2.noot--

update ots set beneficiarios = 0 where beneficiarios is null
update ots set monto = 0 where monto is null
update ots set rechazos = 0 where rechazos is null
update ots set montoRechazo = 0 where montoRechazo is null



--select top 10 * from ots
--select top 10 * from ots where contOT is null




--drop view v_ots
--create view v_OTs as
select --top 200 
	   [idOT]						OT
      ,convert(varchar,[fechaSol],120)  Fecha_Solicitud
      ,[Descrip] 							Descripcion
      ,AS_.nomAS 							Area_Solicitante
      ,P_.nomPersona + ' ' + P_.apPersona 	Solicitante
      ,AA_.nomAA 							Area_Asignacion
	  ,CP_.NombrePrograma 					Programa
      ,CS_.NombreSubPrograma 				SubPrograma
      ,TS_.NombreTS 						Tipo_Servicio
      ,[fechaEnvio] 						Fecha_Envio
      ,SO_.nomStatus 						Estatus
      ,U_.nomUrgencia 						Urgencia
      ,C_.nomComplejidad 					Complejidad
      ,[tiempoAtn] 							Tiempo_Atencion
      ,[fechaAtn] 							Fecha_Atencion
      ,[fechaEntrega] 						Fecha_Entrega
      ,[enTiempo]							En_Tiempo
      ,Observaciones
      ,[obserCancel]						Observaciones_Cancelacion
      ,[obserAtn]							Observaciones_Atencion
      ,Beneficiarios
      ,Monto
      ,Rechazos
      ,[montoRechazo]						Monto_Rechazos
from ots oo
join   AreaSolicitante  AS_ on AS_.idAS 		 = oo.idAreaSol
join   Personas 	 	 P_ on  P_.idPersona     = oo.idSolicitante
join   AreaAsignacion   AA_ on AA_.idAA 		 = oo.idAreaAsig
join   StatusOT		    SO_ on SO_.idStatus      = oo.idEstatus
join   Urgencia		     U_ on  U_.idUrgencia    = oo.idUrgencia
join   Complejidad	     C_ on  C_.idComplejidad = oo.idComplejidad
join   cat_Programa	    CP_ on CP_.idPrograma    = oo.idPrograma
join   cat_SubPrograma  CS_ on CS_.idsubprograma = oo.idSubPrograma
join   cat_TipoServicio TS_ on TS_.idts   	     = oo.idTipoServ
*/


select  top 10 * from v_ots order by ot
--select  * from v_ots where ot is null order by ot