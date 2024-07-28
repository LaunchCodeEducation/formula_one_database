SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[results](
        [resultId] [int] NOT NULL,
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [constructorId] [int] NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [grid] [int] NOT NULL,
        [position] [nvarchar](50) NULL,
        [positionText] [nvarchar](50) NULL,
        [positionOrder] [int] NOT NULL,
        [points] [float] NOT NULL,
        [laps] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [nvarchar](50) NULL,
        [fastestLap] [nvarchar](100) NULL,
        [rank] [nvarchar](100) NULL,
        [fastestLapTime] [nvarchar](100) NOT NULL,
        [fastestLapSpeed] [nvarchar](100) NULL,
        [statusId] [int] NOT NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[results]
ADD
    CONSTRAINT [PK_results] PRIMARY KEY CLUSTERED ([resultId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO