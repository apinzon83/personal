/*
SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_Programa]
SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_SubPrograma]
SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_TipoServicio]


select * from ctrlots.dbo.DireccionAdjunta
select * from ctrlots.dbo.Direcciones order by idDireccionAdjunta, iddireccion
select * from ctrlots.dbo.SubDireccion order by iddireccion, idSubdireccion
select * from ctrlots.dbo.Gerencias

update ctrlots.dbo.Direcciones set iddireccion = 21  where iddireccion = 1;
update ctrlots.dbo.Direcciones set iddireccion = 22  where iddireccion = 2;
update ctrlots.dbo.Direcciones set iddireccion = 23  where iddireccion = 3;
update ctrlots.dbo.Direcciones set iddireccion = 31  where iddireccion = 4;
update ctrlots.dbo.Direcciones set iddireccion = 32  where iddireccion = 5;
update ctrlots.dbo.Direcciones set iddireccion = 33  where iddireccion = 6;
update ctrlots.dbo.Direcciones set iddireccion = 41  where iddireccion = 7;
update ctrlots.dbo.Direcciones set iddireccion = 42  where iddireccion = 8;
update ctrlots.dbo.Direcciones set iddireccion = 51  where iddireccion = 9;
update ctrlots.dbo.Direcciones set iddireccion = 52  where iddireccion = 10;
update ctrlots.dbo.Direcciones set iddireccion = 53  where iddireccion = 11;
update ctrlots.dbo.Direcciones set iddireccion = 61  where iddireccion = 12;
update ctrlots.dbo.Direcciones set iddireccion = 62  where iddireccion = 13;
update ctrlots.dbo.Direcciones set iddireccion = 71  where iddireccion = 14;
update ctrlots.dbo.Direcciones set iddireccion = 72  where iddireccion = 15;
update ctrlots.dbo.Direcciones set iddireccion = 81  where iddireccion = 16;
update ctrlots.dbo.Direcciones set iddireccion = 82  where iddireccion = 17;
update ctrlots.dbo.Direcciones set iddireccion = 83  where iddireccion = 18;
update ctrlots.dbo.Direcciones set iddireccion = 91  where iddireccion = 19;
update ctrlots.dbo.Direcciones set iddireccion = 92  where iddireccion = 20;
update ctrlots.dbo.Direcciones set iddireccion = 93  where iddireccion = 21;
update ctrlots.dbo.Direcciones set iddireccion = 101 where iddireccion = 22;
update ctrlots.dbo.Direcciones set iddireccion = 102 where iddireccion = 23;
update ctrlots.dbo.Direcciones set iddireccion = 103 where iddireccion = 24;
update ctrlots.dbo.Direcciones set iddireccion = 111 where iddireccion = 25;
update ctrlots.dbo.Direcciones set iddireccion = 112 where iddireccion = 26;
update ctrlots.dbo.Direcciones set iddireccion = 121 where iddireccion = 27;
update ctrlots.dbo.Direcciones set iddireccion = 122 where iddireccion = 28;

update ctrlots.dbo.SubDireccion set iddireccion = 21  where iddireccion = 1;
update ctrlots.dbo.SubDireccion set iddireccion = 22  where iddireccion = 2;
update ctrlots.dbo.SubDireccion set iddireccion = 23  where iddireccion = 3;
update ctrlots.dbo.SubDireccion set iddireccion = 31  where iddireccion = 4;
update ctrlots.dbo.SubDireccion set iddireccion = 32  where iddireccion = 5;
update ctrlots.dbo.SubDireccion set iddireccion = 33  where iddireccion = 6;
update ctrlots.dbo.SubDireccion set iddireccion = 41  where iddireccion = 7;
update ctrlots.dbo.SubDireccion set iddireccion = 42  where iddireccion = 8;
update ctrlots.dbo.SubDireccion set iddireccion = 51  where iddireccion = 9;
update ctrlots.dbo.SubDireccion set iddireccion = 52  where iddireccion = 10;
update ctrlots.dbo.SubDireccion set iddireccion = 53  where iddireccion = 11;
update ctrlots.dbo.SubDireccion set iddireccion = 61  where iddireccion = 12;
update ctrlots.dbo.SubDireccion set iddireccion = 62  where iddireccion = 13;
update ctrlots.dbo.SubDireccion set iddireccion = 71  where iddireccion = 14;
update ctrlots.dbo.SubDireccion set iddireccion = 72  where iddireccion = 15;
update ctrlots.dbo.SubDireccion set iddireccion = 81  where iddireccion = 16;
update ctrlots.dbo.SubDireccion set iddireccion = 82  where iddireccion = 17;
update ctrlots.dbo.SubDireccion set iddireccion = 83  where iddireccion = 18;
update ctrlots.dbo.SubDireccion set iddireccion = 91  where iddireccion = 19;
update ctrlots.dbo.SubDireccion set iddireccion = 92  where iddireccion = 20;
update ctrlots.dbo.SubDireccion set iddireccion = 93  where iddireccion = 21;
update ctrlots.dbo.SubDireccion set iddireccion = 101 where iddireccion = 22;
update ctrlots.dbo.SubDireccion set iddireccion = 102 where iddireccion = 23;
update ctrlots.dbo.SubDireccion set iddireccion = 103 where iddireccion = 24;
update ctrlots.dbo.SubDireccion set iddireccion = 111 where iddireccion = 25;
update ctrlots.dbo.SubDireccion set iddireccion = 112 where iddireccion = 26;
update ctrlots.dbo.SubDireccion set iddireccion = 121 where iddireccion = 27;
update ctrlots.dbo.SubDireccion set iddireccion = 122 where iddireccion = 28;
*/

