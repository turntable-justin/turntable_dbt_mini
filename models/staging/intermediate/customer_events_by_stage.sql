select
    c.*,
    e.*,
from {{ ref('companies_by_stage') }} c
inner join {{ ref('posthog__event_cleaned') }} e on c.domain = e.user_domain