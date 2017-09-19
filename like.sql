
-- Todos funcionarios que moram em São Paulo
SELECT f.pnome || ' ' || f.minicial || '. ' || f.unome, f.endereco
FROM funcionario f
WHERE f.endereco like '%São Paulo%';