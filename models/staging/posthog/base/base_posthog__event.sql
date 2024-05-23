{{
    config(
        materialized='view',
        tags=['posthog', 'base'],
    )

}}
with
    source as (select * from {{ source("posthog", "event") }}),

    renamed as (

        select
            id,
            _fivetran_deleted,
            _fivetran_synced,
            distinct_id,
            elements,
            elements_chain,
            event,
            person_distinct_ids,
            person_is_identified,
            person_properties,
            project_id,
            properties_active_feature_flags,
            properties_autocapture_disabled_server_side,
            properties_browser,
            properties_browser_language,
            properties_browser_version,
            properties_ce_version,
            properties_console_log_recording_enabled_server_side,
            properties_current_url,
            properties_device,
            properties_device_id,
            properties_device_type,
            properties_distinct_id,
            properties_event_type,
            properties_feature_flag_payloads,
            properties_geoip_city_name,
            properties_geoip_continent_code,
            properties_geoip_continent_name,
            properties_geoip_country_code,
            properties_geoip_country_name,
            properties_geoip_latitude,
            properties_geoip_longitude,
            properties_geoip_postal_code,
            properties_geoip_subdivision_1_code,
            properties_geoip_subdivision_1_name,
            properties_geoip_subdivision_2_code,
            properties_geoip_subdivision_2_name,
            properties_geoip_time_zone,
            properties_host,
            properties_insert_id,
            properties_ip,
            properties_lib,
            properties_lib_version,
            properties_os,
            properties_os_version,
            properties_pageview_id,
            properties_pathname,
            properties_plugins_deferred,
            properties_plugins_failed,
            properties_plugins_succeeded,
            properties_referrer,
            properties_referring_domain,
            properties_screen_height,
            properties_screen_width,
            properties_sent_at,
            properties_session_id,
            properties_session_recording_recorder_version_server_side,
            properties_set,
            properties_set_once,
            properties_time,
            properties_token,
            properties_viewport_height,
            properties_viewport_width,
            properties_window_id,
            source.timestamp,
            properties_title,
            properties_column,
            properties_model_column_count,
            properties_compiled_sql,
            properties_model_schema,
            properties_model_name,
            properties_description,
            properties_geoip_disable

        from source

    )

select *
from renamed
