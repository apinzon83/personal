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
select * from Direcciones where iddireccionAdjunta = 2
select * from Subdireccion where idDireccion = 23
select * from Gerencias where idSubdireccion = 51