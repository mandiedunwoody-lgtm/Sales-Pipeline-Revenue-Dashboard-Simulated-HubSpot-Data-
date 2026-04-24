-- Pipeline metrics by month and owner

WITH deals AS (
    SELECT
        d.deal_id,
        d.contact_id,
        d.amount,
        d.deal_stage,
        d.created_date,
        d.closed_date,
        d.owner_name,
        c.lifecycle_stage,
        c.create_date AS contact_create_date
    FROM deals_clean d
    LEFT JOIN contacts_clean c
        ON d.contact_id = c.contact_id
),

flags AS (
    SELECT
        *,
        CASE WHEN deal_stage = 'closed_won' THEN 1 ELSE 0 END AS is_closed_won,
        CASE WHEN deal_stage = 'closed_lost' THEN 1 ELSE 0 END AS is_closed_lost,
        CASE WHEN deal_stage NOT IN ('closed_won', 'closed_lost') THEN 1 ELSE 0 END AS is_open,
        DATEFROMPARTS(YEAR(created_date), MONTH(created_date), 1) AS created_month,
        DATEDIFF(DAY, created_date, closed_date) AS sales_cycle_days
    FROM deals
)

SELECT
    created_month,
    owner_name,
    COUNT(DISTINCT deal_id) AS deals_created,
    SUM(amount) AS total_pipeline_amount,
    SUM(CASE WHEN is_closed_won = 1 THEN amount ELSE 0 END) AS closed_won_amount,
    SUM(is_closed_won) AS closed_won_deals,
    SUM(is_closed_lost) AS closed_lost_deals,
    SUM(is_open) AS open_deals,
    AVG(CAST(sales_cycle_days AS FLOAT)) AS avg_sales_cycle_days,
    AVG(CAST(amount AS FLOAT)) AS avg_deal_size,
    CASE
        WHEN COUNT(DISTINCT deal_id) = 0 THEN NULL
        ELSE CAST(SUM(is_closed_won) AS FLOAT) / COUNT(DISTINCT deal_id)
    END AS win_rate
FROM flags
GROUP BY
    created_month,
    owner_name
ORDER BY
    created_month,
    owner_name;

