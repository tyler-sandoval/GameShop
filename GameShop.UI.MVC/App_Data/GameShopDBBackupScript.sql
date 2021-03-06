IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_ProductStatuses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Products]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Categories]
GO
/****** Object:  Table [dbo].[ProductStatuses]    Script Date: 8/8/2018 9:21:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStatuses]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStatuses]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/8/2018 9:21:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 8/8/2018 9:21:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategories]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/8/2018 9:21:14 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/8/2018 9:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[CategoryDescription] [varchar](200) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 8/8/2018 9:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductCategories](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/8/2018 9:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](150) NOT NULL,
	[ProductDescription] [varchar](max) NULL,
	[Price] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[ProductImage] [varchar](75) NULL,
	[ProductStatusID] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductStatuses]    Script Date: 8/8/2018 9:21:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductStatuses](
	[ProductStatusID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](20) NOT NULL,
	[StatusDescription] [varchar](200) NULL,
 CONSTRAINT [PK_ProductStatuses] PRIMARY KEY CLUSTERED 
(
	[ProductStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (1, N'RPGs', N'Role-Playing game that is typically set in a fantasy world where the user plays as a character through a central story line or world.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (2, N'Fighters', N'Combat game featuring player vs player or the computer.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (3, N'Shooters', N'Either 1st or 3rd person point of view that focuses around firearms. ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryDescription]) VALUES (4, N'Sports', N'Simulation based on actual sports.')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (1, 3, 1)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (2, 3, 2)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (3, 3, 3)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (4, 3, 4)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (5, 3, 5)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (6, 4, 6)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (7, 4, 7)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (8, 3, 8)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (9, 1, 9)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (10, 2, 10)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (11, 1, 11)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (12, 1, 12)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (13, 4, 13)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (14, 4, 14)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (15, 1, 15)
INSERT [dbo].[ProductCategories] ([ProductCategoryID], [CategoryID], [ProductID]) VALUES (16, 2, 16)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (1, N'Anthem', N'Coming Soon 2019!', 59.9900, 0, N'anthem.jpg', 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (2, N'Call of Duty: Black Ops 4', N'Coming Soon 2018!', 59.9900, 0, N'cod_bo4.jpg', 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (3, N'Destiny 2', N'The sequel to Bungie''s Destiny', 24.9900, 4, N'noimage.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (4, N'Destiny 2: Forsaken', N'September Release 2018!', 59.9900, 0, N'destiny2F.png', 3, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (5, N'Doom', N'Based on the smash hit computer game', 12.9900, 7, N'doom.jpg', 4, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (6, N'FIFA 18', N'Yay Soccer!', 15.9900, 6, N'noimage.jpg', 4, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (7, N'FIFA 19', N'Yay a newer Soccer!', 59.9900, 0, N'fifa.jpg', 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (8, N'Fortnite', N'Hit new Indie game of 2017/2018', 34.9900, 15, N'fortnite.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (9, N'God of War', N'Kratos is ditching the Greek Mythology for some Norse gods!', 49.9900, 5, N'gow.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (10, N'Injustice 2: Legendary Edition', N'The seqeul to DC''s fighter featuring the largest and most diverse roster.', 34.9900, 2, N'inj2.png', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (11, N'Kingdom Hearts 2.5', N'The lead up game to KH3 expected in 2019.', 34.9900, 3, N'noimage.jpg', 1, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (12, N'Kingdom Hearts 3', N'Coming Soon 2019!', 59.9900, 0, N'kingdom_hearts_2.jpg', 3, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (13, N'Madden 18', N'Yay Football!', 24.9900, 1, N'noimage.jpg', 4, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (14, N'Madden 19', N'Yay more Football!', 59.9900, 2, N'madden.jpg', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (15, N'Monster Hunter: World', N'Monster Hunter finally comes to the console!', 49.9900, 5, N'mhw.png', 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [ProductDescription], [Price], [UnitsInStock], [ProductImage], [ProductStatusID], [IsActive]) VALUES (16, N'Mortal Kombat X', N'The latest MK generation featuring its largest roster and unqiue DLC characters', 24.9900, 2, N'mkx.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ProductStatuses] ON 

INSERT [dbo].[ProductStatuses] ([ProductStatusID], [StatusName], [StatusDescription]) VALUES (1, N'In Stock', N'Item is available for purchase')
INSERT [dbo].[ProductStatuses] ([ProductStatusID], [StatusName], [StatusDescription]) VALUES (2, N'Out of Stock', N'No quantity of item available for purchase')
INSERT [dbo].[ProductStatuses] ([ProductStatusID], [StatusName], [StatusDescription]) VALUES (3, N'Backordered', N'Awaiting orders to be fulfilled and shipment to arrive')
INSERT [dbo].[ProductStatuses] ([ProductStatusID], [StatusName], [StatusDescription]) VALUES (4, N'Discontinued', N'Item not available for future orders or purchases')
SET IDENTITY_INSERT [dbo].[ProductStatuses] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategories_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] CHECK CONSTRAINT [FK_ProductCategories_Products]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductStatuses] FOREIGN KEY([ProductStatusID])
REFERENCES [dbo].[ProductStatuses] ([ProductStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductStatuses]
GO
