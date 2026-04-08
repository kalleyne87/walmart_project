select 
    d.store_id,
    d.dept_id,
    w.date_id,
    d.weekly_sales as store_weekly_sales,
    f.fuel_price,
    f.temperature as store_temperature,
    f.unemployment,
    f.cpi,
    f.markdown1,
    f.markdown2,
    f.markdown3,
    f.markdown4,
    f.markdown5,
    current_timestamp() as insert_date,
    current_timestamp() as update_date,
    current_timestamp() as vrsn_start_date,
    cast(null as timestamp) as vrsn_end_date
from {{ ref('stg_department') }} d
join {{ ref('stg_fact') }} f ON f.store_id = d.store_id and f.store_date = d.store_date
join {{ ref('dim_walmart_date') }} w ON w.store_date = d.store_date 