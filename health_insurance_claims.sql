select
right(claim_id,7) as claim_id,
right(member_id,6) as member_id,
claim_date,claim_type,
trim(provider_name) as provider,
diagnosis_code,procedure_code,
cast(billed_amount as float) as billed_amount,
cast(allowed_amount as float) as allowed_amount,
cast(paid_amount as float) as paid_amount,
claim_status,denial_reason,
upper(left(in_network,1)) as in_network,payment_method
from claims;

select
right(member_id,6) as member_id,
trim(first_name) as first_name,
trim(last_name) as last_name,
date_of_birth,upper(left(gender,1)) as gender,
state,plan_type,
right(group_number,4) as group_no,
enrollment_date,primary_care_physician as pcp,
phone_number,cast(annual_premium as float) as annual_premium
from members;