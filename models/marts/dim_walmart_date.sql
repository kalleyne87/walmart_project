select distinct
    to_number(to_char(store_date, 'YYYYMMDD')) as date_id,
    store_date,
    is_holiday,
    current_timestamp() as insert_date,
    current_timestamp() as update_date
from {{ ref('stg_department') }}