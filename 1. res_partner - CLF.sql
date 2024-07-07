select distinct ROW_NUMBER() OVER (ORDER BY NULL) + 6 AS id
, CAST(NULL AS INTEGER)  as company_id
, a.created_on as create_date
, a.cbo_name as name
, CAST(NULL AS INTEGER) as title
, CAST(NULL AS INTEGER) as parent_id
, 2 as user_id
, 581 as state_id
, CAST(NULL AS INTEGER) as country_id
, CAST(NULL AS INTEGER) as industry_id
, CAST(NULL AS INTEGER) as color
, CAST(NULL AS INTEGER) as commercial_partner_id
, 2 as create_uid
, 2 as write_uid
, a.cbo_name as complete_name
, CAST(NULL AS VARCHAR2(100)) AS ref
, 'en_US' as lang
, 'Asia/Calcutta' as tz
, CAST(NULL AS VARCHAR2(100)) AS vat
, CAST(NULL AS VARCHAR2(100)) AS company_registry
, CAST(NULL AS VARCHAR2(100)) AS website
, CAST(NULL AS VARCHAR2(100)) AS function
, 'contact' as type
, CAST(NULL AS VARCHAR2(100)) AS street
, CAST(NULL AS VARCHAR2(100)) AS street2
, CAST(NULL AS VARCHAR2(100)) AS zip
, CAST(NULL AS VARCHAR2(100)) AS city
, CAST(NULL AS VARCHAR2(100)) AS email
, CAST(NULL AS VARCHAR2(100)) AS phone
, CAST(NULL AS VARCHAR2(100)) AS mobile
, CAST(NULL AS VARCHAR2(100)) AS commercial_company_name
, CAST(NULL AS VARCHAR2(100)) AS company_name
, NULL AS "date"
, NULL as "comment"
, a.latitute as partner_latitude
, a.longitude as partner_longitude
, CASE WHEN a.record_status = 1 THEN 'TRUE' WHEN a.record_status = 0 THEN 'FALSE' END AS active
, NULL as employee
, NULL as is_company
, NULL as partner_share
, CAST(NULL AS TIMESTAMP) as write_date
, CAST(NULL AS INTEGER) as message_bounce
, CAST(NULL AS VARCHAR2(100)) as email_normalized
, CAST(NULL AS VARCHAR2(100)) as signup_type
, CAST(NULL AS TIMESTAMP) as signup_expiration
, CAST(NULL AS VARCHAR2(100)) as signup_token
, CAST(a.district_id AS INTEGER) as district_id
, CAST(a.block_id AS INTEGER) as block_id
, CAST(a.village_id AS INTEGER) as village_id
, CAST(b.panchayat_id AS INTEGER) as panchayat_id
, CAST(NULL AS INTEGER) as gender_id
, CAST(NULL AS INTEGER) as kyc_type_id
, CAST(NULL AS INTEGER) as cast_category_id
, CAST(NULL AS INTEGER) as caste_id
, CAST(a.meeting_date AS INTEGER) as meeting_date
, CAST(a.cbo_type_id AS INTEGER) as cbo_type_id
, CAST(NULL AS INTEGER) as project_id
, CAST(NULL AS INTEGER) as education_id
, CAST(NULL AS INTEGER) as religion_id
, CAST(NULL AS INTEGER) as vo_id
, CAST(NULL AS INTEGER) as clf_id
, CAST(NULL AS INTEGER) as thana_name
, CAST(NULL AS INTEGER) as tola_baswal_name
, CAST(NULL AS INTEGER) as post_office
, a.cbo_name_hindi as name_hindi
, NULL as spouse_name
, CAST(NULL AS VARCHAR(100)) as spouse_name_hindi
, CAST(NULL AS VARCHAR(100)) as father_name
, CAST(NULL AS VARCHAR(100)) as father_name_hindi
, CAST(NULL AS VARCHAR(100)) as kyc_number
, CAST(NULL AS VARCHAR(100)) as aadhar_number
, CAST(NULL AS VARCHAR(100)) as registration_number
, CAST(NULL AS VARCHAR(100)) as aadhar_selected
, CAST(NULL AS VARCHAR(100)) as shg_meeting_day
, case when lower(a.meeting_periodicity) = 'w' then 'weekly' when lower(a.meeting_periodicity) = 'm' then 'monthly' else a.meeting_periodicity end as meeting_frequency
, CAST(a.share_rate AS VARCHAR(100)) as share_rate
, CAST(NULL AS VARCHAR(100)) as code
, CAST(NULL AS VARCHAR(100)) as office_bearer
, CAST(NULL AS VARCHAR(100)) as is_member_sjy
, CAST(NULL AS VARCHAR(100)) as member_having_toilet
, CAST(NULL AS VARCHAR(100)) as special_group
, CAST(NULL AS VARCHAR(100)) as model_vo
, CAST(NULL AS VARCHAR(100)) as model_clf
, 'institution' as partner_type
, CAST(NULL AS VARCHAR(100)) as vo_office_bearer
, CAST(NULL AS VARCHAR(100)) as clf_office_bearer
, a.formation_date as formation_date
, CAST(NULL AS DATE) as dob
, CAST(NULL AS DATE) as date_join
, a.registration_date as registration_date
, CAST(NULL AS INTEGER) as vo_executive_committee
, CAST(NULL AS INTEGER) as clf_executive_committee
, a.general_saving_amount as general_saving_amount
, CAST(NULL AS INTEGER) as share_capital
, hrf_saving_amount as hrf_saving_amount
, a.membership_fee as membership_fee
, CAST(NULL AS INTEGER) as other_saving_amount
, CAST(NULL AS INTEGER) as partner_gid
, CAST(NULL AS VARCHAR(100)) as additional_info
, CAST(NULL AS VARCHAR(100)) as phone_sanitized
, CAST(NULL AS INTEGER) as supplier_rank
, CAST(NULL AS INTEGER) as customer_rank
, CAST(NULL AS VARCHAR(100)) as invoice_warn
, NULL as invoice_warn_msg
, CAST(NULL AS NUMBER) as debit_limit
, CAST(NULL AS TIMESTAMP) as last_time_entries_checked
, CAST(NULL AS VARCHAR(100)) as ubl_cii_format
, CAST(NULL AS VARCHAR(100)) as peppol_endpoint
, CAST(NULL AS VARCHAR(100)) as peppol_eas
, CAST(NULL AS INTEGER) as vies_valid
, CAST(NULL AS VARCHAR(100)) as l10n_in_gst_treatment
, CAST(NULL AS VARCHAR(100)) as l10n_in_pan
, CAST(NULL AS VARCHAR(100)) as member_type
, CAST(NULL AS INTEGER) as loan_request
, CAST(NULL AS INTEGER) as team_id
, CAST(NULL AS VARCHAR(100)) as sale_warn
, NULL as sale_warn_msg
, CAST(NULL AS VARCHAR(100)) as followup_status
, CAST(NULL AS INTEGER) as active_limit
, CAST(NULL AS INTEGER) as warning_stage
, CAST(NULL AS INTEGER) as blocking_stage
, a.cbo_id as cbo_code
, CAST(NULL AS DATE) as last_meeting_date
, CAST(NULL AS INTEGER) as meeting_count
, CAST(c.parent_cbo_id AS INTEGER) as parent_cbo_code
from M_CBO a
left join m_village b on a.village_id = b.village_id
left join mp_parent_cbo c on a.cbo_id = c.cbo_id
where a.cbo_type_id = 1