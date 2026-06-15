# Lead and lag - looking before and after per product
SELECT
    product,
    year,
    month,
    volume,
    LAG(volume, 1) OVER (PARTITION BY product ORDER BY year, month) AS prev_month_volume,
    LEAD(volume, 1) OVER (PARTITION BY product ORDER BY year, month) AS next_month_volume
FROM sales
ORDER BY product, year, month;


# Reusing the window
SELECT
    product,
    year,
    month,
    volume,
    LAG(volume)  OVER w AS prev_month_volume, # the before/after order are in the window
    LEAD(volume) OVER w AS next_month_volume # By calling the window w, we reuse it
FROM sales
WINDOW w AS (PARTITION BY product ORDER BY year, month) # Different product sales, order by time
ORDER BY product, year, month;


# Using last month to see if we improved
SELECT
    product,
    year,
    month,
    volume,
    volume - LAG(volume) OVER w AS mom_change
FROM sales
WINDOW w AS (PARTITION BY product ORDER BY year, month)
ORDER BY product, year, month;

# We do not have to look only one month a ago, we can look at a year ago
SELECT
    product,
    year,
    month,
    volume,
    LAG(volume, 12) OVER w AS last_year_volume,
    volume - LAG(volume, 12) OVER w AS yoy_change
FROM sales
WINDOW w AS (PARTITION BY product ORDER BY year, month)
ORDER BY product, year, month;


######################
# Comulative and rolling metrics
######################

# How many items did we sell so far?
SELECT
    product,
    year,
    month,
    volume,
    SUM(volume) OVER w AS cumulative_volume
FROM sales
WINDOW w AS (
    PARTITION BY product
    ORDER BY year, month
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
)
ORDER BY product, year, month;

# How many items did we sell in the last 3 months (rolling)
SELECT
    product,
    year,
    month,
    volume,
    avg(volume) OVER w AS rolling_3m_avg
FROM sales
WINDOW w AS ( # Name - the common name "w"
    PARTITION BY product # Partition - only other rows of the same product
    ORDER BY year, month # Order chronologicly
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW # Frame - 3 last months
)
ORDER BY product, year, month; # Order the anchor rows - First by product, later by the same timeline


# Ranking in category per month
SELECT
    category,
    product,
    year,
    month,
    volume,
    RANK()       OVER w AS category_rank,
    DENSE_RANK() OVER w AS category_dense_rank
FROM sales
WINDOW w AS (
    PARTITION BY category, year, month
    ORDER BY volume DESC
)
ORDER BY category, year, month, volume DESC;


# Wow, windows and grouping!
# Sales blockbusters per year 
SELECT
    category,
    year,
    SUM(volume) AS yearly_volume,
    RANK()       OVER w AS yearly_rank,
    DENSE_RANK() OVER w AS yearly_dense_rank
FROM sales
GROUP BY category, year
WINDOW w AS (
    PARTITION BY year
    ORDER BY SUM(volume) DESC
)
ORDER BY year, yearly_volume DESC;

# Product share in category
WITH product_totals AS (
    SELECT
        product,
        category,
        SUM(volume) AS product_total_volume
    FROM sales
    GROUP BY product, category
)
SELECT
    product,
    category,
    product_total_volume,
    SUM(product_total_volume) OVER (PARTITION BY category) AS category_volume,
    product_total_volume / SUM(product_total_volume) OVER (PARTITION BY category) AS product_vs_category_ratio
FROM product_totals
ORDER BY category, product;
