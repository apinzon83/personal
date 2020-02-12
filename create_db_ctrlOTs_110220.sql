/* 
Create tables

USE [ctrlOTs]
GO

CREATE TABLE [dbo].[DireccionAdjunta](
	[idDA] [int] NOT NULL primary key,
	[nomDA] [varchar](255) NOT NULL,
	[abrevDA] [varchar](255) NOT NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[Direcciones](
	[idDireccion] [int] NOT NULL primary key,
	[iddireccionAdjunta] int not null,
	[nomDireccion] [varchar](255) NOT NULL,
	[abrevDireccion] [varchar](255) NOT NULL
) ON [PRIMARY]

alter table [dbo].[Direcciones] ADD FOREIGN KEY (iddireccionAdjunta) REFERENCES dbo.DireccionAdjunta(idDA);

CREATE TABLE [dbo].[Subdireccion](
	[idSubdireccion] [int] NOT NULL primary key ,
	[nomSubdireccion] [nvarchar](255) NOT NULL,
	[abrevSubdireccion] [nvarchar](255) NOT NULL,
	[idDireccion] [int] NOT NULL
) ON [PRIMARY];

alter table [dbo].[subDireccion] ADD FOREIGN KEY (iddireccion) REFERENCES dbo.direcciones(iddireccion);

CREATE TABLE [dbo].[Gerencias](
	[idGerencia] [int] NOT NULL primary key,
	[idSubdireccion] [int] NOT NULL,
	[nomGerencia] [varchar](255) NOT NULL,
	[abrevGerencia] [varchar](255) NOT NULL
) ON [PRIMARY];

alter table [dbo].[Gerencias] ADD FOREIGN KEY (idsubdireccion) REFERENCES dbo.subdireccion(idsubdireccion);

--DROP TABLE [dbo].[Puestos];
CREATE TABLE [dbo].[Puestos](
	[idNivelPuesto] [int] NOT NULL primary key,
	[NombrePuesto] [nvarchar](255) NOT NULL,
) ON [PRIMARY]


CREATE TABLE [dbo].[Personas](
	[idPersona] [int] NOT NULL primary key,
	[nomPersona] [nvarchar](100) NOT NULL,
	[apPersona] [nvarchar](100) NOT NULL,
	[amPersona] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[extension] [nvarchar](10) NULL
) ON [PRIMARY];

CREATE TABLE [dbo].[relPuestoPersona](
	[idRP] [int] NOT NULL primary key,
	[idDA] [int] ,
	[idDireccion] [int],
	[idSubDireccion] [int],
	[idGerencia] [int],
	[idPersona] [int] NOT NULL,
	[f_inicio] [date],
	[f_fin] [date],
	[status] [bit] NOT NULL
) ON [PRIMARY]

alter table [dbo].[relPuestoPersona] ADD FOREIGN KEY (idDA) REFERENCES dbo.DireccionAdjunta(idDA);
alter table [dbo].[relPuestoPersona] ADD FOREIGN KEY (idDireccion) REFERENCES dbo.Direcciones(idDireccion);
alter table [dbo].[relPuestoPersona] ADD FOREIGN KEY (idSubDireccion) REFERENCES dbo.SubDireccion(idSubDireccion);
alter table [dbo].[relPuestoPersona] ADD FOREIGN KEY (idGerencia) REFERENCES dbo.Gerencias(idGerencia);
alter table [dbo].[relPuestoPersona] ADD FOREIGN KEY (idPersona) REFERENCES dbo.Personas(idPersona);

CREATE TABLE [dbo].[Usuarios](
	[idUsr]  [int] NOT NULL primary key,
	[Usr]	 [nvarchar](20) NOT NULL,
	[pass]   [nvarchar](50) not null,
	[nomUsr] [nvarchar](50) NOT NULL,
	[apUsr]  [nvarchar](50) NOT NULL,
	[amUsr]  [nvarchar](50),
	[emailUsr] [nvarchar](50) NOT NULL,
	[perfil] [int] not null,
	[status] [bit] NOT NULL
) ON [PRIMARY];
--alter table dbo.Usuarios add perfil int;

create table dbo.AreaAsignacion (
	[idAA] [int] primary key,
	[nomAA] [nvarchar](50) 
) on [Primary];

create table dbo.StatusOT (
	[idStatus] [int] primary key,
	[nomStatus] [nvarchar](50) 
) on [Primary];

create table dbo.Urgencia (
	[idUrgencia] [int] primary key,
	[nomUrgencia] [nvarchar](50) 
) on [Primary];

create table dbo.Complejidad (
	[idComplejidad] [int] primary key,
	[nomComplejidad] [nvarchar](50) 
) on [Primary];

CREATE TABLE [dbo].[OTs](
	[idOT]			[nvarchar](15) primary key, -- SMS-1234-19		[direccion]-[consecutivo 4 dig]-[a�o]
	[contOT]		[int] NOT NULL,				-- 1234				consecutivo
	[fechaSol]		[datetime] NOT NULL,		
	[Descrip]		[nvarchar](max) NOT NULL,
	[idAreaSol]		[int] NOT NULL,
	[idSolicitante] [int] not null,
	[idAreaAsig]	[int] NOT NULL,
	[fechaEnvio]	[datetime] NOT NULL,
	[idEstatus]		[int] NOT NULL,
	[idUrgencia]	[int] NOT NULL,
	[idComplejidad]	[int] NOT NULL,
	[tiempoAtn]		[int],
	[fechaAtn]		[datetime],
	[fechaEntrega]	[datetime],
	[enTiempo]		[bit],
	[observaciones] [nvarchar](max),
	[obserCancel]	[nvarchar](max),
	[obserAtn]		[nvarchar](max)
) ON [PRIMARY];

alter table [dbo].[OTs] ADD FOREIGN KEY (idAreaSol)		REFERENCES dbo.Direcciones(idDireccion);
alter table [dbo].[OTs] ADD FOREIGN KEY (idSolicitante) REFERENCES dbo.Personas(idPersona);
alter table [dbo].[OTs] ADD FOREIGN KEY (idAreaAsig)	REFERENCES dbo.AreaAsignacion(idAA);
alter table [dbo].[OTs] ADD FOREIGN KEY (idEstatus)		REFERENCES dbo.StatusOT(idStatus);
alter table [dbo].[OTs] ADD FOREIGN KEY (idUrgencia)	REFERENCES dbo.Urgencia(idUrgencia);
alter table [dbo].[OTs] ADD FOREIGN KEY (idComplejidad) REFERENCES dbo.Complejidad(idComplejidad);

go

*/





