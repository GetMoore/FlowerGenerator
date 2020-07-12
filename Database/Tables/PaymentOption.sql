CREATE TABLE [dbo].[PaymentOption]
(
	[Id] INT IDENTITY NOT NULL,
	[Type] INT NOT NULL,
	[UserName] VARCHAR(250) NOT NULL,

	CONSTRAINT PK_PaymentOption PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT FK_PaymentOption_Type FOREIGN KEY ([Type]) REFERENCES dbo.[PaymentOptionType]([Id])
)
