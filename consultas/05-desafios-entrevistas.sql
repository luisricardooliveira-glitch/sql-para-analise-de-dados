/*
Arquivo: 05-desafios-entrevistas.sql
Objetivo: praticar problemas comuns em entrevistas para vagas de dados.
*/

-- 1. Identificar salários acima da média geral.
SELECT
    id_funcionario,
    nome,
    salario
FROM funcionarios
WHERE salario > (
    SELECT AVG(salario)
    FROM funcionarios
)
ORDER BY salario DESC;

-- 2. Identificar nomes duplicados.
SELECT
    nome,
    COUNT(*) AS quantidade
FROM funcionarios
GROUP BY nome
HAVING COUNT(*) > 1
ORDER BY quantidade DESC, nome;

-- 3. Encontrar o segundo maior salário.
SELECT MAX(salario) AS [Segundo Maior Salário]
FROM funcionarios
WHERE salario < (
    SELECT MAX(salario)
    FROM funcionarios
);

-- 4. Mostrar o funcionário com maior salário em cada departamento.
WITH RankingSalarios AS (
    SELECT
        F.id_funcionario,
        F.nome,
        F.salario,
        D.nome_departamento,
        ROW_NUMBER() OVER (
            PARTITION BY F.id_departamento
            ORDER BY F.salario DESC
        ) AS posicao
    FROM funcionarios AS F
    INNER JOIN departamentos AS D
        ON F.id_departamento = D.id_departamento
)
SELECT
    nome AS [Nome do Funcionário],
    nome_departamento AS Departamento,
    salario AS [Maior Salário do Departamento]
FROM RankingSalarios
WHERE posicao = 1
ORDER BY salario DESC;

-- 5. Contar funcionários por faixa salarial.
SELECT
    CASE
        WHEN salario < 3000 THEN 'Até R$ 2.999'
        WHEN salario < 5000 THEN 'De R$ 3.000 a R$ 4.999'
        WHEN salario < 8000 THEN 'De R$ 5.000 a R$ 7.999'
        ELSE 'R$ 8.000 ou mais'
    END AS [Faixa Salarial],
    COUNT(*) AS [Qtd. Funcionários]
FROM funcionarios
GROUP BY
    CASE
        WHEN salario < 3000 THEN 'Até R$ 2.999'
        WHEN salario < 5000 THEN 'De R$ 3.000 a R$ 4.999'
        WHEN salario < 8000 THEN 'De R$ 5.000 a R$ 7.999'
        ELSE 'R$ 8.000 ou mais'
    END
ORDER BY MIN(salario);
