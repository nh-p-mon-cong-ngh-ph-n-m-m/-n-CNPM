CREATE DATABASE [data]
GO
USE [data]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/17/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Category] [varchar](20) NOT NULL,
	[Name_Category] [varchar](50) NULL,
	[Parent_Category] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_Category] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IP', N'IPhone', N'null')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IP5', N'IPhone 5', N'IP')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IP6', N'IPhone 6', N'IP')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IP7', N'IPhone 7', N'IP')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IP8', N'IPhone 8', N'IP')
INSERT [dbo].[Category] ([ID_Category], [Name_Category], [Parent_Category]) VALUES (N'IPX', N'IPhone X', N'IP')
/****** Object:  Table [dbo].[Account]    Script Date: 10/17/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[ID_Account] [varchar](20) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Full_Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[SDT] [varchar](50) NULL,
	[Access] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email],[Full_Name],[Address],[SDT], [Access], [Status]) VALUES (N'PH04388', N'admin', N'123', N'admin@gmail.com',N'Do Trung Hieu',N'Hai Phong',N'01213321897', 1, 1)
INSERT [dbo].[Account] ([ID_Account], [Username], [Password], [Email],[Full_Name],[Address],[SDT], [Access], [Status]) VALUES (N'KH00001', N'user', N'123', N'hieuboyfc@gmail.com',N'Hieu Boy',N'Hai Phong',N'01213321897', 2, 1)
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/17/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID_Invoice] [varchar](20) NOT NULL,
	[ID_Account] [varchar](20) NULL,
	[Shipping_Address] [varchar](50) NULL,
	[Payment_Methods] [varchar](50) NULL,
	[Purchase_Date] [datetime] NULL,
	[Status_Order] [int] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID_Invoice] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/17/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [varchar](20) NOT NULL,
	[ID_Category] [varchar](20) NULL,
	[Name_Product] [varchar](50) NULL,
	[Image] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[Describe] [varchar](50) NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'5001', N'IP5', N'IPhone 5', N'images/sanpham/ip_se_1.jpg', 20, NULL, 2990000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'5002', N'IP5', N'IPhone 5 Lock', N'images/sanpham/ip_se_2.jpg', 14, NULL, 2500000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'5003', N'IP5', N'IPhone 5C', N'images/sanpham/ip_se_3.jpg', 33, NULL, 1500000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'6001', N'IP6', N'IPhone 6', N'images/sanpham/ip_6_1.jpg', 12, NULL, 4900000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'6002', N'IP6', N'IPhone 6S', N'images/sanpham/ip_6_2.jpg', 11, NULL, 5900000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'6003', N'IP6', N'IPhone 6 Plus', N'images/sanpham/ip_6_3.jpg', 63, NULL, 6500000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'7001', N'IP7', N'IPhone 7', N'images/sanpham/ip_7_1.jpg', 15, NULL, 10990000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'7002', N'IP7', N'IPhone 7 Plus', N'images/sanpham/ip_7_2.jpg', 25, NULL, 12000000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'7003', N'IP7', N'IPhone 7 Lock', N'images/sanpham/ip_7_1.jpg', NULL, NULL, 8990000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'8001', N'IP8', N'IPhone 8', N'images/sanpham/ip_8_1.jpg', 50, NULL, 18990000, 0)
INSERT [dbo].[Product] ([ID_Product], [ID_Category], [Name_Product], [Image], [Quantity], [Describe], [Price], [Sale]) VALUES (N'8002', N'IP8', N'IPhone 8 Plus', N'images/sanpham/ip_8_2.jpg', 100, NULL, 20000000, 0)
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 10/17/2017 14:40:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[ID_InvoiceDetail] [int] NOT NULL,
	[ID_Invoice] [varchar](20) NULL,
	[ID_Product] [varchar](20) NULL,
	[Quantity] [int] NULL,
	[Price] [int] NULL,
	[Sale] [int] NULL,
 CONSTRAINT [PK_InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[ID_InvoiceDetail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Invoice_Account]    Script Date: 10/17/2017 14:40:57 ******/
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
/****** Object:  ForeignKey [FK_InvoiceDetail_Invoice]    Script Date: 10/17/2017 14:40:57 ******/
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Invoice] FOREIGN KEY([ID_Invoice])
REFERENCES [dbo].[Invoice] ([ID_Invoice])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Invoice]
GO
/****** Object:  ForeignKey [FK_InvoiceDetail_Product]    Script Date: 10/17/2017 14:40:57 ******/
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetail_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_InvoiceDetail_Product]
GO
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 10/17/2017 14:40:57 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID_Category])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
