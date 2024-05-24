
with source as (

    select * from {{ source('hubspot', 'deal_company') }}

),

renamed as (

    select
        company_id,
        deal_id,
        type_id,
        _fivetran_synced

    from source

)

select * from renamed