SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[circuits](
        [circuitId] [int] NOT NULL,
        [circuitRef] [nvarchar](50) NOT NULL,
        [name] [nvarchar](50) NOT NULL,
        [location] [nvarchar](50) NOT NULL,
        [country] [nvarchar](50) NOT NULL,
        [lat] [float] NOT NULL,
        [lng] [float] NOT NULL,
        [alt] [smallint] NOT NULL,
        [url] [nvarchar](100) NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[circuits]
ADD
    CONSTRAINT [PK_circuits] PRIMARY KEY CLUSTERED ([circuitId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO