CREATE TABLE [dbo].[Node]
(
	[Id]		INT IDENTITY NOT NULL,
	[Tree]		INT			 NOT NULL,
	[Person]	INT			 NOT NULL,
	[Parent]	INT			 NULL,
	[GiftDate]	DATETIME	 NULL,
	CONSTRAINT PK_Node PRIMARY KEY CLUSTERED ([Id]),
	FOREIGN KEY ([Person]) REFERENCES Person([Id]),
	FOREIGN KEY ([Parent]) REFERENCES Person([Id]),
	FOREIGN KEY ([Tree]) REFERENCES [Tree] ([Id])
)
