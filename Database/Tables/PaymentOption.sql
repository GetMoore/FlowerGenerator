﻿CREATE TABLE [dbo].[PaymentOption]
(
	[Id] INT IDENTITY NOT NULL,
	[UserName] VARCHAR(250) NOT NULL,

	CONSTRAINT PK_PaymentOption PRIMARY KEY CLUSTERED ([Id])
)