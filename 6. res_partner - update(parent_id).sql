UPDATE res_partner AS a
SET parent_id = b.id
FROM res_partner AS b
WHERE a.cbo_parent_code = b.cbo_code;