select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert it to dollars
    CAST(amount / 100 AS DECIMAL(10, 2)) AS amount,
    created as created_at

from DBTPRACTICE.stripe.payment 
