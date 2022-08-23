#Display the Supplier details who can supply more than one product

select sup.* 
from supplier sup 
join supplier_pricing sp on sup.SUPP_ID = sp.SUPP_ID
group by sp.SUPP_ID
having count(sp.SUPP_ID)>1;