update ctrlots.dbo.Direcciones dd 
join   ctrlots.dbo.SubDireccion ss on dd.iddireccion = ss.iddireccion
set    dd.iddireccion = 21, ss.iddireccion = 21
where dd.iddireccion = 1;


/*
select * from ctrlots.dbo.cat_Programa
select * from ctrlots.dbo.cat_SubPrograma
select * from ctrlots.dbo.cat_TipoServicio



select top 10 *  from v_OTs
select idAreasol, Area_Solicitante  from v_ots where idPersona is null

select distinct(idPersona), Solicitante, idAreasol, Area_Solicitante from v_ots
select * from ctrlOts.dbo.AreaSolicitante
select * from ctrlOts.dbo.Personas
select * from ctrlOts.dbo.AreaAsignacion

select * from bit_040320--521
--alter table bit_040320 add idPersona int;

select  distinct(bb.solicitante), bb.idpersona, --pp.nompersona, pp.appersona, pp.ampersona,
        --pp.nompersona + ' ' + pp.appersona + ' ' + pp.ampersona nomCompleto, 
        pp.idpersona
from bit_040320 bb
join personas pp on bb.solicitante = pp.nompersona + ' ' + pp.appersona + ' ' + pp.ampersona
where solicitante in (select pp.nompersona + ' ' + pp.appersona + ' ' + pp.ampersona nomCompleto from Personas) order by solicitante

Update bit_040320 set idPersona = 120 Where solicitante = 'Alberto Fuentes Mendoza'
Update bit_040320 set idPersona = 121 Where solicitante = 'Alejandro Rámirez Posadas'
Update bit_040320 set idPersona = 122 Where solicitante = 'Annylu Segura Hernández'
Update bit_040320 set idPersona = 125 Where solicitante = 'Carlos Alberto Hidalgo Martinez'
Update bit_040320 set idPersona = 130 Where solicitante = 'Danae Aguirre Mayorga '
Update bit_040320 set idPersona = 110 Where solicitante = 'David Carrillo Lara'
Update bit_040320 set idPersona = 131 Where solicitante = 'Denisse Alejandra Domínguez García'
Update bit_040320 set idPersona = 134 Where solicitante = 'Eduardo López Torres'
Update bit_040320 set idPersona = 135 Where solicitante = 'Edwin Mihail Torres Martínez '
Update bit_040320 set idPersona = 141 Where solicitante = 'Israel Carrillo Plata '
Update bit_040320 set idPersona = 143 Where solicitante = 'Israel Valdez Velázquez '
Update bit_040320 set idPersona = 147 Where solicitante = 'Jorge Gonzalez Acevedo'
Update bit_040320 set idPersona = 149 Where solicitante = 'José Antonio Cortés Reyes'
Update bit_040320 set idPersona = 151 Where solicitante = 'Juan René Garduño Moya'
Update bit_040320 set idPersona = 154 Where solicitante = 'Marco Antonio Hernandez Molina'
Update bit_040320 set idPersona = 158 Where solicitante = 'Miguel Angel Espinosa Moctezuma'
Update bit_040320 set idPersona = 163 Where solicitante = 'Oscar Barrera García'
Update bit_040320 set idPersona = 165 Where solicitante = 'Pedro Deaquino Vargas'
Update bit_040320 set idPersona = 101 Where solicitante = 'ricardo espinosa ramos'
Update bit_040320 set idPersona = 167 Where solicitante = 'Rodolfo Saavedra Fuentes'
Update bit_040320 set idPersona = 170 Where solicitante = 'Servando García Lugo'
Update bit_040320 set idPersona = 171 Where solicitante = 'Victor Trejo Rosales'

--select distinct(idAreasol), Area_Solicitante from v_ots


select distinct(solicitante) from bit_040320 where idpersona is null

select * from personas where nompersona like '%Abraham%'-- Pelcastre Soto'
select * from personas where nompersona like '%Carolina%'-- Hernández Bonilla'
select * from personas where nompersona like '%Christian%'-- Arturo Macias Gonzalez'
select * from personas where nompersona like '%Edgardo%'-- Salomon López López'
select * from personas where nompersona like '%Fernando%'-- Arevalo Piña'
select * from personas where nompersona like '%Hugo%'-- Hérnandez Alanis'
select * from personas where nompersona like '%Ignacio%'-- SanchezLara Estrada'
select * from personas where nompersona like '%Ignacio%'-- Sandoval Sánchez'
select * from personas where nompersona like '%Monica%'-- Cruz Jimenez'
select top 5 idpersona from personas order by idpersona desc


insert into personas values(175,'Abraham'            ,'Pelcastre'    ,'Soto' ,null, null,1);
insert into personas values(176,'Carolina'           ,'Hernández'    ,'Bonilla' ,null, null,1);
insert into personas values(177,'Christian Arturo'   ,'Macias'       ,'Gonzalez' ,null, null,1);
insert into personas values(178,'Edgardo Salomon'    ,'López'        ,'López' ,null, null,1);
insert into personas values(179,'Fernando'           ,'Arevalo'      ,'Piña' ,null, null,1);
insert into personas values(180,'Hugo'               ,'Hérnandez'    ,'Alanis' ,null, null,1);
insert into personas values(181,'Ignacio'            ,'SanchezLara'  ,'Estrada' ,null, null,1);
insert into personas values(182,'Ignacio'            ,'Sandoval'     ,'Sánchez' ,null, null,1);
insert into personas values(183,'Monica'             ,'Cruz'         ,'Jimenez' ,null, null,1);

Update bit_040320 set idPersona = 175 Where solicitante = 'Abraham Pelcastre Soto'
Update bit_040320 set idPersona = 176 Where solicitante = 'Carolina Hernández Bonilla '
Update bit_040320 set idPersona = 177 Where solicitante = 'Christian Arturo Macias Gonzalez '
Update bit_040320 set idPersona = 178 Where solicitante = 'Edgardo Salomon López López'
Update bit_040320 set idPersona = 179 Where solicitante = 'Fernando Arevalo Piña'
Update bit_040320 set idPersona = 180 Where solicitante = 'Hugo Hérnandez Alanis'
Update bit_040320 set idPersona = 181 Where solicitante = 'Ignacio SanchezLara Estrada'
Update bit_040320 set idPersona = 182 Where solicitante = 'Ignacio Sandoval Sánchez'
Update bit_040320 set idPersona = 183 Where solicitante = 'Monica Cruz Jimenez'
*/

select * from bit_040320 where idpersona is null

select * from AreaSolicitante
select * from personas