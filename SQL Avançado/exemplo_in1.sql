-- Número do departamento que tem mais de um funcionario e  
-- a quantidade de funcionários que ganham mais de 35.000

SELECT f.dnr, count(*)
FROM funcionario f
WHERE f.salario>35000 
      AND f.dnr IN (
          SELECT f.dnr
            FROM funcionario f
            WHERE f.dnr IS NOT NULL
            GROUP BY f.dnr
            HAVING count(*)>1
      )
GROUP BY f.dnr



