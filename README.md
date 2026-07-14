# SQL para Análise de Dados

Portfólio de consultas em **SQL Server** voltadas à extração, organização e análise de dados para responder perguntas de negócio.

O repositório reúne exercícios documentados, exemplos de relacionamento entre tabelas e consultas aplicadas ao banco de estudos **AdventureWorks**, da Microsoft.

## Objetivo

Demonstrar conhecimentos práticos em:

- seleção e organização de dados com `SELECT`;
- filtros com `WHERE`;
- ordenação com `ORDER BY`;
- criação de aliases com `AS`;
- relacionamento de tabelas com `INNER JOIN` e `LEFT JOIN`;
- agregações com `COUNT`, `SUM`, `AVG`, `MIN` e `MAX`;
- agrupamento com `GROUP BY`;
- filtros de agregações com `HAVING`;
- identificação de registros duplicados;
- tradução de perguntas de negócio em consultas SQL.

## Estrutura do repositório

```text
sql-para-analise-de-dados/
├── README.md
├── consultas/
│   ├── 01-filtros-e-ordenacao.sql
│   ├── 02-joins.sql
│   ├── 03-adventureworks-compras.sql
│   ├── 04-agregacoes.sql
│   └── 05-desafios-entrevistas.sql
└── documentacao/
    ├── modelo-relacional.md
    └── dicionario-de-dados.md
```

## Consultas disponíveis

### 1. Filtros e ordenação

Consultas básicas para selecionar colunas, aplicar condições e ordenar resultados.

### 2. Relacionamento entre tabelas

Exemplos com funcionários e departamentos para demonstrar a diferença entre `INNER JOIN` e `LEFT JOIN`.

### 3. AdventureWorks — análise de compras

Consulta relacionando:

- `Purchasing.PurchaseOrderDetail`;
- `Production.Product`.

O objetivo é apresentar os itens dos pedidos de compra com nome do produto, quantidade, preço, valor total e data prevista de entrega.

### 4. Agregações

Consultas para calcular totais, médias, quantidades e resultados agrupados.

### 5. Desafios de entrevistas

Exercícios comuns em processos seletivos, incluindo duplicados, ranking, subconsultas, CTE e função de janela com `ROW_NUMBER()`.

## Tecnologias

- SQL Server
- SQL Server Management Studio — SSMS
- AdventureWorks
- Modelagem relacional

## Contexto de aprendizagem

Este repositório registra minha evolução prática em SQL. As consultas são acompanhadas de comentários para demonstrar o raciocínio utilizado e facilitar futuras revisões.

Os exemplos fictícios são utilizados exclusivamente para aprendizagem. As consultas do AdventureWorks usam o banco demonstrativo disponibilizado pela Microsoft.

## Próximas evoluções

- aprofundar o uso de CTEs e funções de janela;
- desenvolver análises de vendas e estoque;
- incluir planos de execução e melhorias de performance;
- conectar consultas a projetos de Power BI.

---

Desenvolvido por **Luis Ricardo Oliveira**, profissional em transição para Análise de Dados e Business Intelligence.