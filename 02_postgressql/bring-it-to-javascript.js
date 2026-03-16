
//////////////////////// Customer
let customer=[
{
id:1,
name:"ai",
email:"ai@gmail.com",
password:"1234",
address:3/3
},
{
id:2,
name:"bi",
email:"bi@gmail.com",
password:"5678",
address:2/2
},
{
id:3,
name:"ci",
email:"ci@gmail.com",
address:3/3
}
];
//////////////////////// health_need
let health_need=[
{health_id:1,
health_name:"protein_supplement"},
{health_id:2,
health_name:"improve_memory"},
{health_id:3,
health_name:"boost_immunity"}

];
//////////////////////// product
let product=[
{product_id:1,
health_id:1,
price:199,
quantity:10,
product_name:"protein"
},
{product_id:2,
health_id:2,
price:299,
quantity:20,
product_name:"fish oil"},
{product_id:3,
health_id:3,
price:399,
quantity:30,
product_name:"vitaminc"}
];
//////////////////////// orders
let orders= [
{customer_id:1,
date:"01022026"
},
{customer_id:2,
date:"02022026"},

{customer_id:3,
date:"03022026"}



];
//////////////////////// ordersitem
let ordersitem=[
{product_id:1,
orders_id:1,
price:199,
quantity:100
},
{product_id:2,
orders_id:2,
price:299,
quantity:200
},
{product_id:3,
orders_id:3,
price:399,
quantity:300
},

];



console.log(customer[0].name)
console.log(health_need[0].health_name)
console.log(product[1].product_name)
console.log(orders[1].date)
console.log(ordersitem[1].price)