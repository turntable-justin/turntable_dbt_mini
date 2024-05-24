
with source as (

    select * from {{ source('hubspot', 'deal_stage') }}

),

renamed as (

    select
        _fivetran_start,
        deal_id,
        _fivetran_active,
        _fivetran_end,
        _fivetran_synced,
        date_entered,
        source,
        source_id,
        value

    from source

)

select * from renamed