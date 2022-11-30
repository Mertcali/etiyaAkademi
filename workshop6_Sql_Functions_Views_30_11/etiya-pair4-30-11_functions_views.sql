--Seçilen yılın en iyi ürününü getir.
CREATE OR REPLACE FUNCTION get_best_product (year integer)   
RETURNS TABLE (product_name VARCHAR,product_sum bigint )      
AS     
$$     
BEGIN        
RETURN QUERY SELECT       
p.name,SUM(od.quantity) from products p 
inner join product_suppliers ps on p.id = ps.product_id 
inner join order_details od 
on ps.id = od.product_suppliers_id 
inner join  orders o on od.id= o.order_detail_id 
where  date_part('year',o.order_date) = year 
GROUP BY p.name ORDER BY SUM(od.quantity) DESC 
Limit 1 ; 
END; 
$$  
LANGUAGE 'plpgsql';  

select get_best_product(2022)

-- Kullanıcıların yaşlarını hesapla

CREATE or replace function DATE_DIFF(date1 date,date2 date,year varchar)
returns integer
language plpgsql 
as
$$
declare 
sonuc integer;
begin 
sonuc:=date_part(year,date1) - date_part(year,date2);
return sonuc;
end;
$$;
		 
Select  DATE_DIFF(current_date,birth_date,'year') 
as "Kullanıcı yaşları" ,name from users 
GROUP BY name,"Kullanıcı yaşları"
ORDER BY "Kullanıcı yaşları" desc

--Toplam ürün sayısını getir.
CREATE or replace function urun_toplam()
returns integer
language plpgsql 
as
$$
declare 
toplam integer;
begin 
toplam:=SUM(stock) from products;
return toplam;
end;
$$;

SELECT urun_toplam()


--Hangi kategoride kaç ürün olduğunu getir.
CREATE view product_category
as
select pc.category_id, ca.name, count(pc.product_id)as "ürün adedi" from product_categories pc 
inner join categories ca on pc.category_id=ca.id
group by pc.category_id,ca.name 
order by "ürün adedi" desc;

SELECT * from product_category

-- Ürünlerin tedarikçilerini getir.
CREATE view get_product_supplier
as 
select pr.name, sp.supplier_number,pr.unit_price,pr.stock,pr.production_date from product_suppliers ps 
inner join products pr 
on ps.product_id=pr.id
inner join suppliers sp
on sp.id= ps.supplier_id;

SELECT * from get_product_supplier






