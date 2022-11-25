select * from products

-- Stok adeti 20den fazla olan ürünler 
select * from products where stock > 20

-- Son harfi e olan ürünleri listele
select * from products where name LIKE '%e'

-- Toplam ürün stoğu
select SUM(stock) as "STOK TOPLAMI" from products

-- Ürün fiyatlarına göre Azalan sıralama
select * from products order by unit_price DESC

-- En az stoğu olan ürünü ismiyle birlikte getir
select name,stock from products where stock = (select MIN(stock) from products)

-- İlk harfi t olan ürünleri unit price'ı ile birlikte getir.
select name,unit_price from products where lower(name) LIKE 't%' 

-- Stok adeti ortalamasının altında olan ürünleri ismiyle birlikte getir.
select * from products where stock < (Select AVG(stock) from products)

select * from product_categories
select * from categories

-- Teknoloji kategorisindeki ürünleri,stok adetlerini ve birim fiyatlarını getir.
select p.name, p.unit_price, p.stock,c.name from products p
inner join product_categories pc on p.id = pc.product_id 
inner join categories c on c.id = pc.category_id where c.name = 'Teknoloji'

-- Gazozun tedarikçisini ve birim fiyatını getir.
select p.name,p.unit_price,s.supplier_number from products p 
inner join product_suppliers ps on p.id = ps.product_id
inner join suppliers s on s.id = ps.supplier_id where p.name = 'Gazoz'

select * from cities

--Türkiyede bulunan illeri getir
select c.id,c.name,co.name from cities c inner join countries co on
c.country_id = co.id where co.name = 'Turkiye'





