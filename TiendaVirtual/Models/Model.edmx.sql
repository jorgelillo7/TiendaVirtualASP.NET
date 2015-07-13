
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/25/2014 11:54:11
-- Generated from EDMX file: c:\users\jorge\documents\visual studio 2013\Projects\TiendaVirtual\TiendaVirtual\Models\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [C:\USERS\JORGE\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\TIENDAVIRTUAL\TIENDAVIRTUAL\APP_DATA\TIENDACONFIG.MDF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Pedidos'
CREATE TABLE [dbo].[Pedidos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Total] decimal(18,0)  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Login] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Libros'
CREATE TABLE [dbo].[Libros] (
    [Isbn] int  NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Autor] nvarchar(max)  NOT NULL,
    [Resumen] nvarchar(max)  NOT NULL,
    [Precio] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'LineasPedido'
CREATE TABLE [dbo].[LineasPedido] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cantidad] int  NOT NULL,
    [PedidoLineaPedido_LineaPedido_Id] int  NOT NULL,
    [Libro_Isbn] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Pedidos'
ALTER TABLE [dbo].[Pedidos]
ADD CONSTRAINT [PK_Pedidos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Isbn] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [PK_Libros]
    PRIMARY KEY CLUSTERED ([Isbn] ASC);
GO

-- Creating primary key on [Id] in table 'LineasPedido'
ALTER TABLE [dbo].[LineasPedido]
ADD CONSTRAINT [PK_LineasPedido]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PedidoLineaPedido_LineaPedido_Id] in table 'LineasPedido'
ALTER TABLE [dbo].[LineasPedido]
ADD CONSTRAINT [FK_PedidoLineaPedido]
    FOREIGN KEY ([PedidoLineaPedido_LineaPedido_Id])
    REFERENCES [dbo].[Pedidos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PedidoLineaPedido'
CREATE INDEX [IX_FK_PedidoLineaPedido]
ON [dbo].[LineasPedido]
    ([PedidoLineaPedido_LineaPedido_Id]);
GO

-- Creating foreign key on [Libro_Isbn] in table 'LineasPedido'
ALTER TABLE [dbo].[LineasPedido]
ADD CONSTRAINT [FK_LibroLineaPedido]
    FOREIGN KEY ([Libro_Isbn])
    REFERENCES [dbo].[Libros]
        ([Isbn])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LibroLineaPedido'
CREATE INDEX [IX_FK_LibroLineaPedido]
ON [dbo].[LineasPedido]
    ([Libro_Isbn]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------