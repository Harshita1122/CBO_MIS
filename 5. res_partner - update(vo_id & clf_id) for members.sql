UPDATE res_partner AS a
SET vo_id = b.vo_id,
clf_id = b.clf_id
FROM member_vo_clf AS b
WHERE a.id = b.member_id
AND a.vo_id IS NULL
AND a.clf_id IS NULL
AND a.partner_type = 'member'