-- Clean deals table
-- Adjust table/column names to match your source

WITH raw_deals AS (
    SELECT
        deal_id,
        contact_id,
        deal_name,
        amount,
        deal_stage,
        created_date,
        closed_date,
        owner_name,
        pipeline
    FROM hubspot_deals_raw
),

standardized AS (
    SELECT
        deal_id,
        contact_id,
        TRIM(deal_name) AS deal_name,
        CAST(amount AS DECIMAL(18,2)) AS amount,
        CASE
            WHEN deal_stage = 'Appointment Scheduled' THEN 'appointment_scheduled'
            WHEN deal_stage = 'Qualified to Buy' THEN 'qualified_to_buy'
            WHEN deal_stage = 'Presentation Scheduled' THEN 'presentation_scheduled'
            WHEN deal_stage = 'Decision Maker Bought-In' THEN 'decision_maker_bought_in'
            WHEN deal_stage = 'Contract Sent' THEN 'contract_sent'
            WHEN deal_stage = 'Closed Won' THEN 'closed_won'
            WHEN deal_stage = 'Closed Lost' THEN 'closed_lost'
            ELSE LOWER(TRIM(deal_stage))
        END AS deal_stage,
        CAST(created_date AS DATE) AS created_date,
        CAST(closed_date AS DATE) AS closed_date,
        TRIM(owner_name) AS owner_name,
        TRIM(pipeline) AS pipeline
    FROM raw_deals
    WHERE deal_id IS NOT NULL
)

SELECT DISTINCT *
FROM standardized;

