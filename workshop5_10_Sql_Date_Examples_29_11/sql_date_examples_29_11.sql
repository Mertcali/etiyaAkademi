--Kayıtlı kullanıcılardan yaşı en büyük olan
Select  date_part('year',current_date) - date_part('year',birth_date) 
as "Kullanıcı yaşları" ,name from users 
GROUP BY name,"Kullanıcı yaşları"
ORDER BY "Kullanıcı yaşları" desc
limit 1

--24 saat içerisindeki siparişler
Select * from orders 
where date_part('year',current_date) = date_part('year',order_date)
and date_part('month',current_date) = date_part('month',order_date)
and date_part('day',current_date) - date_part('day',order_date) <1

--20 ile 22 yaş arasındaki kullanıcıları getir.
Select  date_part('year',current_date) - date_part('year',birth_date) 
as "Kullanıcı yaşları" ,name from users 
Where date_part('year',current_date) - date_part('year',birth_date) between 20 and 22

--ismi Burak olan kullanıcıların yaşlarını getir.
Select date_part('year',current_date) - date_part('year',birth_date)
as "Kullanıcı yaşları" ,name from users 
Where lower(name) = 'burak'

--Bu ay sipariş veren kullanıcıları listele.
Select u.name,u.phone_number,u.email from users u
inner join payments p
on u.id = p.user_id
inner join orders o
on o.payment_id = p.id
Where date_part('year',current_date) = date_part('year',order_date)
and date_part('month',current_date) - date_part('month',order_date)<1

--2000 doğumlu kaç kullanıcı var.
Select extract (year from birth_date) as "doğum yılı", count(*) from users
Where extract (year from birth_date) = 2000
GROUP BY  extract (year from birth_date)

--Gazoz üretildiğinden beri kaç hafta geçti.
Select name, TRUNC (date_part('days',current_date::timestamp- production_date::timestamp)/7)from products
Where name = 'Gazoz'

--Üretimi 2 yıl geçmemiş ürünler
Select * from products 
Where date_part('year',current_date) - date_part('year',production_date)<2

--Bu yıl kasım ayında hangi ürünler sipariş edilmiş
Select p.name,p.unit_price, o.order_date from products p
inner join product_suppliers ps
on p.id = ps.product_id
inner join order_details od
on ps.id = od.product_suppliers_id
inner join orders o
on od.id= o.order_detail_id
Where date_part('year',current_date) = date_part('year',o.order_date)
and  date_part('month',o.order_date) = 11


--2022 yılında en çok satılan ürün ve adedi
Select p.name,SUM(od.quantity) from products p
inner join product_suppliers ps
on p.id = ps.product_id
inner join order_details od
on ps.id = od.product_suppliers_id
inner join orders o
on od.id= o.order_detail_id
where date_part('year',o.order_date) = 2022
GROUP BY p.name
ORDER BY SUM(od.quantity) DESC
Limit 1