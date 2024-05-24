select
    c.id,
    c.property_domain as domain,
    s.source.source as pipeline,
    s.value as stage
from {{ ref('hubspot__company')}} c
inner join {{ ref('hubspot__deal_company')}} dc on c.id = dc.company_id
inner join {{ ref('hubspot__deal_stage')}} s on dc.deal_id = s.deal_id