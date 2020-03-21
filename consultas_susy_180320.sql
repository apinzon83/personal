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

/*
alter table DireccionAdjunta add cve_puesto nvarchar(8);
alter table Direcciones      add cve_puesto nvarchar(8);
alter table subdireccion     add cve_puesto nvarchar(8);
alter table Gerencias        add cve_puesto nvarchar(8);

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


update Subdireccion set cve_puesto = '020101'   where idSubdireccion = 1

update Subdireccion set cve_puesto = '020102' where idSubdireccion = 2
update Subdireccion set cve_puesto = '020103' where idSubdireccion = 3
update Subdireccion set cve_puesto = '020104' where idSubdireccion = 4

update Subdireccion set cve_puesto = '020201', nomsubdireccion='Subdirección de Canales Alternos de Atención Masiva',abrevSubdireccion='SCAAM' where idSubdireccion = 5
update Subdireccion set cve_puesto = '020202' where idSubdireccion = 6
update Subdireccion set cve_puesto = '020203' where idSubdireccion = 7

update Subdireccion set cve_puesto = '020301' where idSubdireccion = 8


update Gerencias set cve_puesto = '02010101' where idGerencia = 1
update Gerencias set cve_puesto = '02010201' where idGerencia = 2
update Gerencias set cve_puesto = '02010301' where idGerencia = 3
update Gerencias set cve_puesto = '02010401' where idGerencia = 4

update Gerencias set cve_puesto = '02020101' where idGerencia = 5
update Gerencias set cve_puesto = '02020102' where idGerencia = 6

update Gerencias set cve_puesto = '02020201' where idGerencia = 7

update Gerencias set cve_puesto = '02020301' where idGerencia = 8

update Gerencias set cve_puesto = '02030101' where idGerencia = 9

*/