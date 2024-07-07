select distinct ROW_NUMBER() OVER (ORDER BY NULL) + 2617232 AS id
, 3 as partner_id
, a.bank_id
, CAST(NULL AS INTEGER) as sequence
, 20 as currency_id
, CAST(NULL AS INTEGER) as company_id
, 2 as create_uid
, 2 as write_uid
, case when a.acc_number is not null then cast(a.acc_number as varchar(300)) when a.acc_number is null then 'NULL' end as acc_number
, cast(a.acc_number as varchar(300)) as sanitized_acc_number
, b.name as acc_holder_name
, 'TRUE' as active
, 'FALSE' as allow_out_payment
, a.created_on as create_date
, a.updated_on as write_date
, a.branch_id
, 1 as bank_account_type_id
, b.district_id as district_id
, b.block_id as block_id
, a.acc_opening_date as open_date
, 'FALSE' as has_iban_warning
, 'FALSE' as has_money_transfer_warning
, cast(Null as varchar(300)) as cbo_code
, a.member_id as code
from t_member_bank_detail a
join m_cbo_member b on a.member_id = b.member_id
Where b.district_id = 196