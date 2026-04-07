with source as (
    select *
    from {{ source('walmart_raw', 'raw_department') }}
),

renamed as (
    select 
        store as store_id,
        dept as dept_id,
        sale_date as store_date,
        weekly_sales as weekly_sales,
        isholiday as is_holiday
    from source
)

select * from renamed