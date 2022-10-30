CREATE TABLE [dbo].[MSSQL_TemporalHistoryFor_725577623] (
    [Alter_Ego_Person_ID] INT           NOT NULL,
    [Person_ID]           INT           NOT NULL,
    [Alter_Ego_ID]        INT           NOT NULL,
    [Sys_Start_Time]      DATETIME2 (7) NOT NULL,
    [Sys_End_Time]        DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_MSSQL_TemporalHistoryFor_725577623]
    ON [dbo].[MSSQL_TemporalHistoryFor_725577623]([Sys_End_Time] ASC, [Sys_Start_Time] ASC) WITH (DATA_COMPRESSION = PAGE);

