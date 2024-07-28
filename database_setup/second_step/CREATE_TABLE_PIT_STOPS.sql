SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[pit_stops](
        [raceId] [int] NOT NULL,
        [driverId] [int] NOT NULL,
        [stop] [int] NOT NULL,
        [lap] [int] NOT NULL,
        [time] [time](7) NOT NULL,
        [duration] [nvarchar](50) NOT NULL,
        [milliseconds] [int] NOT NULL
    ) ON [PRIMARY]
GO