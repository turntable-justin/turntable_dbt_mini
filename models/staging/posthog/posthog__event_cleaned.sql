{{
    config(
        tags = ['posthog', 'staging'],
    )

}}

with
    events as (
        select distinct
            e.timestamp,
            e.distinct_id as user_id,
            substring(
                json_value(person_properties, '$.email'),
                2,
                length(json_value(person_properties, '$.email')) - 2
            ) as email,
            e.event
        from {{ ref("posthog__event") }} e
        where e.person_is_identified = true
    )

select
    cast(date(timestamp) as date) as date,
    date_sub(
        date(timestamp), interval(extract(dayofweek from timestamp) - 2) day
    ) as week,
    SPLIT(email, '@')[OFFSET(1)] AS user_domain,
    events.*
from events
