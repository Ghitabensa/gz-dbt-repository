with 

source as (

    select 
        orders_id,
        shipping_fee,
        logcost,
        ship_cost
    
    
     from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source

)

select * from renamed
