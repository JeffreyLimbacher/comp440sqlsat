CREATE TABLE [dbo].[EmailVendor] (
    [VendorId] INT          NOT NULL,
    [PersonId] INT          NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    CONSTRAINT [XPKEmailVendor] PRIMARY KEY CLUSTERED ([VendorId] ASC, [PersonId] ASC, [Email] ASC),
    CONSTRAINT [R_52] FOREIGN KEY ([PersonId], [Email]) REFERENCES [dbo].[Email] ([PersonId], [Email])
);

