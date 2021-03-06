USE [PS13657_TruongHoangHuy_AssigmentJava5]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 6/16/2021 12:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](50) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
	[email] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[img] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/16/2021 12:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/16/2021 12:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/16/2021 12:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[createdate] [date] NULL,
	[username] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/16/2021 12:51:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[img] [varchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[categoryid] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'bdbao', 1, 0, N'bao@gmail.com', N'Bùi Duy Bảo', N'123', NULL)
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'hnphuc', 1, 0, N'phuc@gmai.com', N'Nguyễn Phúc', N'123', N'phuc.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'huyth', 1, 1, N'thhuy01@gmail.com', N'Trương Hoàng Huy', N'123', N'huy.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'huyth123', 1, 0, N'truong23032001@gmail.com', N'Truong Hoang Huy', N'123', NULL)
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'thhuy', 1, 0, N'truong23032001@gmail.com', N'T Hoàng Huy', N'123', NULL)
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [img]) VALUES (N'tmduyen', 0, 0, N'duyentm@gmail.com', N'Mỹ Duyên', N'123', N'duyen.jpg')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Saga')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'10', N'Đồng hồ thạch anh')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Casio')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Seiko')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Đồng hồ thông minh')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Đồng hồ quân đội')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'6', N'Đồng hồ điện tử')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'7', N'Fossil')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'8', N'Đồng hồ kim cương')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'9', N'Đồng hồ trẻ em')
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 125400, 3, 1, 4)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (2, 1055420, 1, 1, 2)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (4, 124500, 5, 3, 10)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (5, 588810, 1, 6, 15)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (6, 2477700, 2, 4, 20)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (7, 1644000, 3, 5, 22)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (1, N'Phước Long', CAST(N'2010-03-23' AS Date), N'thhuy')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (3, N'Bạc Liêu', CAST(N'2011-12-03' AS Date), N'thhuy')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (4, N'Vĩnh Hậu', CAST(N'2010-05-13' AS Date), N'bdbao')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (5, N'TP HCM', CAST(N'2011-06-01' AS Date), N'hnphuc')
INSERT [dbo].[orders] ([id], [address], [createdate], [username]) VALUES (6, N'Thủ đức', CAST(N'2011-02-12' AS Date), N'hnphuc')
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (1, 1, CAST(N'2010-12-02' AS Date), N'sg01.jpg', N'SAGA 53442 SVMBSV-2A', 5240, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (2, 1, CAST(N'2010-03-15' AS Date), N'sk01.jpg', N'SEIKO SNE529P1', 5260, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (3, 1, CAST(N'2010-03-15' AS Date), N'cs01.jpg', N'CASIO EQS-910L-1AVUDF', 6046, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (4, 1, CAST(N'2010-03-12' AS Date), N'qd01.jpg', N'CITIZEN AU1080-38E', 5600, N'5')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (5, 1, CAST(N'2010-05-15' AS Date), N'dt01.jpg', N'G-SHOCK – QUARTZ (PIN)', 3726, N'6')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (6, 1, CAST(N'2010-01-01' AS Date), N'tm01.jpg', N'APPLE WATCH SERIES 5 - NAM', 18200, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (7, 1, CAST(N'2010-02-22' AS Date), N'kc01.jpg', N'OGIVAL 829-65AGSK-T', 27950, N'8')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (8, 1, CAST(N'2010-06-12' AS Date), N'dx01.jpg', N'DOXA D154SWH', 78380, N'10')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (9, 1, CAST(N'2010-06-14' AS Date), N'dx02.jpg', N'DOXA D203BGY', 15830, N'10')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (10, 1, CAST(N'2010-06-14' AS Date), N'te01.jpg', N'CASIO LRW-200H-2BVDF', 815, N'9')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (11, 1, CAST(N'2010-05-12' AS Date), N'fs01.jpg', N'FOSSIL FS5404', 4250, N'7')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (12, 1, CAST(N'2010-05-01' AS Date), N'fs02.jpg', N'FOSSIL ES4322', 3750, N'7')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (13, 1, CAST(N'2010-05-01' AS Date), N'dt02.jpg', N'G-SHOCK GA-2000S-1ADR', 4072, N'6')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (14, 1, CAST(N'2010-04-06' AS Date), N'kc02.jpg', N'OGIVAL 3356-61JAMS-T', 1800, N'8')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (15, 1, CAST(N'2010-04-04' AS Date), N'kc03.jpg', N'CITIZEN EM0796-08Y', 12100, N'8')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (16, 1, CAST(N'2010-04-04' AS Date), N'sg02.jpg', N'SAGA 53766 GPMWGP-2', 7524, N'1')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (17, 1, CAST(N'2010-04-04' AS Date), N'sk01.jpg', N'SEIKO SRPE65K1', 6820, N'3')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (18, 1, CAST(N'2010-04-05' AS Date), N'cs02.jpg', N'CASIO AE-1200WHB-3BVDF', 1160, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (19, 1, CAST(N'2010-04-02' AS Date), N'tm02.jpg', N'APPLE WATCH SERIES 3', 8300, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (20, 1, CAST(N'2010-04-02' AS Date), N'tm03.jpg', N'APPLE WATCH SERIES 3 – VIỀN NHÔM BẠC', 8300, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (21, 1, CAST(N'2010-05-01' AS Date), N'tm04.jpg', N'APPLE WATCH SERIES 5 - DÂY KIM LOẠI', 1950, N'4')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (22, 1, CAST(N'2010-05-01' AS Date), N'qd02.jpg', N'SEIKO SRPC67K1 – AUTOMATIC (TỰ ĐỘNG)', 7040, N'5')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (23, 1, CAST(N'2010-05-12' AS Date), N'fs03.jpg', N'FOSSIL ES4841', 3750, N'7')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (24, 1, CAST(N'2010-05-22' AS Date), N'te02.jpg', N'CASIO', 864, N'9')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (25, 1, CAST(N'2010-05-14' AS Date), N'dt03.jpg', N'CASIO AE-1200WH-1BVDF', 1086, N'6')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (26, 1, CAST(N'2010-03-12' AS Date), N'fs04.jpg', N'FOSSIL ME3099', 4560, N'7')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (27, 1, CAST(N'2011-01-01' AS Date), N'qd03.jpg', N'CITIZEN BM8475-00F', 5990, N'5')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (28, 1, CAST(N'2011-01-01' AS Date), N'dx03.jpg', N'DOXA D159TWH', 36380, N'10')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (29, 1, CAST(N'2011-01-02' AS Date), N'cs03.jpg', N'CASIO MTP-V006GL-7BUDF', 888, N'2')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (30, 1, CAST(N'2011-01-12' AS Date), N'kc04.jpg', N'OGIVAL 358-66AGR-GL-T', 23800, N'8')
INSERT [dbo].[products] ([id], [available], [createdate], [img], [name], [price], [categoryid]) VALUES (31, 1, CAST(N'2011-01-12' AS Date), N'sg03.jpg', N'SAGA 53229 SVMWSV-6', 6384, N'1')
SET IDENTITY_INSERT [dbo].[products] OFF
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD  CONSTRAINT [FK__orderdeta__order__534D60F1] FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderdetails] CHECK CONSTRAINT [FK__orderdeta__order__534D60F1]
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__username__5070F446] FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__username__5070F446]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
