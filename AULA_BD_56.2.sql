DELETE FROM funcionarios;

SET SQL_SAFE_UPDATES=0;

SELECT * FROM FUNCIONARIOS;

#CONTAGEM DE FUNCIONARIOS NO DEPARTAMENTO
SELECT id_departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY id_departamento;
 
 
#CONTAGEM DOS FUNCIONARIOS QUE RECEBEM ACIMA DE 10 MIL
SELECT id_departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
WHERE salario >10000 GROUP BY  id_departamento;

#CONTAGEM DOS FUNCIONARIOS QUE RECEBEM ENTRE 5 MIL E 10 MIL
SELECT id_departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
WHERE salario between 5000 and 10000 GROUP BY id_departamento;

select sun(salario) as soma_salarial
GROUP BY id_departamento;