USE asaasdevelopment;

-- 1. Select de cobranças (payment) com valor maior que R$ 1.000,00
SELECT * FROM payment WHERE value > 1000.00;

-- 2. Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type)
SELECT billing_type, SUM(value) AS total_received
FROM payment
WHERE YEAR(date_created) > 2020
GROUP BY billing_type;

-- 3. Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00
SELECT ca.*
FROM customer_account ca
JOIN payment p ON ca.id = p.customer_account_id
GROUP BY ca.id
HAVING SUM(p.value) > 1000.00
ORDER BY SUM(p.value) DESC
LIMIT 20;

-- 4. Primeiro nome dos clientes (customer) com análise geral aprovada (customer_regiter_status), ordenado por data de aprovação
SELECT REGEXP_SUBSTR(c.name, '[A-Za-zÀ-ÿ]+') AS first_name, c.date_created AS approval_date
FROM customer c
JOIN customer_register_status cs ON c.id = cs.id
WHERE 
  cs.general_approval = 'APPROVED'
  AND c.name IS NOT NULL
  AND TRIM(c.name) <> ''
ORDER BY c.date_created;








