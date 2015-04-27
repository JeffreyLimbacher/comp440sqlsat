CREATE TABLE [dbo].[Email] (
    [PersonId] INT          NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    CONSTRAINT [XPKEmail] PRIMARY KEY CLUSTERED ([PersonId] ASC, [Email] ASC),
    CONSTRAINT [R_49] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

