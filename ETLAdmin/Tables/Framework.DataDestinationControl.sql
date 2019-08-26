CREATE TABLE [Framework].[DataDestinationControl] (
    [DataSetID]             INT           NOT NULL,
    [DestinationDatabaseID] INT           NOT NULL,
    [EnableDestination]     BIT           NULL,
    [ControlDate]           DATETIME2 (0) NULL,
    CONSTRAINT [PK_Framework#DataDestinationControl] PRIMARY KEY CLUSTERED ([DataSetID] ASC, [DestinationDatabaseID] ASC),
    CONSTRAINT [FK_Framework#DataDestinationControl_Metadata#DataDestination] FOREIGN KEY ([DataSetID], [DestinationDatabaseID]) REFERENCES [Metadata].[DataDestination] ([DataSetID], [DestinationDatabaseID])
);

