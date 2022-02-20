USE [curso02]
CREATE DATABASE [curso02]
DROP TABLE [Categoria]

USE [curso02]
  CREATE TABLE [Categoria] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [Nome] NVARCHAR(80) NOT NULL,
       
   CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])  
)
GO 

  CREATE TABLE [Curso02] (
      -- [Id]UNIQUEIDENTIFIER NOT NULL = gera um Id randomico
    [Id] INT NOT NULL IDENTITY(1,1), -- gera um Id apos o outro em sequancia 1,2,3,4,etc...
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL,
       
   CONSTRAINT [PK_Curso02] PRIMARY KEY([Id]),
   CONSTRAINT [FK_Curso02_Categoria] FOREIGN KEY([CategoriaId])
   REFERENCES [Categoria]([Id])  
)
GO 

