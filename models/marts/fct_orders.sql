select 
	orders.*,
	orders_items.gross_item_sales_amount,
	orders_items.item_discount_amount,
from {{ ref('stg_tpch_orders') }} as orders
join {{ ref('int_order_items_summary') }} as orders_items
	on orders.order_key = orders_items.order_key
order by 
	orders.order_date