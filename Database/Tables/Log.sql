﻿CREATE TABLE [dbo].[Log]
(
	[Id] INT IDENTITY NOT NULL,
	[Date] DateTime NOT NULL,
	[UserName] VARCHAR(250) NOT NULL,
	[Exception] VARCHAR(250) NOT NULL,

	CONSTRAINT PK_Log PRIMARY KEY CLUSTERED ([Id]),
)
