update res_partner_bank as a
set partner_id = b.id
from res_partner as b
where a.code = b.code
and a.code is not null