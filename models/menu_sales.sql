-- models/menu_sales.sql

with menu as (

  
    select *
    from {{ source('raw', 'menu') }}


),

sales as (

    select
        truck_brand_name,
        menu_item_name,
        sum(sale_price_usd) as total_sales_usd,
        sum(sale_price_usd - cost_of_goods_usd) as total_profit_usd
    from menu
    group by 1, 2

)

select * from sales
