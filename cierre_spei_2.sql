print'Iniciando actualizacion'

declare
@si_fecha_operacion numeric(8);

begin

set @si_fecha_operacion = 20200701; -------------- Ingresa aqui la fecha de operacion

if(select count(*) from bmx_sesion_institucion) <> 0
begin
update bmx_sesion_institucion set si_fecha_operacion = @si_fecha_operacion, si_cargos_sal_nores = 0, si_cargos_sal_res = 0,
si_abonos_sal_nores = 0, si_liqtraspaso12_sal_nores = 0, si_liqtraspaso12_sal_res = 0, si_liqtraspaso34_sal_nores = 0,
si_cambiosaldo_inc_sal_res = 0, si_cambiosaldo_dec_sal_res = 0, si_abonos = 0, si_cargos = 0, si_sal_ini = 0, si_saldo_local = 0, 
si_por_res = 0, si_sal_res = 0, si_veces_res = 0, si_veces_mod = 0;
print'Actualiza la fecha operacion en bmx_sesion_institucion'
end

end
go

print'Finalizando actualizacion'