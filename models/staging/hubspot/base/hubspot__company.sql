{{
    config(
        materialized = 'table'
    )

}}


with source as (

    select * from {{ source('hubspot', 'company') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        is_deleted,
        portal_id,
        property_address,
        property_address_2,
        property_annualrevenue,
        property_city,
        property_country,
        property_createdate,
        property_description,
        property_domain,
        property_facebook_company_page,
        property_first_contact_createdate,
        property_first_deal_created_date,
        property_founded_year,
        property_hs_all_owner_ids,
        property_hs_analytics_first_timestamp,
        property_hs_analytics_latest_source,
        property_hs_analytics_latest_source_data_1,
        property_hs_analytics_latest_source_data_2,
        property_hs_analytics_latest_source_timestamp,
        property_hs_analytics_num_page_views,
        property_hs_analytics_num_visits,
        property_hs_analytics_source,
        property_hs_analytics_source_data_1,
        property_hs_analytics_source_data_2,
        property_hs_created_by_user_id,
        property_hs_date_entered_lead,
        property_hs_date_entered_opportunity,
        property_hs_date_exited_lead,
        property_hs_last_booked_meeting_date,
        property_hs_last_logged_call_date,
        property_hs_last_open_task_date,
        property_hs_last_sales_activity_date,
        property_hs_last_sales_activity_timestamp,
        property_hs_last_sales_activity_type,
        property_hs_lastmodifieddate,
        property_hs_latest_meeting_activity,
        property_hs_num_blockers,
        property_hs_num_child_companies,
        property_hs_num_contacts_with_buying_roles,
        property_hs_num_decision_makers,
        property_hs_num_open_deals,
        property_hs_object_id,
        property_hs_pipeline,
        property_hs_target_account_probability,
        property_hs_time_in_lead,
        property_hs_time_in_opportunity,
        property_hs_updated_by_user_id,
        property_hs_user_ids_of_all_owners,
        property_hubspot_owner_assigneddate,
        property_hubspot_owner_id,
        property_industry,
        property_is_public,
        property_lifecyclestage,
        property_linkedin_company_page,
        property_linkedinbio,
        property_name,
        property_notes_last_contacted,
        property_notes_last_updated,
        property_num_associated_contacts,
        property_num_associated_deals,
        property_num_contacted_notes,
        property_num_conversion_events,
        property_num_notes,
        property_numberofemployees,
        property_phone,
        property_state,
        property_timezone,
        property_total_money_raised,
        property_twitterhandle,
        property_type,
        property_warehouse,
        property_web_technologies,
        property_website,
        property_zip,
        property_hs_sales_email_last_replied,
        property_notes_next_activity_date,
        property_hs_was_imported,
        property_hs_object_source_id,
        property_hs_object_source,
        property_hs_object_source_user_id,
        property_hs_total_deal_value,
        property_hs_object_source_label

    from source

)

select * from renamed
