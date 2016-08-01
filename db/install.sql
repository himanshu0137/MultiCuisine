CREATE TABLE [dbo].[Facts] (
    [Id]   INT  IDENTITY (1, 1) NOT NULL,
    [fact] TEXT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[MenuItems] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [price]       MONEY          NOT NULL,
    [description] TEXT           NOT NULL,
    [type]        NVARCHAR (4)   NOT NULL,
    [course]      NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Testimonials] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (50) DEFAULT ('Anonymous') NULL,
    [description] TEXT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[User] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [name]    NVARCHAR (50) NOT NULL,
    [email]   NVARCHAR (50) NULL,
    [address] TEXT          NOT NULL,
    [phone]   NCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);