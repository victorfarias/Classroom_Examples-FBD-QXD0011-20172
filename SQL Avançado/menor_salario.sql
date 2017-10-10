SELECT f.pnome, f.salario
FROM funcionario f
WHERE f.salario <= (
    SELECT min(f2.salario)
    FROM funcionario f2
);

SELECT f.pnome, f.salario
FROM funcionario f
WHERE f.salario <= ALL (
    SELECT f2.salario
    FROM funcionario f2
);

-- Funcionarios que tem salário maior 
-- que todos no deparamento 5 
SELECT f.pnome, f.salario
FROM funcionario f
WHERE f.salario >= (
    SELECT MAX(f2.salario)
    FROM funcionario f2
    WHERE f2.dnr=5
);

SELECT f.pnome, f.salario
FROM funcionario f
WHERE f.salario >= ALL (
    SELECT f2.salario
    FROM funcionario f2
    WHERE f2.dnr=5
);