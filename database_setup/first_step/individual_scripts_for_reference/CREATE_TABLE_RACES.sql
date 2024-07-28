SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[races](
        [raceId] [int] NOT NULL,
        [year] [int] NOT NULL,
        [round] [int] NOT NULL,
        [circuitId] [int] NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [date] [date] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [url] [nvarchar](100) NOT NULL,
        [fp1_date] [nvarchar](50) NOT NULL,
        [fp1_time] [nvarchar](50) NOT NULL,
        [fp2_date] [nvarchar](50) NOT NULL,
        [fp2_time] [nvarchar](50) NOT NULL,
        [fp3_date] [nvarchar](50) NOT NULL,
        [fp3_time] [nvarchar](50) NOT NULL,
        [quali_date] [nvarchar](50) NOT NULL,
        [quali_time] [nvarchar](50) NOT NULL,
        [sprint_date] [nvarchar](50) NOT NULL,
        [sprint_time] [nvarchar](50) NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[races]
ADD
    CONSTRAINT [PK_races] PRIMARY KEY CLUSTERED ([raceId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO