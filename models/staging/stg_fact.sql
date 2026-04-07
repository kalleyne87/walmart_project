with source as (
    select *
    from {{ source('walmart_raw', 'raw_fact') }}
),

renamed as (
    select 
        store as store_id,
        sale_date as store_date,
        temperature as temperature,
        fuel_price as fuel_price,
        markdown1 as markdown1,
        markdown2 as markdown2,
        markdown3 as markdown3,
        markdown4 as markdown4,
        markdown5 as markdown5,
        cpi as cpi,
        unemployment as unemployment,
        isholiday as is_holiday
    from source
)

select * from renamed