USE [curso]

DROP TABLE [Aluno]
  CREATE TABLE [Aluno](
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(150) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]), 
    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email]), 
  )
  GO

  CREATE INDEX [IX_Aluno_Email] ON [Aluno](Email)
  DROP INDEX [IX_Aluno_Email] ON [Aluno]

DROP TABLE [Curso]
  CREATE TABLE [Curso] (
      -- [Id]UNIQUEIDENTIFIER NOT NULL = gera um Id randomico
    [Id] INT NOT NULL IDENTITY(1,1), -- gera um Id apos o outro em sequancia 1,2,3,4,etc...
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL,
       
   CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
   CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
   REFERENCES [Categoria]([Id])  
)
GO 

DROP TABLE [Categoria]
  CREATE TABLE [Categoria] (
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
       
   CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])  
)
GO 

DROP TABLE [ProgressoCurso]
CREATE TABLE [ProgressoCurso](
[AlunoId] INT NOT NULL,
[CursoId] INT NOT NULL,
[Progresso] INT NOT NULL,
[UltimaAtualizacao] DATETIME NULL DEFAULT(GETDATE()),

CONSTRAINT PK_ProgressoCurso PRIMARY KEY([AlunoId], [CursoId])
)
GO

ALTER TABLE [Professor]
DROP CONSTRAINT [PK_Professor]

ALTER TABLE [Alunos]
DROP CONSTRAINT [UQ_Alunos_3214EC0696D452E6]


ALTER TABLE [Alunos]
    ADD [Document] NVARCHAR(11)

ALTER TABLE [Alunos]
ADD[Sobrenome] NVARCHAR(50) not null    

ALTER TABLE [Alunos]
DROP COLUMN [Document]

ALTER TABLE [Alunos]
ALTER COLUMN [Id] int NOT NULL 

ALTER TABLE [Alunos]
ALTER COLUMN [Document] CHAR(11) NOT NULL

ALTER TABLE [Alunos]
ALTER COLUMN [Nome] NVARCHAR(82) NOT NULL

ALTER TABLE [Alunos]
ALTER COLUMN [Nascimento] DATETIME NULL

ALTER TABLE [Alunos]
ALTER COLUMN [Active] BIT NOT NULL

