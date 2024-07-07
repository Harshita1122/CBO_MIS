update res_partner_bank as a
set partner_id = b.id
from res_partner as b
where a.cbo_code = b.cbo_code
and a.cbo_code is not null