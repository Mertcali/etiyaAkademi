-- siparişlerde kullanılan en çok ödeme yöntemini getiriniz.
select pt.name as "ödeme tipi", count(ord.id) as "adet" from orders ord inner join payments pay 
on ord.payment_id=pay.id inner join payment_types pt 
on pay.payment_type_id=pt.id
group by pt.name

-- ödeme tipini ekleme 
insert into payment_types (name) values('Deneme')


-- ödeme tipini güncelleme 
update payment_types set name='Deneme Update' where name='Deneme'

-- ödeme tipini silme
delete from payment_types where name ='Deneme Update'

-- ülkelerdeki aktif şehir sayısı
select co.name as "Ülke adı", count(ci.name) as "şehir sayısı" from cities ci inner join countries co 
on ci.country_id=co.id group by co.name order by "şehir sayısı" desc

-- 100 ile 400 arası fiyata sahip ürünleri getir.
select * from products where cast(unit_price as numeric) between 100 and 400 

-- burak ve mert isimli kullanıcıları getir
select * from users where lower(name) in('burak', 'mert')


--adresi olmayan kullanıcıları getir
select * from users usr left join addresses adr on usr.id=adr.user_id 
where adr.street_id is null

-- hangi kategoride kaç ürün olduğunu getiriniz.
select pc.category_id, ca.name, count(pc.product_id)as "ürün adedi" from product_categories pc 
inner join categories ca on pc.category_id=ca.id
group by pc.category_id,ca.name order by "ürün adedi" desc

-- hangi ürünün kaç tane tedarikçisi mevcut.
select pr.name,count(ps.supplier_id) from product_suppliers ps inner join products pr
on ps.product_id=pr.id group by pr.name
