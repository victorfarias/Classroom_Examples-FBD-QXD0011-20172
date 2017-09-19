-- C15 Recuperar todos os funcionários e todos os projetos
-- em que eles trabalham ordenado por nome do departamento.
-- Depois, dentro de cada departamento, ordenar por nome e, 
-- depois, por sobrenome

SELECT DISTINCT f.pnome, f.unome, d.dnome
FROM funcionario f, departamento d, projeto p
WHERE f.dnr = d.dnumero AND
        p.dnum = d.dnumero
ORDER BY d.dnome, f.pnome, f.unome