/*

inserts 

insert into dbo.DireccionAdjunta values( 1,'Direcci�n General'										  ,'DG'    );
insert into dbo.DireccionAdjunta values( 2,'Direcci�n General Adjunta de Banca Social'				  ,'DGABS' );
insert into dbo.DireccionAdjunta values( 3,'Direcci�n General Adjunta de Finanzas'					  ,'DGAF'  );
insert into dbo.DireccionAdjunta values( 4,'Direcci�n General Adjunta de Inclusi�n Financiera'		  ,'DGAIF' );
insert into dbo.DireccionAdjunta values( 5,'Direcci�n General Adjunta de Tecnolog�a y Operaci�n'	  ,'DGATyO');
insert into dbo.DireccionAdjunta values( 6,'Direcci�n General Adjunta Jur�dica'						  ,'DGAJ'  );
insert into dbo.DireccionAdjunta values( 7,'Direcci�n General Adjunta de Estrategia Corporativa'	  ,'DGAEC');
insert into dbo.DireccionAdjunta values( 8,'Direcci�n General Adjunta de Administraci�n'			  ,'DGAA');
insert into dbo.DireccionAdjunta values( 9,'Organo Interno de Control'								  ,'OIC');
insert into dbo.DireccionAdjunta values(10,'Direcci�n de Administraci�n y Control Integral de Riesgos','DACIR');
insert into dbo.DireccionAdjunta values(11,'Direcci�n de Contralor�a Interna'						  ,'DCI');
insert into dbo.DireccionAdjunta values(12,'Direcci�n de Auditor�a Interna'							  ,'DAI');



insert into dbo.direcciones values(1,2,'Direcci�n de Sucursales'	 ,'DS'   );
insert into dbo.direcciones values(2,2,'Direcci�n de Canales Masivos','DGABS');
insert into dbo.direcciones values(3,2,'Direcci�n de Promoci�n'	     ,'DP'   ); 

insert into dbo.direcciones values(4,3,'Direcci�n de Tesorer�a'			   ,'DT' );
insert into dbo.direcciones values(5,3,'Direcci�n de Contabilidad'		   ,'DC' );
insert into dbo.direcciones values(6,3,'Direcci�n de Planeaci�n Financiera','DPF');

insert into dbo.direcciones values(7,4,'Direcci�n de Productos, Programas y Educaci�n Financiera','DPPEF');
insert into dbo.direcciones values(8,4,'Direcci�n de Desarrollo e Inclusi�n del Sector'		     ,'DDIS' );

insert into dbo.direcciones values( 9,5,'Direcci�n de Infraestructura y Producci�n'		     ,'DIP' );
insert into dbo.direcciones values(10,5,'Direcci�n de Desarrollo y Mantenimiento de Sistemas','DDMS');
insert into dbo.direcciones values(11,5,'Direcci�n de Operaci�n Tradicional'				 ,'DOT' );

insert into dbo.direcciones values(12,6,'Direcci�n Jur�dica de Asuntos Corporativos y Contenciosos','DJACC');
insert into dbo.direcciones values(13,6,'Direcci�n Jur�dica de Negocios'						   ,'DJN'  );

insert into dbo.direcciones values(14,7,'Direcci�n de Estrategia y Evaluaci�n'  ,'DEE');
insert into dbo.direcciones values(15,7,'Direcci�n de Vinculaci�n Institucional','DVI');

insert into dbo.direcciones values(16,8,'Direcci�n de Presupuesto'		  ,'DP' );
insert into dbo.direcciones values(17,8,'Direcci�n de Recursos Humanos'	  ,'DRH');
insert into dbo.direcciones values(18,8,'Direcci�n de Recursos Materiales','DRM');

insert into dbo.direcciones values(19,9,'�rea de Auditor�a'		   ,'AA');
insert into dbo.direcciones values(20,9,'�rea de Responsabilidades','AR');
insert into dbo.direcciones values(21,9,'�rea de Quejas'		   ,'AQ');

insert into dbo.direcciones values(22,10,'Subdirecci�n de Riesgo de Cr�dito y Concentraci�n','SRCC');
insert into dbo.direcciones values(23,10,'Subdirecci�n de Riesgos de Mercado y Liquidez'	 ,'SRM');
insert into dbo.direcciones values(24,10,'Subdirecci�n de Riesgo Operacional'				 ,'SRO');

insert into dbo.direcciones values(25,11,'Subdirecci�n de Procesos y Enlace'			  ,'SPE' );
insert into dbo.direcciones values(26,11,'Subdirecci�n de Control Interno y Cumplimiento','SCIC');

insert into dbo.direcciones values(27,12,'Subdirecci�n de Auditor�a a �reas Sustantivas'								   ,'SAAS'   );
insert into dbo.direcciones values(28,12,'Subdirecci�n de Auditor�a al Sistema de Control Interno, Tecnolog�a y Operaci�n','SASCITO');





insert into dbo.Subdireccion values(  1, 'Subdirecci�n Divisional Centro-Norte'		, 'SDCN', 1);
insert into dbo.Subdireccion values(  2, 'Subdirecci�n Divisional Sur'				, 'SDCS', 1);
insert into dbo.Subdireccion values(  3, 'Subdirecci�n de Estrategia Comercial'		, 'SEC'	, 1);
insert into dbo.Subdireccion values(  4, 'Subdirecci�n de Negocios y Corresponsales', 'SNC'	, 1);

insert into dbo.Subdireccion values(  5, 'Subdirecci�n Divisional Canales Alternos de Atenci�n Masiva', 'SDCAAM', 2);
insert into dbo.Subdireccion values(  6, 'Subdirecci�n de Canales Digitales para la Atenci�n Masiva'  , 'SCDAM' , 2);
insert into dbo.Subdireccion values(  7, 'Subdirecci�n de Soporte Operativo a Canales Alternos'		  , 'SSOCA' , 2);

insert into dbo.Subdireccion values(  8, 'Subdirecci�n de Promoci�n', 'SP', 3);

insert into dbo.Subdireccion values(  9, 'Subdirecci�n de Operaci�n y Promoci�n de BIDES', 'SOPBIDES', 4);
insert into dbo.Subdireccion values( 10, 'Subdirecci�n de Tesorer�a'					 , 'ST'		 , 4);
insert into dbo.Subdireccion values( 11, 'Subdirecci�n de Mercado de Dinero'			 , 'SMD'	 , 4);

insert into dbo.Subdireccion values( 12, 'Subdirecci�n Fiscal y Control de Facturaci�n'	   , 'SFCF', 5);
insert into dbo.Subdireccion values( 13, 'Subdirecci�n de Contabilidad'					   , 'SC'  , 5);
insert into dbo.Subdireccion values( 14, 'Subdirecci�n de Regulaci�n Financiera y Contable', 'SRFC', 5);

insert into dbo.Subdireccion values( 15, 'Subdirecci�n de Planeaci�n Estrat�gica y Financiera', 'SPEF', 6);
insert into dbo.Subdireccion values( 16, 'Subdirecci�n de Financiamiento Internacional'		  , 'SFI' , 6);

insert into dbo.Subdireccion values( 17, 'Subdirecci�n de Dise�o y Desarrollo de Productos y Programas', 'SDDPP', 7);
insert into dbo.Subdireccion values( 18, 'Subdirecci�n de Educaci�n Financiera'						   , 'SEF'  , 7);

insert into dbo.Subdireccion values( 19, 'Subdirecci�n de Gesti�n de Redes del Sector', 'SGRS', 8);
insert into dbo.Subdireccion values( 20, 'Subdirecci�n para el Desarrollo del Sector' , 'SDS' , 8);

insert into dbo.Subdireccion values( 21, 'Subdirecci�n de Control de Producci�n'			, 'SCP' , 9);
insert into dbo.Subdireccion values( 22, 'Subdirecci�n de Administraci�n de Infraestructura', 'SAI' , 9);

insert into dbo.Subdireccion values( 23, 'Subdirecci�n de Desarrollo de Software'     , 'SDS' , 10);
insert into dbo.Subdireccion values( 24, 'Subdirecci�n de Mantenimiento de Software'  , 'SMS' , 10);
insert into dbo.Subdireccion values( 25, 'Subdirecci�n de Aseguramiento de la Calidad', 'SAC' , 10);

insert into dbo.Subdireccion values( 26, 'Subdirecci�n de Control de Operaciones'		   , 'SCO' , 11);
insert into dbo.Subdireccion values( 27, 'Subdirecci�n de Caja General y Cr�dito'		   , 'SCGC', 11);
insert into dbo.Subdireccion values( 28, 'Subdirecci�n de Operaci�n de Productos Bancarios', 'SOPB', 11);

insert into dbo.Subdireccion values( 29, 'Subdirecci�n de Asuntos Contenciosos y Penales', 'SACP', 12);
insert into dbo.Subdireccion values( 30, 'Subdirecci�n de Gobierno Corporativo'			 , 'SGC' , 12);

insert into dbo.Subdireccion values( 31, 'Subdirecci�n Fiduciaria'							  , 'SF',   13);
insert into dbo.Subdireccion values( 32, 'Subdirecci�n de Contratos y Operaciones Financieras', 'SCOF', 13);

insert into dbo.Subdireccion values( 33, 'Subdirecci�n de Monitoreo, Seguimiento y Evaluaci�n'			   , 'SMSE' , 14);
insert into dbo.Subdireccion values( 34, 'Subdirecci�n de Estrategia Institucional y Rentabilidad Integral', 'SEIRI', 14);

insert into dbo.Subdireccion values( 35, 'Subdirecci�n de Comunicaci�n Social', 'SCS', 15);
insert into dbo.Subdireccion values( 36, 'Subdirecci�n de T�cnica y de Enlace', 'STE', 15);

insert into dbo.Subdireccion values( 37, 'Subdirecci�n de Control Presupuestal', 'SCP', 16);

insert into dbo.Subdireccion values( 38, 'Gerencia de Servicio M�dico'									 , 'GSM' , 17);
insert into dbo.Subdireccion values( 39, 'Subdirecci�n de Desarrollo Organizacional y Profesionalizaci�n', 'SDOP', 17);

insert into dbo.Subdireccion values( 40, 'Gerencia de Seguridad', 'GS', 18);
insert into dbo.Subdireccion values( 41, 'Subdirecci�n de Adquisiciones y Contrataci�n de Servicios', 'S', 18);

insert into dbo.Subdireccion values( 42, 'Gerencia de Mejora de la Gesti�n', 'GMG', 19);
insert into dbo.Subdireccion values( 43, 'Gerencia de Auditor�a Interna'   , 'GAI', 19);

insert into dbo.Subdireccion values( 44, 'Gerencia de Administraci�n de Riesgos de Cr�dito y Apoyos a EACP�s', 'GARCAEACP', 22);

insert into dbo.Subdireccion values( 45, 'Gerencia de Administraci�n de Riesgos Operativo y Legal'				, 'GAROL',  24);
insert into dbo.Subdireccion values( 46, 'Gerencia de Administraci�n de Riesgos Tecnol�gico y No Cuantificables', 'GARTNC', 24);

insert into dbo.Subdireccion values( 47, 'Gerencia de Control Operacional y Seguridad de la Informaci�n', 'GCOSI', 25);
insert into dbo.Subdireccion values( 48, 'Gerencia de M�todos y Procedimientos'							, 'GMP'  , 25);

insert into dbo.Subdireccion values( 49, 'Gerencia de Prevenci�n de Fraudes'					, 'GPF'  , 26);
insert into dbo.Subdireccion values( 50, 'Gerencia de Prevenci�n de Lavado de Dinero'			, 'GPLD' , 26);
insert into dbo.Subdireccion values( 51, 'Gerencia de Control Interno, Corresponsales y Cr�dito', 'GCICC', 26);

insert into dbo.Subdireccion values( 52, 'Gerencia de Auditor�a a Sucursales'												  , 'GAS'	  , 27);
insert into dbo.Subdireccion values( 53, 'Gerencia de Auditor�a a Cr�dito, Finanzas, Prevenci�n de Lavado de Dinero y Riesgos', 'GACFPLDR', 27);

insert into dbo.Subdireccion values( 54, 'Gerencia de Auditor�a a Tecnolog�a, Comunicaciones y Operaci�n Tradicional', 'GATCOT', 28);
insert into dbo.Subdireccion values( 55, 'Gerencia de Auditor�a al Sistema de Control Interno y Especificas'		 , 'GASCIE', 28);



insert into dbo.Gerencias values ( 1,1,'Gerencia de Red de Sucursales Centro-Norte','GRSCN');

insert into dbo.Gerencias values ( 2,2,'Gerencia de Red de Sucursales Sur','GRSS');

insert into dbo.Gerencias values ( 3,3,'Gerencia de Estrategia Comercial','GEC');

insert into dbo.Gerencias values ( 4,4,'Gerencia de Estrategia Negocios y Corresponsales','GENC');

insert into dbo.Gerencias values ( 5,5,'Gerencia de Atenci�n Masiva de Canales Alternos'	  ,'GAMCA');
insert into dbo.Gerencias values ( 6,5,'Gerencia de Productos y Servicios Financieros Masivos','GPSFM');

insert into dbo.Gerencias values ( 7,6,'Gerencia de Banca Electr�nica y Tarjetas','GBET');

insert into dbo.Gerencias values ( 8,7,'Gerencia de Dispersi�n y Control','GDC');

insert into dbo.Gerencias values ( 9,8,'Gerencia de Promoci�n de Productos','GPP');

insert into dbo.Gerencias values ( 10,9,'Gerencia de Promoci�n de Mercados','GPM');

insert into dbo.Gerencias values ( 11,12,'Gerencia de Fiscal','GF');

insert into dbo.Gerencias values ( 12,13,'Gerencia de Contabilidad Financiera','GCF');

insert into dbo.Gerencias values ( 13,14,'Gerencia de Regulaci�n y Operaciones con Valores','GROV');

insert into dbo.Gerencias values ( 14,15,'Gerencia de Planeaci�n Estrat�gica','GPE');

insert into dbo.Gerencias values ( 15,16,'Gerencia de Control Financiero Internacional','GCFI');
insert into dbo.Gerencias values ( 16,16,'Gerencia de Financiamiento Internacional'	   , 'GFI');

insert into dbo.Gerencias values ( 17,17,'Gerencia de Dise�o y Optimizaci�n de Productos y Programas'   ,'GDOPP');
insert into dbo.Gerencias values ( 18,17,'Gerencia de Desarrollo y Seguimiento de Productos y Programas','GDSPP');

insert into dbo.Gerencias values ( 19,19,'Gerencia de Gesti�n de Redes del Sector','GGRS');

insert into dbo.Gerencias values ( 20,21,'Gerencia de C�mputo'					  , 'GC'  );
insert into dbo.Gerencias values ( 21,21,'Gerencia de Medios Electr�nicos de Pago', 'GMEP');
insert into dbo.Gerencias values ( 22,21,'Gerencia de Informaci�n'				  , 'GI'  );

insert into dbo.Gerencias values ( 23,22,'Gerencia de Telecomunicaciones'  ,'GT' );
insert into dbo.Gerencias values ( 24,22,'Gerencia de Seguridad Perimetral','GSP');
insert into dbo.Gerencias values ( 25,22,'Gerencia de Servicio Tecnol�gico','GST');

insert into dbo.Gerencias values ( 26,23,'Gerencia de Desarrollo','GD');

insert into dbo.Gerencias values ( 27,25,'Gerencia de Pruebas y Aseguramiento de la Calidad', 'GPAC');

insert into dbo.Gerencias values ( 28,26, 'Gerencia de Control Operativo Contable', 'GCOC');
insert into dbo.Gerencias values ( 29,26, 'Gerencia de Compensaci�n y Liquidaci�n', 'GCL' );
insert into dbo.Gerencias values ( 30,26, 'Gerencia de Operaci�n de Cartera'	  , 'GOC' );

insert into dbo.Gerencias values ( 31,27,'Gerencia de Caja General', 'GCG');

insert into dbo.Gerencias values ( 32,28,'Gerencia de Operaci�n de Productos de la Red de la Gente', 'GOPRG');
insert into dbo.Gerencias values ( 33,28,'Gerencia de Aclaraciones'								   , 'GA'	);
insert into dbo.Gerencias values ( 34,28,'Gerencia de Transferencias Bancarias'					   , 'GTB'  );

insert into dbo.Gerencias values ( 35,29,'Gerencia de Litigio "A"', 'GLA');
insert into dbo.Gerencias values ( 36,29,'Gerencia de Litigio "B"', 'GLB');

insert into dbo.Gerencias values ( 37,30, 'Gerencia Jur�dica Corporativa', 'GJC');

insert into dbo.Gerencias values ( 38,31,'Gerencia de Promoci�n Fiduciaria' 	, 'GPF');
insert into dbo.Gerencias values ( 39,31,'Gerencia de Administraci�n Fiduciaria', 'GAF');
insert into dbo.Gerencias values ( 40,31,'Gerencia de Contabilidad Fiduciaria'  , 'GCF');

insert into dbo.Gerencias values ( 41,32,'Gerencia de Contratos y Servicios "A"', 'GCSA');
insert into dbo.Gerencias values ( 42,32,'Gerencia de Contratos y Servicios "B"', 'GCSB');

insert into dbo.Gerencias values ( 43,33,'Gerencia de Evaluaci�n de la Gesti�n', 'GEG');

insert into dbo.Gerencias values ( 44,34,'Gerencia de Planeaci�n y An�lisis Estrat�gico', 'GPAE');

insert into dbo.Gerencias values ( 45, 35, 'Gerencia de An�lisis y Seguimiento T�cnico', 'GAST');

insert into dbo.Gerencias values ( 46, 36, 'Gerencia de Control de Gesti�n y Administraci�n', 'GCGA');

insert into dbo.Gerencias values ( 47, 37, 'Gerencia de An�lisis y Evaluaci�n de Presupuesto', 'GAEP');
insert into dbo.Gerencias values ( 48, 37, 'Gerencia de Pagos y Conciliaciones'				 , 'GPC' );
insert into dbo.Gerencias values ( 49, 37, 'Gerencia de Normatividad Presupuestaria'		 , 'GNP' );

insert into dbo.Gerencias values ( 50, 39, 'Gerencia de Remuneraciones y N�mina', 'GRN');
insert into dbo.Gerencias values ( 51, 39, 'Gerencia de Desarrollo Organizacional'  , 'GDO');

insert into dbo.Gerencias values ( 52, 41, 'Gerencia de Adquisiciones'			    , 'GA' );
insert into dbo.Gerencias values ( 53, 41, 'Gerencia de Servicios Administrativos'  , 'GSA');
insert into dbo.Gerencias values ( 54, 41, 'Gerencia de Administraci�n Inmobiliaria', 'GAI');

insert into dbo.Gerencias values ( 55, 42, 'Gerencia de ', 'G');




insert into dbo.Urgencia values (1,'Baja');
insert into dbo.Urgencia values (2,'Media');
insert into dbo.Urgencia values (3,'Alta');
insert into dbo.Urgencia values (4,'Muy Alta');



insert into dbo.Complejidad values (1,'Baja');
insert into dbo.Complejidad values (2,'Media');
insert into dbo.Complejidad values (3,'Alta');
insert into dbo.Complejidad values (4,'Muy Alta');



insert into dbo.StatusOT values (1, 'Canceladas');
insert into dbo.StatusOT values (2, 'Con Usuario');
insert into dbo.StatusOT values (3, 'En QA');
insert into dbo.StatusOT values (4, 'En Proceso');
insert into dbo.StatusOT values (5, 'Atendidas');



insert into dbo.Usuarios values (1, 'apinzon'	,'123', 'Alberto', 'Pinz�n'	  , 'F'	     , 'japinzon@bancodelbienestar.gob.mx'  , 1);
insert into dbo.Usuarios values (2, 'sdominguez','456', 'Susana' , 'Dominguez', '�lvarez', 'sdominguez@bancodelbienestar.gob.mx', 1);
insert into dbo.Usuarios values (3, 'aarredondo','789', 'Adriana', 'Arredondo', 'Eulogio', 'aarredondo@bancodelbienestar.gob.mx', 1);




insert into dbo.personas values (1,'Rabindranath','Salazar','Solorio','','3444');
insert into dbo.personas values (2,'Yesica','Miranda','','','4102');
insert into dbo.personas values (3,'Sandra','Mariscal','Ram�rez','','3357');
insert into dbo.personas values (4,'Angelica','Torres','de la Cruz','','4786');
insert into dbo.personas values (5,'Ma. de los Angeles','Hidalgo','','','4493');
insert into dbo.personas values (6,'Ma. De Jesus','Lozano','','','3446');
insert into dbo.personas values (7,'Ariadna','Guzm�n','Rodr�guez','','4548');
insert into dbo.personas values (8,'Luis Antonio','Ram�rez','Hern�ndez','','3400');
insert into dbo.personas values (9,'Rubicelia','Castro','','','4439');
insert into dbo.personas values (10,'Arturo','Osorio','Ram�rez','','3359');
insert into dbo.personas values (11,'Carlos Alberto','Tinoco','Bernal','','4086');
insert into dbo.personas values (12,'Lorena Rub�','Palacio','Mor�n','','3429');
insert into dbo.personas values (13,'Luis Enrique','Ramos','Ram�rez','','3312');
insert into dbo.personas values (14,'Rub�','Chi','Espa�a','','4584');
insert into dbo.personas values (15,'Fernando','Rabiela','Suazo','','3485');
insert into dbo.personas values (16,'Noelia','Casas','','','4422');
insert into dbo.personas values (17,'Jos� David','Santos','Salazar','','5227');
insert into dbo.personas values (18,'Mar�a Luisa','Medina','Trejo','','4092');
insert into dbo.personas values (19,'Fernando','Rosas','M�rquez','','4209');
insert into dbo.personas values (20,'�ngel El�as','Lara','Saba','','3422');
insert into dbo.personas values (21,'Gloria Adriana','Ruiz','Miranda','','4407');
insert into dbo.personas values (22,'Diana Fabiola','�lvarez','Salas','','4659');
insert into dbo.personas values (23,'Judith','Garc�a','','','4536');
insert into dbo.personas values (24,'Jos� Ignacio','Jim�nez','Retana','','3426');
insert into dbo.personas values (25,'Mar�a Eugenia','Cerezo','Galina','','4614');
insert into dbo.personas values (26,'Enrique','Becerril','Tarango','','3414');
insert into dbo.personas values (27,'Estefani','Popoca','','','4117');
insert into dbo.personas values (28,'Jacier Alejandro','Calvin','Moscosa','','4508');
insert into dbo.personas values (29,'Erick','Garc�a','Ram�rez','','5274');
insert into dbo.personas values (30,'Michel','Gonz�lez','','','4868');
insert into dbo.personas values (31,'Armando','Mart�nez','Palacios','','3332');
insert into dbo.personas values (32,'Adriana','Ju�rez','','','4468');
insert into dbo.personas values (33,'Gilberto','Trinidad','M�rquez','','3515');
insert into dbo.personas values (34,'Luis Alejandro','G�mez','Bravo','','3606');
insert into dbo.personas values (35,'Claudia Paola','Dominguez','Paniagua','','3519');
insert into dbo.personas values (36,'Daniela','Flores','Ram�rez','','4563');
insert into dbo.personas values (37,'Jos� Ernesto','Maldonado','','','4601');
insert into dbo.personas values (38,'Alejandro','Acevedo','Bohne','','4665');
insert into dbo.personas values (39,'Joaqu�n Andr�s','Borrel','Valenzuela','','3318');
insert into dbo.personas values (40,'Marina','Hern�ndez','','','4043');
insert into dbo.personas values (41,'Daniel','G�mez','Valdez','','4108');
insert into dbo.personas values (42,'Juan F.','S�nchez','Estrada','','4369');
insert into dbo.personas values (43,'Miguel A.','Rabadan','Calder�n','','3514');
insert into dbo.personas values (44,'Victor Abraham','Parra','Montiel','','4048');
insert into dbo.personas values (45,'Rafael','Casta�eda','Fern�ndez','','3353');
insert into dbo.personas values (46,'Diana','Rubio','Maldonado','','5086');
insert into dbo.personas values (47,'Diego Juli�n','Mutzenbecher','Padilla','','3316');
insert into dbo.personas values (48,'Alma Delia','Hern�ndez','','','3461');
insert into dbo.personas values (49,'Veronica','Rosas','Cort�s','','3319');
insert into dbo.personas values (50,'Maribel Emiliano','Brenis','','','3578');
insert into dbo.personas values (51,'Carlos Alejandro','Fern�ndez','S�nchez','','3317');
insert into dbo.personas values (52,'Humberto','Serrano','Ayala','','5030');
insert into dbo.personas values (53,'Rosa','Rodea','','','3574');
insert into dbo.personas values (54,'Salvador','Alem�n','Sollano','','3576');
insert into dbo.personas values (55,'Alejandra','Lira','Valdez','','4013');
insert into dbo.personas values (56,'Fernando','Gayt�n','Valle','','3358');
insert into dbo.personas values (57,'Cristina','Acosta','','','3413');
insert into dbo.personas values (58,'Aar�n','Silva','Nava','','5005');
insert into dbo.personas values (59,'Judith','Minian','','','3436');
insert into dbo.personas values (60,'Sergio Mart�n','Romero','Zerme�o','','3388');
insert into dbo.personas values (61,'Jorge','Mart�nez','Amezcua','','3412');
insert into dbo.personas values (62,'Rodolfo','Navarrete','L�pez','','3391');
insert into dbo.personas values (63,'Luis Angel','Canseco','Rodr�guez','','3342');
insert into dbo.personas values (64,'Daniela','Reyna','Alonso','','4557');
insert into dbo.personas values (65,'Ma. del Socorro','Zari�ana','Legu�zamo','','3401');
insert into dbo.personas values (66,'Elizabeth','','','','3518');
insert into dbo.personas values (67,'Alejandro','Soto','Ben�tez','','3328');
insert into dbo.personas values (68,'Jos� Miguel','Palacios','Fern�ndez','','5110');
insert into dbo.personas values (69,'Javier','Ram�rez','Mireles','','5049');
insert into dbo.personas values (70,'Luc�a','Buenrostro','S�nchez','','3334');
insert into dbo.personas values (71,'Luz Ma.','Cruz','','','3338');
insert into dbo.personas values (72,'Arturo Ramos','Elorduy','Cagigas','','4094');
insert into dbo.personas values (73,'Cecilia','Zamora','','','4571');
insert into dbo.personas values (74,'Ra�l','Ju�rez','S�nchez','','3580');
insert into dbo.personas values (75,'Elsa Lorena','Villeda','Romero','','');
insert into dbo.personas values (76,'Marco Antonio','Estrada','Z��iga','','4525');
insert into dbo.personas values (77,'Javier','Ch�vez','Minjares','','3365');
insert into dbo.personas values (78,'Francisco Javier','Landin','Robledo','','4781');
insert into dbo.personas values (79,'Paola','Malda','Arozarena','','3333');
insert into dbo.personas values (80,'Patricia','','','','');
insert into dbo.personas values (81,'Epifani','Palacios','Vazquez','','3566');
insert into dbo.personas values (82,'Ang�lica','Maldonado','Pe�a','','4319');
insert into dbo.personas values (83,'Adriana','Mart�nez','Bord�n','','3304');
insert into dbo.personas values (84,'Mar�a del Pilar','Beraza','Figueroa','','3500');
insert into dbo.personas values (85,'Paul','Hindriks','','','3302');
insert into dbo.personas values (86,'Andrea','Hernandez','','','5146');
insert into dbo.personas values (87,'Celia Eugenia','Estevan','Ram�rez','','3597');
insert into dbo.personas values (88,'Viridiana','Flores','Ochoa','','3506');
insert into dbo.personas values (89,'Samuel','Toledo','C�rdova','','3363');
insert into dbo.personas values (90,'Ma. Catalina','Hernandez','','','3305');
insert into dbo.personas values (91,'Danila','Peralta','Perkins','','5031');
insert into dbo.personas values (92,'Ana Lilia','Ramos','Urquieta','','5046');
insert into dbo.personas values (93,'Maria de Jesus','Lozanos ','','','3446');
insert into dbo.personas values (94,'L�zaro','Moguel','Loria','','3371');
insert into dbo.personas values (95,'Bernardo','Paz','Mart�nez','','4431');
insert into dbo.personas values (96,'Maria ','Castellanos','','','4416');
insert into dbo.personas values (97,'Cirilo Jos� Luis','Mora','Castro','','4172');
insert into dbo.personas values (98,'Naville Xolotzin','Garc�a','V�zquez','','4528');
insert into dbo.personas values (99,'Luis Jos� Manuel','Monta�o','S�nchez','','3403');
insert into dbo.personas values (100,'Andr�s','Huerta','Medina','','5235');
insert into dbo.personas values (101,'Ricardo','Espinoza','Ramos','','3344');
insert into dbo.personas values (102,'David Rams�s','Lugo','Morales','','3336');
insert into dbo.personas values (103,'Jos� Luis','Legorreta','Garc�a','','5050');
insert into dbo.personas values (104,'Elia Alejandra','Castro','Vargas','','3501');
insert into dbo.personas values (105,'Ram�n','Morales','Cruz','','5052');
insert into dbo.personas values (106,'Nahum','D�az','Serrano','','3546');
insert into dbo.personas values (107,'Juan Alfredo','Buxade','L�pez','','3386');
insert into dbo.personas values (108,'Francisco','V�zquez','Balmori','','3418');
insert into dbo.personas values (109,'Martha','de la O','Heredia','','5070');
insert into dbo.personas values (110,'David','Carrillo','Lara','','3510');
insert into dbo.personas values (111,'Ra�l','L�pez','Benitez','','3402');
insert into dbo.personas values (112,'Roberto Cristian','Archer','Aguirre','','4763');
insert into dbo.personas values (113,'Carlos Arturo','Gonz�lez','Gordillo','','3420');
insert into dbo.personas values (114,'Ana','Castro','','','3430');
insert into dbo.personas values (115,'Luis Fernando','Liceaga','Mu�oz','','3415');
insert into dbo.personas values (116,'Ma. Antonia','Gonz�lez','','','4403');
insert into dbo.personas values (117,'Andr�s','Espinosa','Cruz','','3423');
insert into dbo.personas values (118,'Mar�a del Rosario','Hern�ndez','','','4413');
insert into dbo.personas values (119,'Bernab� Rodolfo','Zecua','Mu�oz','','5055');

insert into dbo.AreaAsignacion values (1, 'INFOTEC');
insert into dbo.AreaAsignacion values (2, 'GERENCIA DE INFORMACION');
insert into dbo.AreaAsignacion values (3, 'Soporte UANL');
insert into dbo.AreaAsignacion values (4, 'Appwhere');
insert into dbo.AreaAsignacion values (5, 'ONE Project');

CREATE TABLE [dbo].[cat_Programa](
	[idPrograma]     [int]           NOT NULL primary key,
	[NombrePrograma] [nvarchar](255) NOT NULL,
) ON [PRIMARY]

CREATE TABLE [dbo].[cat_SubPrograma](
	[idSubPrograma]     [int]           NOT NULL primary key,
	[NombreSubPrograma] [nvarchar](255) NOT NULL,
) ON [PRIMARY]

CREATE TABLE [dbo].[cat_TipoServicio](
	[idTS]     [int]           NOT NULL primary key,
	[NombreTS] [nvarchar](255) NOT NULL,
) ON [PRIMARY]

go

select * from dbo.Personas
select * from dbo.relPuestoPersona
select * from dbo.DireccionAdjunta	where idDA = 1;
select * from dbo.direcciones;		--where iddireccionAdjunta = 12
select * from dbo.subdireccion;		--where idDireccion	 >= 27
select * from dbo.Gerencias;			--where idSubdireccion >= 37
select * from dbo.Urgencia;
select * from dbo.Complejidad;
select * from dbo.StatusOT;
select * from dbo.Usuarios;
select * from dbo.AreaAsignacion;
select * from dbo.cat_Programa;
select * from dbo.cat_SubPrograma;
select * from dbo.cat_TipoServicio;



select * from ctrlOts.dbo.Personas where nomPersona like '%Alberto%' order by nomPersona, apPersona, amPersona;
select top 10 idpersona from ctrlOts.dbo.Personas order by idpersona desc

insert into dbo.personas values (173,'Jonathan',		'Bonilla',	'Quintero',	'','');
insert into dbo.personas values (174,'','','');

insert into dbo.cat_programa values (1,'ADULTOS MAYORES');
insert into dbo.cat_programa values (2,'AMEXCID');
insert into dbo.cat_programa values (3,'BECAS BENITO JUAREZ');
insert into dbo.cat_programa values (4,'BIENESTAR');	
insert into dbo.cat_programa values (5,'CONAVI');
insert into dbo.cat_programa values (6,'DESARROLLO');
insert into dbo.cat_programa values (7,'ESTADO DE VERACRUZ');
insert into dbo.cat_programa values (8,'FONDEN');
insert into dbo.cat_programa values (9,'FUNCIONARIOS');
insert into dbo.cat_programa values (10,'GOBIERNO DEL ESTADO');
insert into dbo.cat_programa values (11,'JEFAS DE FAMILIA');	
insert into dbo.cat_programa values (12,'OTROS SERVICIOS');
insert into dbo.cat_programa values (13,'PROIIF');
insert into dbo.cat_programa values (14,'PROSPERA');
insert into dbo.cat_programa values (15,'REINTERO A CUENTA');
insert into dbo.cat_programa values (16,'SEDATU');
insert into dbo.cat_programa values (17,'SEDATU-FONDEN');
insert into dbo.cat_programa values (18,'SEDESOL');
insert into dbo.cat_programa values (19,'SEMBRANDO VIDA');

insert into dbo.cat_subprograma values (1,'ABONO A CUENTA');
insert into dbo.cat_subprograma values (2,'BAJA DE RETENCION/DOMICILIACION');
insert into dbo.cat_subprograma values (3,'BECAS ADEFAS');
insert into dbo.cat_subprograma values (4,'BECAS ADULTOS MAYORES');	
insert into dbo.cat_subprograma values (5,'BECAS EDUC. BASICA');
insert into dbo.cat_subprograma values (6,'BECAS EDUC.SUPERIOR');
insert into dbo.cat_subprograma values (7,'BECAS JEF');
insert into dbo.cat_subprograma values (8,'CANAL ABIERTO');
insert into dbo.cat_subprograma values (9,'CANAL CERRADO');	
insert into dbo.cat_subprograma values (10,'Desarrollo');
insert into dbo.cat_subprograma values (11,'DISPERSION');
insert into dbo.cat_subprograma values (12,'DOMICILIACIÓN');
insert into dbo.cat_subprograma values (13,'EDUC. BECAS BASICAS');
insert into dbo.cat_subprograma values (14,'MEJORAMIENTO URBANO NIVEL 2');
insert into dbo.cat_subprograma values (15,'MEJORAMIENTO URBANO NIVEL 4');
insert into dbo.cat_subprograma values (16,'OTROS');
insert into dbo.cat_subprograma values (17,'RECONSTRUCCIÓN NIVEL 2');
insert into dbo.cat_subprograma values (18,'RECONSTRUCCIÓN NIVEL 4');
insert into dbo.cat_subprograma values (19,'RECUPERACION DE RECURSOS');	
insert into dbo.cat_subprograma values (20,'VIVIENDA SOCIAL NIVEL 2');	
insert into dbo.cat_subprograma values (21,'VIVIENDA SOCIAL NIVEL 4');

insert into dbo.cat_tiposervicio values (1,'AGREGAR TABLAS');
insert into dbo.cat_tiposervicio values (2,'ALTA RETENCION');
insert into dbo.cat_tiposervicio values (3,'ANEXO 7');
insert into dbo.cat_tiposervicio values (4,'APERTURA ADICIONAL VALES DESPENSA');
insert into dbo.cat_tiposervicio values (5,'APERTURA TITULAR VALES DESPENSA');
insert into dbo.cat_tiposervicio values (6,'APLICACIÓN RETIROS');
insert into dbo.cat_tiposervicio values (7,'BAJA CUENTAS');
insert into dbo.cat_tiposervicio values (8,'BAJA RETENCION');
insert into dbo.cat_tiposervicio values (9,'BLOQUEO');
insert into dbo.cat_tiposervicio values (10,'CAMBIO ADSCRIPCION');
insert into dbo.cat_tiposervicio values (11,'CAMBIO CENTRO');
insert into dbo.cat_tiposervicio values (12,'CAMBIO ESTATUS');
insert into dbo.cat_tiposervicio values (13,'CAMBIO TARIFA');
insert into dbo.cat_tiposervicio values (14,'CANCELACION CUENTAS');
insert into dbo.cat_tiposervicio values (15,'Creación Nvo. Producto Monedero Bienestar');
insert into dbo.cat_tiposervicio values (16,'CREDITO MAS AHORRO');
insert into dbo.cat_tiposervicio values (17,'DEPOSITO A CUENTA');
insert into dbo.cat_tiposervicio values (18,'DESARROLLO');
insert into dbo.cat_tiposervicio values (19,'DESBLOQUEO');
insert into dbo.cat_tiposervicio values (20,'DESBLOQUEO/REINTEGRO');
insert into dbo.cat_tiposervicio values (21,'DEVOLUCIONES');	
insert into dbo.cat_tiposervicio values (22,'DISPERSIÓN');
insert into dbo.cat_tiposervicio values (23,'ELIMINACION BLOQUEO');
insert into dbo.cat_tiposervicio values (24,'Generación Recibos de Pago');
insert into dbo.cat_tiposervicio values (25,'GENERACION REPORTE');
insert into dbo.cat_tiposervicio values (26,'Listado de Movimientos');
insert into dbo.cat_tiposervicio values (27,'MANTENIMIENTO NOMBRES');
insert into dbo.cat_tiposervicio values (28,'MARPEX');
insert into dbo.cat_tiposervicio values (29,'PROIIF');
insert into dbo.cat_tiposervicio values (30,'REASIGNACION TARJETAS');
insert into dbo.cat_tiposervicio values (31,'RECUPERACION RECURSOS');
insert into dbo.cat_tiposervicio values (32,'REINTEGRO');
insert into dbo.cat_tiposervicio values (33,'REINTEGRO/DISPERSIÓN');
insert into dbo.cat_tiposervicio values (34,'REVERSO');
insert into dbo.cat_tiposervicio values (35,'SOLICITUD DE MEDIOS');
insert into dbo.cat_tiposervicio values (36,'VINCULACION TARJETAS');

*/


