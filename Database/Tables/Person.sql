CREATE TABLE [dbo].[Person]
(
	[Id]			INT IDENTITY	NOT NULL,
	[Name]			VARCHAR(250)	NOT NULL,
	[PaymentOption] INT				NULL,
	[EmailAddress]	VARCHAR(250)	NULL,
	[PhoneNumber]	VARCHAR(250)	NULL,
	[RecruitedBy]	INT				NULL,

	CONSTRAINT PK_Person PRIMARY KEY CLUSTERED ([Id]),
	CONSTRAINT FK_Person_PaymentOption FOREIGN KEY ([PaymentOption]) REFERENCES dbo.[PaymentOption]([Id]),
	CONSTRAINT FK_Person_RecruitedBy FOREIGN KEY ([RecruitedBy]) REFERENCES dbo.[Tree] ([Id]),
)
