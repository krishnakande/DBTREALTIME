  
select customer_id,
sum(order_amount) as total_revene
from stripe.transactions
group by 1