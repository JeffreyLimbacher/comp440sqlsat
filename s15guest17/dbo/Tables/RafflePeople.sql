CREATE TABLE [dbo].[RafflePeople] (
    [PersonId] CHAR (18) NOT NULL,
    [RaffleId] CHAR (18) NOT NULL,
    [Email]    CHAR (18) NULL,
    CONSTRAINT [XPKRafflePeople] PRIMARY KEY CLUSTERED ([PersonId] ASC, [RaffleId] ASC)
);

