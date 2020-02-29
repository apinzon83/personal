SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_Programa]
SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_SubPrograma]
SELECT TOP (100) * FROM [ctrlOts].[dbo].[cat_TipoServicio]

select top 10 *  from v_OTs

select distinct(idAreasol), Area_Solicitante from v_ots
select distinct(idPersona), Solicitante from v_ots