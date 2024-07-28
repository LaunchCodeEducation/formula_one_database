SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[sprint_results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [int] NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](50) NULL,
        [fastestLapTime] [nvarchar](50) NOT NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[sprint_results]
ADD
    CONSTRAINT [PK_sprint_results] PRIMARY KEY CLUSTERED ([resultId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO