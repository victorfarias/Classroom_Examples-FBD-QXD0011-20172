SELECT f.pnome
FROM funcionario f
WHERE f.dnr in (SELECT d.dnumero
                FROM departamento d
                WHERE d.dnome like '%s%')