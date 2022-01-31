SELECT category1, COUNT(*)
FROM products
WHERE category1 = '食品'
GROUP BY category1
ORDER BY category1;