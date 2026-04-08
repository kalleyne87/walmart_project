
select distinct
    s.store_id,
    d.dept_id,
    s.store_type,
    s.store_size,
    current_timestamp() as insert_date,
    current_timestamp() as update_date
from {{ ref('stg_stores') }} s
join {{ ref('stg_department') }} d ON s.store_id = d.store_id