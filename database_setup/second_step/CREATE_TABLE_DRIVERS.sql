SET
    ANSI_NULLS ON
GO
SET
    QUOTED_IDENTIFIER ON
GO
    CREATE TABLE [dbo].[drivers](
        [driverId] [int] NOT NULL,
        [driverRef] [nvarchar](50) NOT NULL,
        [number] [nvarchar](50) NOT NULL,
        [code] [nvarchar](50) NOT NULL,
        [forename] [nvarchar](50) NOT NULL,
        [surname] [nvarchar](50) NOT NULL,
        [dob] [date] NULL,
        [nationality] [nvarchar](50) NULL,
        [url] [nvarchar](100) NULL
    ) ON [PRIMARY]
GO
ALTER TABLE
    [dbo].[drivers]
ADD
    CONSTRAINT [PK_drivers] PRIMARY KEY CLUSTERED ([driverId] ASC) WITH (
        PAD_INDEX = OFF,
        STATISTICS_NORECOMPUTE = OFF,
        SORT_IN_TEMPDB = OFF,
        IGNORE_DUP_KEY = OFF,
        ONLINE = OFF,
        ALLOW_ROW_LOCKS = ON,
        ALLOW_PAGE_LOCKS = ON
    ) ON [PRIMARY]
GO