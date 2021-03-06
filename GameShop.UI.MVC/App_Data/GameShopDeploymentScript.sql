IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_ProductStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_ProductStatuses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Products]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Products]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductCategories_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductCategories]'))
ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductCategories_Categories]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[ProductStatuses]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStatuses]') AND type in (N'U'))
DROP TABLE [dbo].[ProductStatuses]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type in (N'U'))
DROP TABLE [dbo].[ProductCategories]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Database [GameShop]    Script Date: 8/9/2018 2:59:03 PM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'GameShop')
DROP DATABASE [GameShop]
GO
/****** Object:  Database [GameShop]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'GameShop')
BEGIN
CREATE DATABASE [GameShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GameShop', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GameShop.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GameShop_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\GameShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [GameShop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameShop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [GameShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GameShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GameShop] SET  MULTI_USER 
GO
ALTER DATABASE [GameShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/9/2018 2:59:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/9/2018 2:59:03 PM ******/
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
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 8/9/2018 2:59:03 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 8/9/2018 2:59:03 PM ******/
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
/****** Object:  Table [dbo].[ProductStatuses]    Script Date: 8/9/2018 2:59:03 PM ******/
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
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201808090228281_InitialCreate', N'GameShop.UI.MVC.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD14CEDA6E8DC61764EDA06F0157E2AE8548942251AE8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E02042B727866381C92C3E1D0FFFEFDCFF8E747DF331E7014BB01999807A37DD3C0C40E1C972C27664217AFDE9A3FBFFBF69BF199E33F1A9F72BA2346072D493C31EF290D8F2D2BB6EFB18FE291EFDA5110070B3AB203DF424E601DEEEFFF641D1C5818204CC0328CF1C78450D7C7E9077C4E0362E39026C8BB0C1CECC5BC1C6A6629AA71857C1C87C8C613F317F839BB0FC2D1DDC5E8F2D37494B5308D13CF4520CD0C7B0BD3408404145190F5F82EC6331A0564390BA10079B74F2106BA05F262CCFB705C9277EDCEFE21EB8E5536CCA1EC24A681DF13F0E088EBC7129BAFA465B3D01F68F00C344D9F58AF532D4ECC0B07A7451F030F1420323C9E7A11239E9897058B9338BCC27494371C6590E711C0FD11445F4655C43DA373BBBDC29E0E47FBECDF9E314D3C9A447842704223E4ED1937C9DC73EDDFF0D36DF00593C9D1C17C71F4F6F51BE41CBDF9111FBDAEF614FA0A74B50228BA89821047201B5E14FD370DABDECE121B16CD2A6D32AD802DC1D4308D4BF4F8019325BD874973F8D634CEDD47ECE425DCB8EE880B33091AD12881CFABC4F3D0DCC345BDD5C893FDDFC0F5F0F59B41B85EA10777990EBDC01F264E04F3EA23F6D2DAF8DE0DB3E9551BEFCF9CEC3C0A7CF65DB7AFACF6F32C48229B7526D092DCA26889695DBAB1551A6F27936650C39B758EBAFBA6CD2495CD5B49CA3AB4CA4CC8596C7A36E4F23E2FDFCE167712863078A969318D34199C7AC31A09087B8640579AD041571322D0B5FFF38A78E623D71B6049ECC0053C92851BF9B8E8E5FB000C1091DE32DFA0388615C1F915C5F70DA2C3CF01449F613B89C0506714F9E1B373BBB90F08BE4AFC39B3FFCDF11A6C686EFF08CE914D83E88CB0566BE37D08EC2F4142CF88738A28BEA3760EC83E6F5DBF3BC020E29CD8368EE3733066EC4C0370B873C00B428F0E7BC3B1456ADB2EC9D443AEAFF64984E5F4734E5AFA256A0AC937D190A9FC9326513F044B9774133527D58B9A51B48ACAC9FA8ACAC0BA49CA29F582A604AD72665483797CE9080DEFF2A5B0BBEFF3ADB779EBD6828A1A67B042E25F30C1112C63CE0DA21447A41C812EEBC6369C8574F818D367DF9B524E9F90970CCD6AA5D9902E02C3CF861476F767432A26143FB80EF34A3A1C84726280EF44AF3E63B5CF3941B24D4F875A3737CD7C336B806EBA9CC47160BBE92C5084C07800A32E3FF870467B3423EB8D1811818E81A1BB6CCB8312E89B291AD53539C51EA6D838B1B310E114C53672643542879C1E82E53BAA42B032325217EE078927583A8E5823C40E4131CC549750795AB8C47643E4B56A4968D9710B637D2F788835A738C484316CD54417E6EA400813A0E0230C4A9B86C656C5E29A0D51E3B5EAC6BCCD852DC75D8A4F6CC4265B7C678D5D72FFED590CB359631B30CE66957411401BD4DB8681F2B34A5703100F2EBB66A0C2894963A0DCA5DA8881D635B60503ADABE4C519687644ED3AFEC27975D7CCB37E50DEFCB6DEA8AE2DD8664D1F3B669A99EF096D28B4C0916C9EA77356891FA9E2700672F2F359CC5D5DD14418F80CD37AC8A6F477957EA8D50C221A51136069682DA0FC3A50029226540FE1F2585EA374DC8BE8019BC7DD1A61F9DA2FC0566C40C6AE5E8B5608F597A7A271763A7D143D2BAC4132F24E87850A8EC220C4C5ABDEF10E4AD1C56565C574F185FB78C3958EF1C16850508BE7AA5152DE99C1B5949B66BB96540E591F976C2D2D09EE93464B796706D712B7D17625299C821E6EC15A2AAA6FE1034DB63CD251EC3645DDD8CA32A678C1D8D2A4568D2F5118BA645949B5E225C62CCBB39ABE9AF54F3EF2330CCB8E15394885B405271A446889855A600D929EBB514C4F114573C4E23C53C797C8947BAB66F9CF5956B74F7910F37D20A766BFB3169A4BFCDA7E2B3B241CE71C7AE933AF260DA52B6C40DDDC60E96FC84391227A3F0DBCC4277A274BDF3ABBC3ABB6CF4A6484B125C82F395192C62457B7AEFE4E83234F8C0107AAF063561F2C3D844EE5B9175A55BACE33D5A3E481AA2A8A2E78B5B5C1D33934BD074CF417FB8F572BC2F3CC2F9EA45205E0453D312A790E1258A5AE3B6A3D15A58A59AFE98E28E49B542185AA1E5256B34A6A42562B56C2D368544DD19D839C475245976BBB232B324AAAD08AEA15B015328B75DD511549275560457577EC3203455C48777807D39E62D6DAC2B2C3EE7A7B9806E37956C561B6C0CA9D7E15A852DC138BDFDA4B60BC7C272D4A7BE25BCBA2B238C77A16A5C1D0AF40B51BF1FA02D4788DAFC7AC5D73D716F9A66B7E3D5E3FBB7D56EB900E7D2249C1BD38FC0987BC313F70B53FB2914E60198969E46A840DFE29A6D81F3182D1ECAB37F55CCC96F39CE012117781639AA5769887FB0787C21B9DDD792F63C5B1E3290EACBA4733F531DB4096167940917D8F223967628D372525A8148EBE200E7E9C987FA6AD8ED3C806FB9516EF1917F11D71BF2650711B25D8F84BCE011D26C7BEF9C0B5A32F22BA6BF5E2F7CF59D33DE33A8219736CEC0BBA5C6584EBEF247A4993355D439A955F4FBCDC09557B92A0441526C4EA2F10E62E1DE4F5412EE5773E7AFCBEAF68CA17066B212A5E110C8537880A75AF0456C1D2BE1070E093A62F04FA7556FD626015D1B4AF055CD21F4C7C2BD07D19CA5B6E71AB519C8B36B124A57A6ECDB55E2BF172DB7B939492BDD64497D3AE7BC0AD915ABD8265BCB0ACE4C1764745D2F160D8DB34ED67CF34DE95E4E232ED63BB39C59B4C236EB822FA5F650FEF40BE9B227F67FB39C29BB6355D2C77C7132DFB6502EF98B1F1ACAEEDE7FB6EDAD87461DE1D37B65E59BD3B666BDBDA3FB76C699DB7D0ADE7E8CAE9469A3B19552CB82D07370B9CC3097F1E8011641E65F674529DF4D594B0DAC2B024D133D5679B898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96A72349B78F3F5BF9137A769E6ADC97CDC46F6B032F75095D1DDB28E352544BDA46CE15A4F5A92D3DB7CD6C60BF697941C3C88526AB3477347FC7272810751C99053A747EEAF7CDD0B7B67E52F2FC2FE1DBBCB1282FD1D4682EDDAAE59D05C9045906FDE8244398910A1B9C41439B0A59E44D45D209B42358B31A76FBFD3B81DBBE99863E7825C27344C287419FB73AF16F0624E4013FF34C1B92EF3F83A4CFF8CC9105D00315D169BBF26EF13D7730AB9CF1531210D04F32E7844978D256591DDE553817415908E405C7D8553748BFDD003B0F89ACCD0035E453630BF0F7889ECA73202A803691F88BADAC7A72E5A46C88F3946D91E3EC1861DFFF1DD7F013163F980540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'dd5db570-1904-4df7-8220-d0ef2c9476ac', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'91a22e81-5017-4aac-a05f-0030d348e447', N'dd5db570-1904-4df7-8220-d0ef2c9476ac')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'91a22e81-5017-4aac-a05f-0030d348e447', N'tyler.sandoval@outlook.com', 1, N'AFYi+IrhZe2XqNWu5bsxyh4ITdxuLdeL/Bud+TbesOoQJ6donZoaiLTphro+1wfZxA==', N'86813f89-ff29-4d51-8dfa-fd91d36d85fc', NULL, 0, 0, NULL, 1, 0, N'tyler.sandoval@outlook.com')
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/9/2018 2:59:03 PM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
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
ALTER DATABASE [GameShop] SET  READ_WRITE 
GO
