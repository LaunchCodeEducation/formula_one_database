SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[lap_times](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [position] [int] NOT NULL,
        [time] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
GO