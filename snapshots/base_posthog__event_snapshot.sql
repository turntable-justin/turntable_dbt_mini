{% snapshot posthog_event_snapshot %}

{{
    config(
      target_schema='snapshots_mini',
      unique_key='id',
      strategy='timestamp',
      updated_at='_fivetran_synced',
    )
}}

select * from {{ ref('posthog__event')}}

{% endsnapshot %}