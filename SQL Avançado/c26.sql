-- Para cada projeto com mais de dois funcionarios
-- recupere numero do projeto, nome e o número de funcionarios
SELECT p.projnumero, p.projnome, COUNT(*)
FROM projeto p, trabalha_em t
WHERE p.projnumero=t.pnr
GROUP BY p.projnumero
HAVING COUNT(*)>2;
