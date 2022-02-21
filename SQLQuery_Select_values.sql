SELECT DISTINCT TOP 10  --SELECT = SELECIONA DISTINCT = NÃO TRAZ REPETIDOS TOP= NUMERO DE ITEMS
[Id], [Nome], [CategoriaId]
FROM  -- FROM = A PARTIR DE (TABELA) 
 [Curso02]
WHERE -- WHERE = ONDE aqui podem ser feitas comparações e operações
[Id] = 1 OR --AND
[CategoriaId] IS NOT NULL
ORDER BY -- ordena os items da coluna buscada
[Nome] ASC -- ASC do menor para o maior ou DESC do maior para o menor
