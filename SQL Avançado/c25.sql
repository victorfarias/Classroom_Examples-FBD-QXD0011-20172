-- Para cada projeto, recuperar: 
-- número do projeto, nome do projeto e número de funcionários 

SELECT p.projnumero, p.projnome, COUNT(*)
FROM trabalha_em t, funcionario f, projeto p
WHERE f.cpf=t.fcpf AND
      t.pnr=p.projnumero
GROUP BY p.projnumero, p.projnome
