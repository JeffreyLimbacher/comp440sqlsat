CREATE TABLE [dbo].[Vendor] (
    [PersonId] INT       NOT NULL,
    [VendorId] CHAR (18) NOT NULL,
    CONSTRAINT [XPKVendor] PRIMARY KEY CLUSTERED ([VendorId] ASC),
    CONSTRAINT [R_8] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

