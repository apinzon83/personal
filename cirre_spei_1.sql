select fec_oper_calendar,op_Estado,op_cuenta_ben,op_edo_host,op_razon_rechazo,ins_nombre,op_cuenta_ord,*
from [dbo].[bmx_ord_pagdia_r] spei
left join bmx_instituciones inst on spei.ins_clave = inst.ins_clave
--update [bmx_ord_pagdia_r] set op_estado = 'D'
where 
op_estado in ('XD','D')