with orders as (
    select * from {{ ref('int_orders') }}
),

final as (
    select 
        order_id,
        location_id,        
        location_name,
        customer_id,
        order_total,
        tax_paid,
        ordered_at,
        customer_name,
        tax_rate,
        location_opened_at,
        date_part(month, ordered_at) as ordered_month,
        date_part(day, ordered_at) as ordered_day, 
        date_part(year, ordered_at) as ordered_year
    from orders
)

select * from final