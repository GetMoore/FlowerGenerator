﻿CREATE TABLE [dbo].[PaymentOptionType]
(
	[Id]	INT IDENTITY NOT NULL,
	[Name] VARCHAR(250)  NOT NULL,

	CONSTRAINT PK_PaymentOptionType PRIMARY KEY CLUSTERED ([Id])
)