# Sissejuhatus SQL-i

**Ülesanne 1:** Vali kõik andmed tabelist customers.
```sql
SELECT * FROM sales.customers;
```

**Ülesanne 2:** Vali kõik kliendid ja sorteeri nad pere nime järgi kasvavas järjekorras.
```sql
SELECT * FROM sales.customers ORDER BY last_name ASC;
```

**Ülesanne 3:** Vali esimesed 15 kirjet tabelist sales.orders, sorteerides need kuupäeva järgi kahanevalt.
```sql
SELECT * FROM sales.orders ORDER BY order_date DESC LIMIT 15;
```

**Ülesanne 4:** Leia kõik kliendid, kes elavad linnas New York.
```sql
SELECT * FROM sales.customers WHERE city = 'New York';
```

**Ülesanne 5:** Leia iga müüja võetud tellimuste arv, sorteeri kahanevalt ja kuva esimesed 5.
```sql
SELECT staff_id, COUNT(order_id) AS tellimuste_arv FROM sales.orders GROUP BY staff_id ORDER BY tellimuste_arv DESC LIMIT 5;
```

**Ülesanne 6:** Leia iga kliendi nimi ja tema tellimuste arv.
```sql
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(o.order_id) AS tellimuste_arv FROM sales.customers c LEFT JOIN sales.orders o ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.first_name, c.last_name ORDER BY tellimuste_arv DESC;
```

**Ülesanne 7:** Leia kõik tellimused, kus tellitud toodete koguarv (quantity) on suurem kui 8. Kuvage iga tellimuse ID, kliendi täisnimi (eesnimi ja perekonnanimi koos) ning erinevate toodete arv selles tellimuses. Sorteerige tulemused tellimuse ID järgi kasvavas järjekorras.
```sql
SELECT o.order_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(DISTINCT oi.product_id) AS erinevaid_tooteid FROM sales.orders o JOIN sales.customers c ON o.customer_id = c.customer_id JOIN sales.order_items oi ON o.order_id = oi.order_id GROUP BY o.order_id, c.first_name, c.last_name HAVING SUM(oi.quantity) > 8 ORDER BY o.order_id ASC;
```
