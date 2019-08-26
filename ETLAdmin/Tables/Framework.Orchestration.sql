CREATE TABLE [Framework].[Orchestration] (
    [OrchestrationID]   INT            NOT NULL,
    [OrchestrationName] VARCHAR (50)   NOT NULL,
    [JobName]           NVARCHAR (128) NOT NULL,
    [SsisProject]       NVARCHAR (128) NULL,
    [SsisMasterPackage] NVARCHAR (128) NULL,
    CONSTRAINT [PK_Framework#Orchestration] PRIMARY KEY CLUSTERED ([OrchestrationID] ASC)
);

