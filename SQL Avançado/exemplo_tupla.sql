-- Cpf, número do projeto e horas dos funcionarios que tem 
-- mesma combinação de número de projeto e horas que o funcionário
-- com cpf 12345678966

SELECT t1.fcpf, t1.pnr, t1.horas
FROM trabalha_em t1
WHERE (t1.pnr,t1.horas) in (
    SELECT t2.pnr, t2.horas
    FROM trabalha_em t2
    WHERE t2.fcpf='12345678966'
)