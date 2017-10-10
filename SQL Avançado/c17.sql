-- CPF do funcionários do projetos com número 1,2 e 3 
SELECT DISTINCT fcpf
FROM trabalha_em
WHERE pnr IN (1,2,3);