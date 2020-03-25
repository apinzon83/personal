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
*/

select * from DireccionAdjunta
select * from Direcciones where iddireccionAdjunta = 11
select * from Subdireccion where idDireccion between 111 and 112
select * from Gerencias where idSubdireccion between 42 and 43

update Subdireccion set cve_puesto = '10010100' where idSubdireccion = 44

update Subdireccion set cve_puesto = '10030100' where idSubdireccion = 45
update Subdireccion set cve_puesto = '10030200' where idSubdireccion = 46

update Subdireccion set cve_puesto = '11010100' where idSubdireccion = 47
update Subdireccion set cve_puesto = '11010200' where idSubdireccion = 48

update Subdireccion set cve_puesto = '11020100' where idSubdireccion = 49
update Subdireccion set cve_puesto = '11020200' where idSubdireccion = 50
update Subdireccion set cve_puesto = '11020300' where idSubdireccion = 51








