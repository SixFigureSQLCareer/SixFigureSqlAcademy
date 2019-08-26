CREATE TABLE [Metadata].[TransformationWorkflow] (
    [TransformationWorkflowID]          TINYINT      NOT NULL,
    [TransformationWorkflowDescription] VARCHAR (50) NULL,
    CONSTRAINT [PK_Metadata#TransformationWorkflow] PRIMARY KEY CLUSTERED ([TransformationWorkflowID] ASC)
);

