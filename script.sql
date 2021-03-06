USE [master]
GO
/****** Object:  Database [bibliotheque]    Script Date: 13/05/2020 17:42:27 ******/
CREATE DATABASE [bibliotheque]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bibliotheque', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bibliotheque.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bibliotheque_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bibliotheque_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bibliotheque] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bibliotheque].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bibliotheque] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bibliotheque] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bibliotheque] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bibliotheque] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bibliotheque] SET ARITHABORT OFF 
GO
ALTER DATABASE [bibliotheque] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bibliotheque] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bibliotheque] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bibliotheque] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bibliotheque] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bibliotheque] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bibliotheque] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bibliotheque] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bibliotheque] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bibliotheque] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bibliotheque] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bibliotheque] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bibliotheque] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bibliotheque] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bibliotheque] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bibliotheque] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bibliotheque] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bibliotheque] SET RECOVERY FULL 
GO
ALTER DATABASE [bibliotheque] SET  MULTI_USER 
GO
ALTER DATABASE [bibliotheque] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bibliotheque] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bibliotheque] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bibliotheque] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bibliotheque] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bibliotheque', N'ON'
GO
ALTER DATABASE [bibliotheque] SET QUERY_STORE = OFF
GO
USE [bibliotheque]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 13/05/2020 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prenom_admin] [varchar](50) NULL,
	[nom_admin] [varchar](50) NULL,
	[adresse_admin] [varchar](255) NULL,
	[tel_admin] [varchar](50) NULL,
	[email_admin] [varchar](255) NULL,
	[statut] [int] NULL,
	[login] [varchar](255) NULL,
	[password] [varchar](50) NULL,
	[delete] [int] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auteur]    Script Date: 13/05/2020 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auteur](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prenom_auteur] [varchar](50) NULL,
	[nom_auteur] [varchar](50) NULL,
	[nationalite_auteur] [varchar](50) NULL,
 CONSTRAINT [PK_auteur] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie]    Script Date: 13/05/2020 17:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[libelle_categorie] [varchar](255) NULL,
 CONSTRAINT [PK_categorie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[prenom_client] [varchar](255) NULL,
	[nom_client] [varchar](255) NULL,
	[adresse_client] [varchar](255) NULL,
	[tel_client] [varchar](50) NULL,
	[email_client] [varchar](255) NULL,
	[date_naissance] [datetime] NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historique]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historique](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_debut_cnx] [datetime] NULL,
	[date_fin_cnx] [datetime] NULL,
	[admin_id] [int] NULL,
 CONSTRAINT [PK_historique] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inscription]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inscription](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [varchar](255) NULL,
	[date_inscription] [datetime] NULL,
	[date_echeance] [datetime] NULL,
	[montant_ins] [int] NULL,
	[statut] [int] NULL,
	[client_id] [int] NULL,
	[admin_id] [int] NULL,
	[delet] [int] NULL,
 CONSTRAINT [PK_inscription] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[livre]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[livre](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[libelle_livre] [varchar](255) NULL,
	[maison_edition] [varchar](255) NULL,
	[qte_stock] [int] NULL,
	[auteur_id] [int] NULL,
	[categorie_id] [int] NULL,
	[niveau_etude_id] [int] NULL,
	[deletee] [int] NULL,
	[qte_pret] [int] NULL,
 CONSTRAINT [PK_livre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[niveau_etude]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[niveau_etude](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[libelle_niveau_etude] [varchar](255) NULL,
 CONSTRAINT [PK_niveau_etude] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pret]    Script Date: 13/05/2020 17:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pret](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_debut] [datetime] NULL,
	[date_fin] [datetime] NULL,
	[nbre_liv_emprunte] [int] NULL,
	[statut_pret] [int] NULL,
	[inscription_id] [int] NULL,
	[livre_id] [int] NULL,
	[date_rendu] [datetime] NULL,
 CONSTRAINT [PK_pret] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[historique]  WITH CHECK ADD  CONSTRAINT [FK_historique_admins] FOREIGN KEY([admin_id])
REFERENCES [dbo].[admins] ([id])
GO
ALTER TABLE [dbo].[historique] CHECK CONSTRAINT [FK_historique_admins]
GO
ALTER TABLE [dbo].[inscription]  WITH CHECK ADD  CONSTRAINT [FK_inscription_admins] FOREIGN KEY([admin_id])
REFERENCES [dbo].[admins] ([id])
GO
ALTER TABLE [dbo].[inscription] CHECK CONSTRAINT [FK_inscription_admins]
GO
ALTER TABLE [dbo].[inscription]  WITH CHECK ADD  CONSTRAINT [FK_inscription_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[inscription] CHECK CONSTRAINT [FK_inscription_client]
GO
ALTER TABLE [dbo].[livre]  WITH CHECK ADD  CONSTRAINT [FK_livre_auteur] FOREIGN KEY([auteur_id])
REFERENCES [dbo].[auteur] ([id])
GO
ALTER TABLE [dbo].[livre] CHECK CONSTRAINT [FK_livre_auteur]
GO
ALTER TABLE [dbo].[livre]  WITH CHECK ADD  CONSTRAINT [FK_livre_categorie] FOREIGN KEY([categorie_id])
REFERENCES [dbo].[categorie] ([id])
GO
ALTER TABLE [dbo].[livre] CHECK CONSTRAINT [FK_livre_categorie]
GO
ALTER TABLE [dbo].[livre]  WITH CHECK ADD  CONSTRAINT [FK_livre_niveau_etude] FOREIGN KEY([niveau_etude_id])
REFERENCES [dbo].[niveau_etude] ([id])
GO
ALTER TABLE [dbo].[livre] CHECK CONSTRAINT [FK_livre_niveau_etude]
GO
ALTER TABLE [dbo].[pret]  WITH CHECK ADD  CONSTRAINT [FK_pret_inscription] FOREIGN KEY([inscription_id])
REFERENCES [dbo].[inscription] ([id])
GO
ALTER TABLE [dbo].[pret] CHECK CONSTRAINT [FK_pret_inscription]
GO
ALTER TABLE [dbo].[pret]  WITH CHECK ADD  CONSTRAINT [FK_pret_livre] FOREIGN KEY([livre_id])
REFERENCES [dbo].[livre] ([id])
GO
ALTER TABLE [dbo].[pret] CHECK CONSTRAINT [FK_pret_livre]
GO
USE [master]
GO
ALTER DATABASE [bibliotheque] SET  READ_WRITE 
GO
