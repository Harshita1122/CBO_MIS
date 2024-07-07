select distinct ROW_NUMBER() OVER (ORDER BY NULL) + 88323 AS id
, 3 as partner_id
, c.bank_id
, CAST(NULL AS INTEGER) as sequence
, 20 as currency_id
, CAST(NULL AS INTEGER) as company_id
, 2 as create_uid
, 2 as write_uid
, case when b.acc_number is not null then cast(b.acc_number as varchar(300)) when b.acc_number is null then 'NULL' end as acc_number
, cast(b.acc_number as varchar(300)) as sanitized_acc_number
, a.cbo_name as acc_holder_name
, 'TRUE' as active
, 'FALSE' as allow_out_payment
, b.created_on as create_date
, b.updated_on as write_date
, c.branch_id
, c.acc_type_id as bank_account_type_id
, a.district_id
, a.block_id
, b.acc_opening_date as open_date
, 'FALSE' as has_iban_warning
, 'FALSE' as has_money_transfer_warning
, a.cbo_id as cbo_code
, CAST(NULL AS VARCHAR(100)) as code
from m_cbo a
join t_cbo_appl_mapping b on a.cbo_id = b.cbo_id
join t_bulk_bank_acc c on b.application_id = c.application_id
where a.cbo_type_id = 3