CREATE TABLE [Framework].[DataSourceControl] (
    [DataSetID]        INT           NOT NULL,
    [SourceDatabaseID] INT           NOT NULL,
    [EnableSource]     BIT           NULL,
    [ControlDate]      DATETIME2 (0) NULL,
    CONSTRAINT [PK_Framework#DataSourceControl] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [SourceDatabaseID] ASC),
    CONSTRAINT [FK_Framework#DataSourceControl_Metadata#DataSource] FOREIGN KEY ([DataSetID], [SourceDatabaseID]) REFERENCES [Metadata].[DataSource] ([DataSetID], [SourceDatabaseID])
);

