select distinct ROW_NUMBER() OVER (ORDER BY NULL) + 1278856 AS id
, CAST(NULL AS INTEGER)  as company_id 
, CAST(a.created_on AS TIMESTAMP) as create_date
, a.name as name
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
, a.name as complete_name
, a.ref_code AS ref
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
, a.email_address AS email
, a.phone_no AS phone
, a.phone_no AS mobile
, CAST(NULL AS VARCHAR2(100)) AS commercial_company_name
, CAST(NULL AS VARCHAR2(100)) AS company_name
, NULL AS "date"
, NULL as "comment"
, CAST(NULL AS VARCHAR2(100)) as partner_latitude
, CAST(NULL AS VARCHAR2(100)) as partner_longitude
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
, CAST(NULL AS INTEGER) as panchayat_id
, CASE WHEN a.gender = 'M' then 2 WHEN a.gender = 'F' then 1 end as gender_id
, a.kyc_type as kyc_type_id
, CAST(NULL AS INTEGER) as cast_category_id
, CAST(NULL AS INTEGER) as caste_id
, CAST(NULL AS INTEGER) as meeting_date
, CAST(NULL AS INTEGER) as cbo_type_id
, CAST(NULL AS INTEGER) as project_id
, a.education as education_id
, CAST(NULL AS INTEGER) as religion_id
, CAST(NULL AS INTEGER) as vo_id
, CAST(NULL AS INTEGER) as clf_id
, a.thana as thana_name
, CAST(NULL AS INTEGER) as tola_baswal_name
, a.postoffice as post_office
, a.name_hindi as name_hindi
, a.husband_name as spouse_name
, a.husband_name_hindi as spouse_name_hindi
, a.father_name as father_name
, a.father_name_hindi as father_name_hindi
, a.kyc_number as kyc_number
, a.aadhar_number as aadhar_number
, CAST(NULL AS VARCHAR2(100)) as registration_number
, CAST(NULL AS VARCHAR2(100)) as aadhar_selected
, CAST(NULL AS VARCHAR2(100)) as shg_meeting_day
, CAST(NULL AS VARCHAR2(100)) as meeting_frequency
, CAST(NULL AS VARCHAR2(100)) as share_rate
, a.member_id as code
, CAST(NULL AS VARCHAR2(100)) as office_bearer
, CAST(NULL AS VARCHAR2(100)) as is_member_sjy
, CASE WHEN a.toilet = 'N' then 'no' when a.toilet = 'Y' then 'yes' when a.toilet = 'Select' then NULL when a.toilet IS NULL then NULL ELSE NULL end as member_having_toilet
, CAST(NULL AS VARCHAR2(100)) as special_group
, CAST(NULL AS VARCHAR2(100)) as model_vo
, CAST(NULL AS VARCHAR2(100)) as model_clf
, 'member' as partner_type
, CAST(NULL AS VARCHAR2(100)) as vo_office_bearer
, CAST(NULL AS VARCHAR2(100)) as clf_office_bearer
, NULL as formation_date
, a.dob as dob
, a.date_of_joining as date_join
, NULL as registration_date
, CAST(NULL AS INTEGER) as vo_executive_committee
, CAST(NULL AS INTEGER) as clf_executive_committee
, CAST(NULL AS INTEGER) as general_saving_amount
, CAST(NULL AS INTEGER) as share_capital
, CAST(NULL AS INTEGER) as hrf_saving_amount
, CAST(NULL AS INTEGER) as membership_fee
, CAST(NULL AS INTEGER) as other_saving_amount
, CAST(NULL AS INTEGER) as partner_gid
, CAST(NULL AS VARCHAR2(100)) as additional_info
, CAST(NULL AS VARCHAR2(100)) as phone_sanitized
, CAST(NULL AS INTEGER) as supplier_rank
, CAST(NULL AS INTEGER) as customer_rank
, CAST(NULL AS VARCHAR2(100)) as invoice_warn
, NULL as invoice_warn_msg
, CAST(NULL AS NUMBER) as debit_limit
, CAST(NULL AS TIMESTAMP) as last_time_entries_checked
, CAST(NULL AS VARCHAR2(100)) as ubl_cii_format
, CAST(NULL AS VARCHAR2(100)) as peppol_endpoint
, CAST(NULL AS VARCHAR2(100)) as peppol_eas
, CAST(NULL AS INTEGER) as vies_valid
, CAST(NULL AS VARCHAR2(100)) as l10n_in_gst_treatment
, CAST(NULL AS VARCHAR2(100)) as l10n_in_pan
, CAST(NULL AS VARCHAR2(100)) as member_type
, CAST(NULL AS INTEGER) as loan_request
, CAST(NULL AS INTEGER) as team_id
, CAST(NULL AS VARCHAR2(100)) as sale_warn
, NULL as sale_warn_msg
, CAST(NULL AS VARCHAR2(100)) as followup_status
, CAST(NULL AS INTEGER) as active_limit
, CAST(NULL AS INTEGER) as warning_stage
, CAST(NULL AS INTEGER) as blocking_stage
, CAST(NULL AS VARCHAR2(100)) as cbo_code
, CAST(NULL AS DATE) as last_meeting_date
, CAST(NULL AS INTEGER) as meeting_count
, CAST(b.cbo_id AS INTEGER) as parent_cbo_code
from m_cbo_member a
left join mp_cbo_member b on a.member_id = b.member_id
where a.district_id = 196
