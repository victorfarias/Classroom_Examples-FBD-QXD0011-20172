-- Nome, número e quantas pessoas trabalham em cada projeto

SELECT projnumero, projnome, COUNT(fcpf)
FROM (trabalha_em RIGHT JOIN projeto ON pnr=projnumero)
GROUP BY projnumero;


SELECT dnome, count(cpf) AS qtd
FROM (funcionario f RIGHT JOIN departamento d ON f.dnr=d.dnumero)
GROUP BY dnumero
ORDER BY qtd DESC;