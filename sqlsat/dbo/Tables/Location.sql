CREATE TABLE [dbo].[Location] (
    [LocationId] INT           IDENTITY (1, 1) NOT NULL,
    [Address]    VARCHAR (500) NULL,
    CONSTRAINT [XPKLocation] PRIMARY KEY CLUSTERED ([LocationId] ASC)
);

