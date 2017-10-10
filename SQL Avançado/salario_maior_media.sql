


SELECT f.pnome, f.salario
FROM funcionario f
WHERE f.salario > (
    SELECT AVG(f2.salario)
    FROM funcionario f2
)