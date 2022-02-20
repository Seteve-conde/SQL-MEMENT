INSERT INTO [Categoria]([Nome]) VALUES('Backend')
--            tabela   coluna          valor
INSERT INTO [Categoria]([Nome]) VALUES('Frontend')
INSERT INTO [Categoria]([Nome]) VALUES('Mobile')

--inserindo valores na tabela curso02 e na coluna Nome
INSERT INTO [curso02]([Nome], [CategoriaId]) VALUES('Fundamentos de C#', 1)
INSERT INTO [curso02]([Nome], [CategoriaId]) VALUES('Fundamentos de OOP', 1)
INSERT INTO [curso02]([Nome], [CategoriaId]) VALUES('Angular', 2)
INSERT INTO [curso02]([Nome], [CategoriaId]) VALUES('Fluter', 3)

--inserindo valores na ordem tabela-Id-Nome obs: não abuse disso
INSERT INTO [curso02] VALUES('Design Patterns',3)