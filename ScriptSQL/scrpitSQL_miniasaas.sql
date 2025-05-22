USE asaasdevelopment;

-- 1. Select de cobranças (payment) com valor maior que R$ 1.000,00
SELECT * FROM payment WHERE value > 1000.00;

-- 2. Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type)
SELECT billing_type, SUM(value) AS total_received
FROM payment
WHERE YEAR(date_created) > 2020 AND status = 'RECEIVED'
GROUP BY billing_type;

-- 3. Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00
SELECT ca.name AS customer_name, SUM(p.value) AS total_received
FROM customer_account AS ca
JOIN payment AS p ON ca.id = p.customer_account_id
WHERE p.status = 'RECEIVED'
GROUP BY ca.id
HAVING SUM(p.value) > 1000
ORDER BY total_received DESC 
LIMIT 20;

-- 4. Primeiro nome dos clientes (customer) com análise geral aprovada (customer_regiter_status), ordenado por data de aprovação
SELECT
	SUBSTRING_INDEX(c.name, ' ', 1) AS first_name,
  cs.last_general_status_change AS approval_date
FROM customer AS c
JOIN customer_register_status AS cs ON c.id = cs.customer_id
WHERE cs.general_approval = 'APPROVED'
    AND c.name IS NOT NULL
    AND TRIM(c.name) <> ''
ORDER BY
	cs.last_general_status_change DESC








