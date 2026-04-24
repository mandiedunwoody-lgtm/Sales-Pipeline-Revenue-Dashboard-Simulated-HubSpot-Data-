-- Clean contacts table
-- Adjust table/column names to match your source

WITH raw_contacts AS (
    SELECT
        contact_id,
        email,
        first_name,
        last_name,
        lifecycle_stage,
        create_date,
        country,
        company,
        owner_name
    FROM hubspot_contacts_raw
),

standardized AS (
    SELECT
        contact_id,
        LOWER(TRIM(email)) AS email,
        TRIM(first_name) AS first_name,
        TRIM(last_name) AS last_name,
        CASE
            WHEN lifecycle_stage = 'Subscriber' THEN 'subscriber'
            WHEN lifecycle_stage = 'Lead' THEN 'lead'
            WHEN lifecycle_stage = 'Marketing Qualified Lead' THEN 'mql'
            WHEN lifecycle_stage = 'Sales Qualified Lead' THEN 'sql'
            WHEN lifecycle_stage = 'Opportunity' THEN 'opportunity'
            WHEN lifecycle_stage = 'Customer' THEN 'customer'
            ELSE LOWER(TRIM(lifecycle_stage))
        END AS lifecycle_stage,
        CAST(create_date AS DATE) AS create_date,
        TRIM(country) AS country,
        TRIM(company) AS company,
        TRIM(owner_name) AS owner_name
    FROM raw_contacts
    WHERE contact_id IS NOT NULL
      AND email IS NOT NULL
)

SELECT DISTINCT *
FROM standardized;

