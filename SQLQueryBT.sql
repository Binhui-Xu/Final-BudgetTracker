-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [dbo].[User](
-- 	[Id] [int] IDENTITY(1,1) NOT NULL,
-- 	[Email] [nvarchar](50) NOT NULL,
-- 	[HashedPassword] [nvarchar](1024) NOT NULL,
-- 	[Salt] [nvarchar](1024) NOT NULL,
-- 	[FullName] [nvarchar](50) NULL,
-- 	[JoinedOn] [datetime2](7) NULL
-- ) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[User] ADD  CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
-- (
-- 	[Id] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[User] ADD  DEFAULT (getdate()) FOR [JoinedOn]
-- GO

--create table [#tempUser] (
--[Id] [int] identity,
--[Email] [nvarchar] (50),
--[HashedPassword] [nvarchar] (1024),
--[Salt] [nvarchar] (1024),
--[FullName] [nvarchar] (50) NULL,
--[JoinedOn] [datetime2] NULL);



set identity_insert [User] on;


insert [User] ([Id],[Email],[HashedPassword],[Salt],[FullName],[JoinedOn])
select 1,N'bhx@bhx.com',N'b/PLfIPGZTFGjXuIxcKrxkDbLXpyV+XiQm9x1qgi3n8=',N'Jms5D6ewyqvvalzbUIJT8Q==',N'Bin XU',NULL UNION ALL
select 2,N'aaa@aaa.com',N'yZDHw83MmmDI+oQ/mk5m4C0IAAQ4xT4UKpT76NZ9XTs=',N'SvOF9SMQBI3mht1e12Fiaw==',N'Tom Zhang','2021-07-26 19:09:37.3591260' UNION ALL
select 3,N'willima@abc.com',N'oinHo+bmHTZLCNzsVsQXqqOROsqzNAs9KEwYTN3k0D8=',N'4LlyFOY4LjDpItSWKyZqyg==',N'Willima Smith','2021-07-26 23:51:48.3580560' UNION ALL
select 4,N'Ella@abc.com',N'ofWa3KojbgRL3p8R0FOw7nWjyEp61agp1qTcui6XmM0=',N'dbO3WRAMi2puX7OrP9ORfw==',N'Ella Miller','2021-07-26 23:52:43.7152150' UNION ALL
select 5,N'Jackson@abc.com',N'y/10C6iwNhjm9qvjo6e7zhn4amXCaJdeoW17Z7cStX4=',N'BZtg1tFxewpiOSrXdEGQ9Q==',N'Jackson Jones','2021-07-26 23:53:28.1391980' UNION ALL
select 6,N'Avery@abc.com',N's+u/l25yS0zjyPfZi6lAB5dvPtiF+0m3FyY6wgSWjbk=',N'06oKKZ41SlT80aOtK+5TUw==',N'Avery Garcia','2021-07-26 23:54:08.1171450' UNION ALL
select 7,N'Scarlett@abc.com',N'HXEP3vMgBlivcrnr3i9QUwKUbnjYun8AwV8BO/CRyS4=',N'ME5BbSdukVmleMQpApixiQ==',N'Scarlett Brown','2021-07-26 23:54:58.7129790' UNION ALL
select 8,N'Jack@abc.com',N'o6T4XsKyaK3DKIM7y+cusJwil2NdicaodmPCDtURgm4=',N'3FtyvwPahehtyO5G53kgKQ==',N'Jack Davis','2021-07-26 23:55:30.3967940' UNION ALL
select 9,N'Ellie@abc.com',N'jK+Y0RWUsqjipHeYvnNWBqe2EaBD0isMBqqodFFtB2A=',N'ahNZZEo68mLRwIkvdBRzWw==',N'Ellia Miller','2021-07-26 23:56:04.5324990' UNION ALL
select 10,N'Wyatt@abc.com',N'Ahoryx6jZ8W1ZsCw+VeN1lzcBMMXRz1TritUYZGdIQc=',N'sAq7C9lSkiR2911EoN1CYw==',N'Wyatt Johnson','2021-07-26 23:56:40.0515630' UNION ALL
select 11,N'Julian@abc.com',N'hXfEyoWbR9B23FsXVXg1iZo0CdzgzjwUXJSsBOuAgQo=',N'7xe+nM1gYWh5meS8H49hYQ==',N'Julian Martinez','2021-07-26 23:57:20.6099420' UNION ALL
select 12,N'Lily@abc.com',N'Tm4p2l+DMFKRunEgdq2HClte0NXHhJ0DjXE03mpgj5o=',N'hoE/Slp8WUUySDLaJwLO7w==',N'Lily Smith','2021-07-26 23:57:55.9908380' UNION ALL
select 13,N'Grayson@abc.com',N'YwoU28Lg7DoLHyBEJMtyUDseJnEffgdG0CF0MOjT5N0=',N'P15SjFiDvK1SBlvjx/3Z+Q==',N'Grayson Hacke','2021-07-26 23:58:47.6718720' UNION ALL
select 14,N'Lincoln@abc.com',N'QRRrHQ2XL832vTGISUz7Zq61v+cDa/7OhpwNKdxTv3g=',N'iPsSwjQnZh4TQOrcSQVXBQ==',N'Lincoln Dass','2021-07-26 23:59:35.9532550' UNION ALL
select 15,N'Everly@abc.com',N'4Q34+E9l+WzHzqyCYcxE/j73QYPve9N6qxSrYoh6nDc=',N'hK5h7xGKpCf+2OudzRRDRQ==',N'Everly Datta','2021-07-27 00:00:02.8646030' UNION ALL
select 16,N'Jemmie@abc.com',N'xVlJ48MvmnUytLh16ypdpU44HsSJn+ueNwHYMm31e/k=',N'BxYk5oVLiQpgcx/C+5a5LA==',N'Jemmie Datz','2021-07-27 00:00:34.1211000' UNION ALL
select 17,N'Addison@abc.com',N'jOpNvmJvXTCFC/0ni/9qXY7MdZKtDr2K2UwkyRzReGI=',N'tAQ9x0bHMC0qp1nGwue3LQ==',N'Addison Raco','2021-07-27 00:01:04.8395880' UNION ALL
select 18,N'Willow@abc.com',N'TQweAQv9gOGQS0G7DKjiuHXTEF0OApAyxR6Z5M/pDys=',N'sA1h9qlmHv5+nWdhfWo3HQ==',N'Willow Racy','2021-07-27 00:01:29.6531090' UNION ALL
select 19,N'Jaxon@abc.com',N'P+zXRdpCQnATiu51nWyayFXyj3+5uXJcm3+J8EjWtDk=',N'jD/RrX62gbNPbCb7GExWxA==',N'Jaxon Rabin','2021-07-27 00:01:54.5728760' UNION ALL
select 20,N'Ivy@abc.com',N'bUpmV2vhubZ4MonzrMFxf8RvBEOGSfU/BVnBOmI+RdM=',N'HOS/Vi5DdnVOrC65Kgp28Q==',N'Ivy Paci','2021-07-27 00:02:51.5268640' UNION ALL
select 21,N'Kelly@abc.com',N'wYPb1CotZr2XP9oerz1VZDzGx0OSU4SRj7NpsGYQXI0=',N'mcqmu7IIvDG5CAma8Jxb1g==',N'Kelly Song','2021-07-27 17:34:41.4518480' UNION ALL
select 23,N'Helen@abc.com',N'AYIIdToYrg02dBp1NKMa6HVxp/tmwkuudciNMqVbIjM=',N'socY+hSgryqcd5m2x2BIPA==',N'Helen Taylor','2021-07-27 18:58:48.9893080' UNION ALL
select 24,N'test@abc.com',N'8bA5oEENlGKIFjq+nrp2pRqCWsGXjVNecB7yQX893OI=',N'3gN/xlo0OKmJuTPKuEX6gw==',N'Test test','2021-07-27 19:03:07.9383670';

set identity_insert [User] off;


-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [dbo].[Income](
-- 	[Id] [int] IDENTITY(1,1) NOT NULL,
-- 	[UserId] [int] NOT NULL,
-- 	[Amount] [money] NOT NULL,
-- 	[Description] [nvarchar](100) NULL,
-- 	[IncomeDate] [datetime2](7) NULL,
-- 	[Remarks] [nvarchar](500) NULL
-- ) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[Income] ADD  CONSTRAINT [PK_Income] PRIMARY KEY CLUSTERED 
-- (
-- 	[Id] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- CREATE NONCLUSTERED INDEX [IX_Income_UserId] ON [dbo].[Income]
-- (
-- 	[UserId] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[Income] ADD  DEFAULT (getdate()) FOR [IncomeDate]
-- GO
-- ALTER TABLE [dbo].[Income]  WITH CHECK ADD  CONSTRAINT [FK_Income_User_UserId] FOREIGN KEY([UserId])
-- REFERENCES [dbo].[User] ([Id])
-- ON DELETE CASCADE
-- GO
-- ALTER TABLE [dbo].[Income] CHECK CONSTRAINT [FK_Income_User_UserId]
-- GO


--create table [#tempIncome] (
--[Id] [int] identity,
--[UserId] [int],
--[Amount] [money],
--[Description] [nvarchar] (100) NULL,
--[IncomeDate] [datetime2] NULL,
--[Remarks] [nvarchar] (500) NULL);



set identity_insert [Income] on;


insert [Income] ([Id],[UserId],[Amount],[Description],[IncomeDate],[Remarks])
select 1,1,7000.0000,N'salary','2021-07-09 00:00:00.0000000',NULL UNION ALL
select 10,2,8000.0000,N'House','2021-07-04 00:00:00.0000000',NULL UNION ALL
select 11,4,10000.0000,N'salary','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 12,3,10000.0000,N'salary','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 13,3,200.0000,N'interest','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 15,4,5000.0000,N'salary','2013-10-16 00:00:00.0000000',NULL UNION ALL
select 16,5,1999.0000,N'salary','2020-01-01 00:00:00.0000000',NULL UNION ALL
select 17,5,29000.0000,N'salary','2020-01-01 00:00:00.0000000',NULL UNION ALL
select 18,6,4000.0000,N'salary','2020-01-01 00:00:00.0000000',NULL UNION ALL
select 19,7,40592.0000,N'salary','2012-01-01 00:00:00.0000000',NULL UNION ALL
select 20,8,3000.0000,N'salary','2013-01-01 00:00:00.0000000',NULL UNION ALL
select 21,4,0.0012,N'interest','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 22,1,123.0000,N'interest','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 23,2,78.0000,N'interest','2020-01-01 00:00:00.0000000',NULL UNION ALL
select 26,5,1002.0000,N'food','2021-07-27 23:32:57.8366667',NULL UNION ALL
select 27,5,1002.0000,N'salary','2021-07-27 23:35:25.1633333',NULL UNION ALL
select 28,6,4000.0000,N'salary','2021-07-27 23:35:25.1700000',NULL UNION ALL
select 29,7,503042.0000,N'salary','2021-07-27 23:35:25.1733333',NULL UNION ALL
select 30,8,23423.0000,N'salary','2021-07-27 23:35:25.1766667',NULL UNION ALL
select 31,9,45232.0000,N'salary','2021-07-27 23:35:25.1766667',NULL UNION ALL
select 32,10,45232.0000,N'salary','2021-07-27 23:35:25.1800000',NULL UNION ALL
select 33,11,45232.0000,N'salary','2021-07-27 23:35:25.1800000',NULL UNION ALL
select 34,12,45232.0000,N'salary','2021-07-27 23:35:25.1833333',NULL UNION ALL
select 35,13,45232.0000,N'salary','2021-07-27 23:35:25.1866667',NULL UNION ALL
select 36,14,45232.0000,N'salary','2021-07-27 23:35:25.1900000',NULL UNION ALL
select 37,15,45232.0000,N'salary','2021-07-27 23:35:25.1900000',NULL UNION ALL
select 38,16,45232.0000,N'salary','2021-07-27 23:35:25.1900000',NULL UNION ALL
select 39,17,45232.0000,N'salary','2021-07-27 23:35:25.1933333',NULL UNION ALL
select 40,18,45232.0000,N'salary','2021-07-27 23:35:25.1966667',NULL UNION ALL
select 41,19,45232.0000,N'salary','2021-07-27 23:35:25.2000000',NULL UNION ALL
select 42,20,45232.0000,N'salary','2021-07-27 23:35:25.2033333',NULL UNION ALL
select 43,5,1002.0000,N'interset','2021-07-27 23:36:37.6566667',NULL UNION ALL
select 44,6,4000.0000,N'interset','2021-07-27 23:36:37.6600000',NULL UNION ALL
select 45,7,503042.0000,N'interset','2021-07-27 23:36:37.6666667',NULL UNION ALL
select 46,8,23423.0000,N'interset','2021-07-27 23:36:37.6700000',NULL UNION ALL
select 47,9,45232.0000,N'interset','2021-07-27 23:36:37.6733333',NULL UNION ALL
select 48,10,45232.0000,N'interset','2021-07-27 23:36:37.6766667',NULL UNION ALL
select 49,11,45232.0000,N'interset','2021-07-27 23:36:37.6800000',NULL UNION ALL
select 50,12,45232.0000,N'interset','2021-07-27 23:36:37.6833333',NULL UNION ALL
select 51,13,45232.0000,N'interset','2021-07-27 23:36:37.6833333',NULL UNION ALL
select 52,14,45232.0000,N'interset','2021-07-27 23:36:37.6866667',NULL UNION ALL
select 53,15,45232.0000,N'interset','2021-07-27 23:36:37.6866667',NULL UNION ALL
select 54,16,45232.0000,N'interset','2021-07-27 23:36:37.6900000',NULL UNION ALL
select 55,17,45232.0000,N'interset','2021-07-27 23:36:37.6900000',NULL UNION ALL
select 56,18,45232.0000,N'interset','2021-07-27 23:36:37.6900000',NULL UNION ALL
select 57,19,45232.0000,N'interset','2021-07-27 23:36:37.6933333',NULL UNION ALL
select 58,20,45232.0000,N'interset','2021-07-27 23:36:37.6933333',NULL UNION ALL
select 59,1,1002.0000,N'interset','2021-07-28 00:21:31.4466667',NULL UNION ALL
select 60,2,4000.0000,N'interset','2021-07-28 00:21:31.4500000',NULL UNION ALL
select 61,3,503042.0000,N'interset','2021-07-28 00:21:31.4533333',NULL UNION ALL
select 62,4,23423.0000,N'interset','2021-07-28 00:21:31.4533333',NULL UNION ALL
select 63,1,45232.0000,N'salary','2021-07-28 00:21:37.4233333',NULL UNION ALL
select 64,2,45232.0000,N'salary','2021-07-28 00:21:37.4266667',NULL UNION ALL
select 65,3,45232.0000,N'salary','2021-07-28 00:21:37.4300000',NULL UNION ALL
select 66,4,45232.0000,N'salary','2021-07-28 00:21:37.4333333',NULL UNION ALL
select 67,24,10.0000,N'interset','2021-07-28 00:40:26.1933333',NULL UNION ALL
select 68,24,10.0000,N'interset','2021-07-28 00:40:26.2100000',NULL UNION ALL
select 69,24,10.0000,N'interset','2021-07-28 00:40:26.2100000',NULL UNION ALL
select 70,24,100.0000,N'salary','2021-07-28 00:40:26.2133333',NULL UNION ALL
select 71,24,100.0000,N'salary','2021-07-28 00:40:26.2166667',NULL UNION ALL
select 72,24,100.0000,N'salary','2021-07-28 00:40:26.2166667',NULL;

set identity_insert [Income] off;


-- SET ANSI_NULLS ON
-- GO
-- SET QUOTED_IDENTIFIER ON
-- GO
-- CREATE TABLE [dbo].[Expenditure](
-- 	[Id] [int] IDENTITY(1,1) NOT NULL,
-- 	[UserId] [int] NOT NULL,
-- 	[Amount] [money] NOT NULL,
-- 	[Description] [nvarchar](100) NULL,
-- 	[ExpDate] [datetime2](7) NULL,
-- 	[Remarks] [nvarchar](500) NULL
-- ) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[Expenditure] ADD  CONSTRAINT [PK_Expenditure] PRIMARY KEY CLUSTERED 
-- (
-- 	[Id] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- CREATE NONCLUSTERED INDEX [IX_Expenditure_UserId] ON [dbo].[Expenditure]
-- (
-- 	[UserId] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- ALTER TABLE [dbo].[Expenditure] ADD  DEFAULT (getdate()) FOR [ExpDate]
-- GO
-- ALTER TABLE [dbo].[Expenditure]  WITH CHECK ADD  CONSTRAINT [FK_Expenditure_User_UserId] FOREIGN KEY([UserId])
-- REFERENCES [dbo].[User] ([Id])
-- ON DELETE CASCADE
-- GO
-- ALTER TABLE [dbo].[Expenditure] CHECK CONSTRAINT [FK_Expenditure_User_UserId]
-- GO


--create table [#tempExpenditure] (
--[Id] [int] identity,
--[UserId] [int],
--[Amount] [money],
--[Description] [nvarchar] (100) NULL,
--[ExpDate] [datetime2] NULL,
--[Remarks] [nvarchar] (500) NULL);


set identity_insert [Expenditure] on;


insert [Expenditure] ([Id],[UserId],[Amount],[Description],[ExpDate],[Remarks])
select 1,1,-10.0000,N'Food','2021-07-15 00:00:00.0000000',NULL UNION ALL
select 3,1,-150.0000,N'Food','2021-07-17 00:00:00.0000000',NULL UNION ALL
select 4,1,-1250.0000,N'car','2021-01-15 00:00:00.0000000',NULL UNION ALL
select 6,2,-100.0000,N'Food','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 7,2,-200.0000,N'car','1990-01-01 00:00:00.0000000',NULL UNION ALL
select 8,2,-500.0000,N'travel','1995-01-01 00:00:00.0000000',NULL UNION ALL
select 9,2,199.0000,N'dental','2021-01-01 00:00:00.0000000',NULL UNION ALL
select 10,3,-4000.0000,N'travel','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 11,3,-300.0000,N'Food','2005-01-01 00:00:00.0000000',NULL UNION ALL
select 12,3,-9000.0000,N'House','2019-01-25 00:00:00.0000000',NULL UNION ALL
select 13,6,-9000.0000,N'car','2020-01-18 00:00:00.0000000',NULL UNION ALL
select 14,4,-12390.0000,N'house','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 15,1,-1392.0000,N'electric','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 16,1,-9938.0000,N'medicine','2020-01-01 00:00:00.0000000',NULL UNION ALL
select 17,2,-9834.0000,N'Food','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 18,5,-98000.0000,N'House','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 19,5,-12390.0000,N'house','2019-01-01 00:00:00.0000000',NULL UNION ALL
select 20,3,-969.0000,N'Food','2012-01-01 00:00:00.0000000',NULL UNION ALL
select 21,3,-78.0000,N'taxi','2012-01-01 00:00:00.0000000',NULL UNION ALL
select 22,4,-10.0000,N'Food','2021-01-01 00:00:00.0000000',NULL UNION ALL
select 23,4,-200.0000,N'party','0105-06-01 00:00:00.0000000',NULL UNION ALL
select 24,4,-10000.0000,N'hospital','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 25,4,-495.0000,N'Food','0001-01-01 00:00:00.0000000',NULL UNION ALL
select 26,20,-876.0000,N'shopping','2021-07-27 23:38:18.1966667',NULL UNION ALL
select 27,20,-876.0000,N'shopping','2021-07-27 23:38:18.2000000',NULL UNION ALL
select 28,20,-876.0000,N'shopping','2021-07-27 23:38:18.2033333',NULL UNION ALL
select 29,20,-876.0000,N'shopping','2021-07-27 23:38:18.2033333',NULL UNION ALL
select 30,20,-876.0000,N'shopping','2021-07-27 23:38:18.2066667',NULL UNION ALL
select 31,19,-876.0000,N'shopping','2021-07-27 23:39:48.8166667',NULL UNION ALL
select 32,19,-876.0000,N'shopping','2021-07-27 23:39:48.8200000',NULL UNION ALL
select 33,19,-876.0000,N'shopping','2021-07-27 23:39:48.8266667',NULL UNION ALL
select 34,19,-876.0000,N'shopping','2021-07-27 23:39:48.8300000',NULL UNION ALL
select 35,19,-876.0000,N'shopping','2021-07-27 23:39:48.8300000',NULL UNION ALL
select 36,18,-876.0000,N'shopping','2021-07-28 00:15:34.3600000',NULL UNION ALL
select 37,18,-876.0000,N'shopping','2021-07-28 00:15:34.3900000',NULL UNION ALL
select 38,18,-876.0000,N'shopping','2021-07-28 00:15:34.3933333',NULL UNION ALL
select 39,18,-876.0000,N'shopping','2021-07-28 00:15:34.3966667',NULL UNION ALL
select 40,18,-876.0000,N'shopping','2021-07-28 00:15:34.4000000',NULL UNION ALL
select 41,17,-876.0000,N'shopping','2021-07-28 00:15:49.5800000',NULL UNION ALL
select 42,17,-876.0000,N'shopping','2021-07-28 00:15:49.5866667',NULL UNION ALL
select 43,17,-876.0000,N'shopping','2021-07-28 00:15:49.5900000',NULL UNION ALL
select 44,17,-876.0000,N'shopping','2021-07-28 00:15:49.5966667',NULL UNION ALL
select 45,17,-876.0000,N'shopping','2021-07-28 00:15:49.6000000',NULL UNION ALL
select 46,16,-876.0000,N'shopping','2021-07-28 00:16:01.0133333',NULL UNION ALL
select 47,16,-876.0000,N'shopping','2021-07-28 00:16:01.0200000',NULL UNION ALL
select 48,16,-876.0000,N'shopping','2021-07-28 00:16:01.0233333',NULL UNION ALL
select 49,16,-876.0000,N'shopping','2021-07-28 00:16:01.0266667',NULL UNION ALL
select 50,16,-876.0000,N'shopping','2021-07-28 00:16:01.0300000',NULL UNION ALL
select 51,15,-876.0000,N'shopping','2021-07-28 00:16:13.3000000',NULL UNION ALL
select 52,15,-876.0000,N'shopping','2021-07-28 00:16:13.3100000',NULL UNION ALL
select 53,15,-876.0000,N'shopping','2021-07-28 00:16:13.3133333',NULL UNION ALL
select 54,15,-876.0000,N'shopping','2021-07-28 00:16:13.3200000',NULL UNION ALL
select 55,15,-876.0000,N'shopping','2021-07-28 00:16:13.3233333',NULL UNION ALL
select 56,14,-876.0000,N'shopping','2021-07-28 00:16:24.7033333',NULL UNION ALL
select 57,14,-876.0000,N'shopping','2021-07-28 00:16:24.7066667',NULL UNION ALL
select 58,14,-876.0000,N'shopping','2021-07-28 00:16:24.7100000',NULL UNION ALL
select 59,14,-876.0000,N'shopping','2021-07-28 00:16:24.7100000',NULL UNION ALL
select 60,14,-876.0000,N'shopping','2021-07-28 00:16:24.7133333',NULL UNION ALL
select 61,13,-876.0000,N'shopping','2021-07-28 00:16:37.0700000',NULL UNION ALL
select 62,13,-876.0000,N'shopping','2021-07-28 00:16:37.0733333',NULL UNION ALL
select 63,13,-876.0000,N'shopping','2021-07-28 00:16:37.0766667',NULL UNION ALL
select 64,13,-876.0000,N'shopping','2021-07-28 00:16:37.0800000',NULL UNION ALL
select 65,13,-876.0000,N'shopping','2021-07-28 00:16:37.0833333',NULL UNION ALL
select 66,12,-876.0000,N'shopping','2021-07-28 00:16:48.6866667',NULL UNION ALL
select 67,12,-876.0000,N'shopping','2021-07-28 00:16:48.6900000',NULL UNION ALL
select 68,12,-876.0000,N'shopping','2021-07-28 00:16:48.6966667',NULL UNION ALL
select 69,12,-876.0000,N'shopping','2021-07-28 00:16:48.6966667',NULL UNION ALL
select 70,12,-876.0000,N'shopping','2021-07-28 00:16:48.7000000',NULL UNION ALL
select 71,11,-876.0000,N'shopping','2021-07-28 00:17:06.6633333',NULL UNION ALL
select 72,11,-876.0000,N'shopping','2021-07-28 00:17:06.6666667',NULL UNION ALL
select 73,11,-876.0000,N'shopping','2021-07-28 00:17:06.6700000',NULL UNION ALL
select 74,11,-876.0000,N'shopping','2021-07-28 00:17:06.6733333',NULL UNION ALL
select 75,11,-876.0000,N'shopping','2021-07-28 00:17:06.6766667',NULL UNION ALL
select 76,10,-876.0000,N'shopping','2021-07-28 00:17:18.6066667',NULL UNION ALL
select 77,10,-876.0000,N'shopping','2021-07-28 00:17:18.6100000',NULL UNION ALL
select 78,10,-876.0000,N'shopping','2021-07-28 00:17:18.6100000',NULL UNION ALL
select 79,10,-876.0000,N'shopping','2021-07-28 00:17:18.6133333',NULL UNION ALL
select 80,10,-876.0000,N'shopping','2021-07-28 00:17:18.6166667',NULL UNION ALL
select 81,9,-876.0000,N'shopping','2021-07-28 00:17:29.9733333',NULL UNION ALL
select 82,9,-876.0000,N'shopping','2021-07-28 00:17:29.9833333',NULL UNION ALL
select 83,9,-876.0000,N'shopping','2021-07-28 00:17:29.9833333',NULL UNION ALL
select 84,9,-876.0000,N'shopping','2021-07-28 00:17:29.9866667',NULL UNION ALL
select 85,9,-876.0000,N'shopping','2021-07-28 00:17:29.9900000',NULL UNION ALL
select 86,8,-876.0000,N'shopping','2021-07-28 00:17:44.1100000',NULL UNION ALL
select 87,8,-876.0000,N'shopping','2021-07-28 00:17:44.1133333',NULL UNION ALL
select 88,8,-876.0000,N'shopping','2021-07-28 00:17:44.1166667',NULL UNION ALL
select 89,8,-876.0000,N'shopping','2021-07-28 00:17:44.1200000',NULL UNION ALL
select 90,8,-876.0000,N'shopping','2021-07-28 00:17:44.1233333',NULL UNION ALL
select 91,7,-876.0000,N'shopping','2021-07-28 00:17:54.5866667',NULL UNION ALL
select 92,7,-876.0000,N'shopping','2021-07-28 00:17:54.5900000',NULL UNION ALL
select 93,7,-876.0000,N'shopping','2021-07-28 00:17:54.5900000',NULL UNION ALL
select 94,7,-876.0000,N'shopping','2021-07-28 00:17:54.5933333',NULL UNION ALL
select 95,7,-876.0000,N'shopping','2021-07-28 00:17:54.5966667',NULL UNION ALL
select 96,6,-876.0000,N'shopping','2021-07-28 00:18:13.4133333',NULL UNION ALL
select 97,6,-876.0000,N'shopping','2021-07-28 00:18:13.4166667',NULL UNION ALL
select 98,6,-876.0000,N'shopping','2021-07-28 00:18:13.4200000',NULL UNION ALL
select 99,6,-876.0000,N'shopping','2021-07-28 00:18:13.4200000',NULL UNION ALL
select 100,6,-876.0000,N'shopping','2021-07-28 00:18:13.4266667',NULL UNION ALL
select 101,5,-876.0000,N'shopping','2021-07-28 00:18:23.1366667',NULL UNION ALL
select 102,5,-876.0000,N'shopping','2021-07-28 00:18:23.1400000',NULL UNION ALL
select 103,5,-876.0000,N'shopping','2021-07-28 00:18:23.1400000',NULL UNION ALL
select 104,5,-876.0000,N'shopping','2021-07-28 00:18:23.1433333',NULL UNION ALL
select 105,5,-876.0000,N'shopping','2021-07-28 00:18:23.1466667',NULL UNION ALL
select 106,4,-876.0000,N'shopping','2021-07-28 00:18:33.5133333',NULL UNION ALL
select 107,4,-876.0000,N'shopping','2021-07-28 00:18:33.5166667',NULL UNION ALL
select 108,4,-876.0000,N'shopping','2021-07-28 00:18:33.5200000',NULL UNION ALL
select 109,4,-876.0000,N'shopping','2021-07-28 00:18:33.5233333',NULL UNION ALL
select 110,4,-876.0000,N'shopping','2021-07-28 00:18:33.5266667',NULL UNION ALL
select 111,3,-876.0000,N'shopping','2021-07-28 00:18:43.8466667',NULL UNION ALL
select 112,3,-876.0000,N'shopping','2021-07-28 00:18:43.8500000',NULL UNION ALL
select 113,3,-876.0000,N'shopping','2021-07-28 00:18:43.8533333',NULL UNION ALL
select 114,3,-876.0000,N'shopping','2021-07-28 00:18:43.8566667',NULL UNION ALL
select 115,3,-876.0000,N'shopping','2021-07-28 00:18:43.8600000',NULL UNION ALL
select 116,2,-876.0000,N'shopping','2021-07-28 00:18:54.5700000',NULL UNION ALL
select 117,2,-876.0000,N'shopping','2021-07-28 00:18:54.5733333',NULL UNION ALL
select 118,2,-876.0000,N'shopping','2021-07-28 00:18:54.5966667',NULL UNION ALL
select 119,2,-876.0000,N'shopping','2021-07-28 00:18:54.6000000',NULL UNION ALL
select 120,2,-876.0000,N'shopping','2021-07-28 00:18:54.6000000',NULL UNION ALL
select 121,1,-876.0000,N'shopping','2021-07-28 00:19:09.5200000',NULL UNION ALL
select 122,1,-876.0000,N'shopping','2021-07-28 00:19:09.5233333',NULL UNION ALL
select 123,1,-876.0000,N'shopping','2021-07-28 00:19:09.5266667',NULL UNION ALL
select 124,1,-876.0000,N'shopping','2021-07-28 00:19:09.5300000',NULL UNION ALL
select 125,1,-876.0000,N'shopping','2021-07-28 00:19:09.5333333',NULL UNION ALL
select 126,24,-10.0000,N'shopping','2021-07-28 00:40:26.2200000',NULL UNION ALL
select 127,24,-10.0000,N'shopping','2021-07-28 00:40:26.2200000',NULL UNION ALL
select 128,24,-100.0000,N'shopping','2021-07-28 00:40:26.2233333',NULL UNION ALL
select 129,24,-100.0000,N'shopping','2021-07-28 00:40:26.2233333',NULL UNION ALL
select 130,24,-10.0000,N'shopping','2021-07-28 00:40:26.2266667',NULL;

set identity_insert [Expenditure] off;