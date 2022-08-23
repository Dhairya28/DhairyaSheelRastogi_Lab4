#Find the least expensive product from each category and print the table with category id, name, product name and price of the product

select MIN(sp.SUPP_PRICE), cat.CAT_ID, cat.CAT_NAME, pro.PRO_NAME 
FROM order_directory.category cat
JOIN order_directory.product pro on cat.CAT_ID = pro.CAT_ID
JOIN order_directory.supplier_pricing sp on sp.PRO_ID = pro.PRO_ID 
group by cat.CAT_ID;