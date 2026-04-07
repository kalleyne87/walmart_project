with source as (
    select *
    from {{ source('walmart_raw', 'raw_stores') }}
),

renamed as (
    select 
        store as store_id,
        store_type as store_type,
        store_size as store_size
    from source
)

select * from renamed