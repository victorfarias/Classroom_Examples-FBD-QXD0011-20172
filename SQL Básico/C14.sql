-- C14: Recuperar todos os funcionarios do departamento 5
-- com salário entre 30,000 e 40,000

SELECT f.pnome, f.salario
FROM funcionario f, departamento d
WHERE f.dnr=d.dnumero AND
        f.salario BETWEEN 30000 AND 40000 AND
        d.dnumero = 5