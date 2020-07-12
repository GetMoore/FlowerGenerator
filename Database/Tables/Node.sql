CREATE TABLE [dbo].[Node]
(
	[Id]		INT IDENTITY NOT NULL,
	[Tree]		INT			 NOT NULL,
	[Person]	INT			 NOT NULL,
	[Parent]	INT			 NULL,
	[GiftDate]	DATETIME	 NULL,

	CONSTRAINT PK_Node PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT FK_Node_Tree FOREIGN KEY ([Tree]) REFERENCES dbo.[Tree] ([Id]),
	CONSTRAINT FK_Node_Person FOREIGN KEY ([Person]) REFERENCES dbo.[Person] ([Id]),
	CONSTRAINT FK_Node_Parent FOREIGN KEY ([Person]) REFERENCES dbo.[Person] ([Id]),
)
