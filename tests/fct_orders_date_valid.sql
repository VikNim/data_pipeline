select
	* 
from {{ ref('fct_orders') }}
where
	date(order_date) > CURRENT_DATE() and date(order_date) < date('1990-01-01')