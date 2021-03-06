USE [master]
GO
/****** Object:  Database [empi_v3.0]    Script Date: 2017/3/6 16:45:11 ******/
CREATE DATABASE [empi_V3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'empi_V3', FILENAME = N'D:\develop\Microsoft SQL Server\empi_V3.mdf' , SIZE = 1810432KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'empi_V3_log', FILENAME = N'D:\develop\Microsoft SQL Server\empi_V3_log.ldf' , SIZE = 3480448KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [empi_V3] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [empi_V3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [empi_V3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [empi_V3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [empi_V3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [empi_V3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [empi_V3] SET ARITHABORT OFF 
GO
ALTER DATABASE [empi_V3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [empi_V3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [empi_V3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [empi_V3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [empi_V3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [empi_V3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [empi_V3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [empi_V3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [empi_V3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [empi_V3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [empi_V3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [empi_V3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [empi_V3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [empi_V3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [empi_V3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [empi_V3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [empi_V3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [empi_V3] SET RECOVERY FULL 
GO
ALTER DATABASE [empi_V3] SET  MULTI_USER 
GO
ALTER DATABASE [empi_V3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [empi_V3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [empi_V3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [empi_V3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [empi_V3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'empi_V3', N'ON'
GO
USE [empi_V3]
GO
/****** Object:  Table [dbo].[base_dt]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[base_dt](
	[pk_basedt] [int] IDENTITY(1,1) NOT NULL,
	[type_code] [varchar](30) NULL,
	[type_name] [varchar](100) NULL,
	[code] [varchar](100) NULL,
	[name] [varchar](50) NULL,
	[remark] [varchar](200) NULL,
	[update_name] [varchar](100) NULL,
	[update_time] [datetime] NULL DEFAULT (getdate()),
 CONSTRAINT [PK_BASE_DT] PRIMARY KEY CLUSTERED 
(
	[pk_basedt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[best_record]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[best_record](
	[pk_empi] [varchar](100) NOT NULL,
	[person_name] [varchar](100) NULL,
	[cpy] [varchar](300) NULL,
	[py_code] [varchar](30) NULL,
	[social_no] [varchar](32) NULL,
	[other_card_type] [varchar](32) NULL,
	[other_card_no] [varchar](32) NULL,
	[birth_date] [char](19) NULL,
	[gender] [varchar](30) NULL,
	[ABO_code] [varchar](30) NULL,
	[RH_code] [varchar](30) NULL,
	[mari_code] [varchar](30) NULL,
	[county_code] [varchar](100) NULL,
	[nation_code] [varchar](30) NULL,
	[birth_place] [varchar](500) NULL,
	[native_place] [varchar](500) NULL,
	[occu_code] [varchar](30) NULL,
	[home_tel] [varchar](20) NULL,
	[home_addr] [varchar](500) NULL,
	[home_prov] [varchar](32) NULL,
	[home_city] [varchar](32) NULL,
	[home_county] [varchar](32) NULL,
	[home_country] [varchar](32) NULL,
	[home_street] [varchar](200) NULL,
	[home_zipcode] [varchar](32) NULL,
	[temp_tel] [varchar](20) NULL,
	[temp_addr] [varchar](500) NULL,
	[temp_prov] [varchar](32) NULL,
	[temp_city] [varchar](32) NULL,
	[temp_county] [varchar](32) NULL,
	[temp_country] [varchar](32) NULL,
	[temp_street] [varchar](200) NULL,
	[temp_zipcode] [varchar](32) NULL,
	[empl_tel] [varchar](20) NULL,
	[empl_name] [varchar](32) NULL,
	[empl_addr] [varchar](500) NULL,
	[empl_prov] [varchar](32) NULL,
	[empl_city] [varchar](32) NULL,
	[empl_county] [varchar](32) NULL,
	[empl_country] [varchar](32) NULL,
	[empl_street] [varchar](200) NULL,
	[empl_zipcode] [varchar](32) NULL,
	[rela_name] [varchar](32) NULL,
	[rela_type_code] [varchar](2) NULL,
	[rela_type_name] [varchar](32) NULL,
	[rela_addr] [varchar](500) NULL,
	[rela_prov] [varchar](32) NULL,
	[rela_city] [varchar](32) NULL,
	[rela_county] [varchar](32) NULL,
	[rela_country] [varchar](32) NULL,
	[rela_street] [varchar](200) NULL,
	[rela_tel] [varchar](32) NULL,
	[hp_code] [varchar](32) NULL,
	[hp_name] [varchar](32) NULL,
	[medical_name] [varchar](32) NULL,
	[medical_code] [varchar](32) NULL,
	[patient_card_no] [varchar](32) NULL,
	[health_card_no] [varchar](32) NULL,
	[health_card_orgcode] [varchar](32) NULL,
	[phealth_recd_no] [varchar](32) NULL,
	[record_org_code] [varchar](32) NULL,
	[charge_type] [varchar](2) NULL,
	[domain_id] [varchar](10) NULL,
	[local_id] [varchar](100) NULL,
	[data_flag] [numeric](1, 0) NULL,
	[update_flag] [varchar](2) NULL,
	[status] [numeric](1, 0) NULL,
	[create_time] [datetime] NULL,
	[edit_time] [datetime] NULL,
	[mobile_phone] [varchar](20) NULL,
 CONSTRAINT [PK_BEST_RECORD] PRIMARY KEY CLUSTERED 
(
	[pk_empi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[link]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[link](
	[pk_link] [int] IDENTITY(1,1) NOT NULL,
	[pk_empi] [varchar](100) NULL,
	[pk_person] [varchar](50) NULL,
	[local_id_type] [varchar](10) NULL,
	[local_id] [varchar](100) NULL,
	[operator] [varchar](100) NULL,
	[operator_type] [varchar](1) NULL,
	[operator_time] [datetime] NULL,
	[edit_time] [datetime] NULL,
	[operator_name] [varchar](100) NULL,
 CONSTRAINT [PK_LINK] PRIMARY KEY CLUSTERED 
(
	[pk_link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[match_rule]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[match_rule](
	[match] [varchar](100) NULL,
	[match_name] [varchar](100) NULL,
	[used] [int] NULL,
	[threshold] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[patient]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient](
	[pk_msgpati] [varchar](50) NOT NULL,
	[outpatient_no] [varchar](50) NULL,
	[inpatient_no] [varchar](50) NULL,
	[phealth_no] [varchar](32) NULL,
	[person_name] [varchar](100) NULL,
	[cpy] [varchar](300) NULL,
	[py_code] [varchar](30) NULL,
	[social_no] [varchar](32) NULL,
	[other_card_type] [varchar](32) NULL,
	[other_card_no] [varchar](32) NULL,
	[patient_card_code] [varchar](50) NULL,
	[birth_date] [char](19) NULL,
	[gender] [varchar](30) NULL,
	[ABO_code] [varchar](30) NULL,
	[RH_code] [varchar](30) NULL,
	[mari_code] [varchar](30) NULL,
	[county_code] [varchar](100) NULL,
	[nation_code] [varchar](30) NULL,
	[birth_place] [varchar](500) NULL,
	[native_place] [varchar](500) NULL,
	[occu_code] [varchar](30) NULL,
	[home_tel] [varchar](20) NULL,
	[home_addr] [varchar](500) NULL,
	[home_prov] [varchar](32) NULL,
	[home_city] [varchar](32) NULL,
	[home_county] [varchar](32) NULL,
	[home_country] [varchar](32) NULL,
	[home_street] [varchar](200) NULL,
	[home_zipcode] [varchar](32) NULL,
	[temp_tel] [varchar](20) NULL,
	[temp_addr] [varchar](500) NULL,
	[temp_prov] [varchar](32) NULL,
	[temp_city] [varchar](32) NULL,
	[temp_county] [varchar](32) NULL,
	[temp_country] [varchar](32) NULL,
	[temp_street] [varchar](200) NULL,
	[temp_zipcode] [varchar](32) NULL,
	[empl_tel] [varchar](20) NULL,
	[empl_name] [varchar](32) NULL,
	[empl_addr] [varchar](500) NULL,
	[empl_prov] [varchar](32) NULL,
	[empl_city] [varchar](32) NULL,
	[empl_county] [varchar](32) NULL,
	[empl_country] [varchar](32) NULL,
	[empl_street] [varchar](200) NULL,
	[empl_zipcode] [varchar](32) NULL,
	[rela_name] [varchar](32) NULL,
	[rela_type_code] [varchar](2) NULL,
	[rela_type_name] [varchar](32) NULL,
	[rela_addr] [varchar](500) NULL,
	[rela_prov] [varchar](32) NULL,
	[rela_city] [varchar](32) NULL,
	[rela_county] [varchar](32) NULL,
	[rela_country] [varchar](32) NULL,
	[rela_street] [varchar](200) NULL,
	[rela_tel] [varchar](32) NULL,
	[hp_code] [varchar](32) NULL,
	[hp_name] [varchar](32) NULL,
	[medical_name] [varchar](32) NULL,
	[medical_code] [varchar](32) NULL,
	[patient_card_no] [varchar](32) NULL,
	[health_card_no] [varchar](32) NULL,
	[health_card_orgcode] [varchar](32) NULL,
	[phealth_recd_no] [varchar](32) NULL,
	[record_org_code] [varchar](32) NULL,
	[charge_type] [varchar](2) NULL,
	[domain_id] [varchar](10) NULL,
	[localId_type] [varchar](10) NULL,
	[local_id] [varchar](100) NULL,
	[data_flag] [numeric](1, 0) NULL,
	[update_flag] [numeric](1, 0) NULL,
	[status] [numeric](1, 0) NULL,
	[create_time] [datetime] NULL,
	[edit_time] [datetime] NULL,
 CONSTRAINT [PK_PATIENT_FROM_MSG] PRIMARY KEY CLUSTERED 
(
	[pk_msgpati] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_resource]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_resource](
	[resource_name] [varchar](100) NULL,
	[resource_path] [varchar](200) NULL,
	[parentId] [int] NULL,
	[resource_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_role]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_role](
	[role_name] [varchar](50) NULL,
	[description] [varchar](300) NULL,
	[status] [varchar](10) NULL,
	[creator] [varchar](100) NULL,
	[updater] [varchar](100) NULL,
	[create_time] [datetime] NULL DEFAULT (getdate()),
	[update_time] [datetime] NULL DEFAULT (getdate()),
	[role_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_role_resource]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_role_resource](
	[role_id] [int] NULL,
	[resource_id] [int] NULL,
	[org_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_user](
	[user_id] [varchar](50) NOT NULL,
	[password] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[sex] [varchar](30) NULL,
	[birth_date] [char](19) NULL,
	[identity_card] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[telephone] [varchar](30) NULL,
	[mobile] [varchar](30) NULL,
	[home_address] [varchar](300) NULL,
	[description] [varchar](300) NULL,
	[status] [char](1) NULL,
	[user_role] [varchar](50) NULL,
	[creator] [varchar](100) NULL,
	[create_time] [datetime] NULL DEFAULT (getdate()),
	[updater] [varchar](200) NULL,
	[update_time] [datetime] NULL DEFAULT (getdate()),
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_user_role]    Script Date: 2017/3/6 16:45:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_user_role](
	[user_id] [varchar](50) NULL,
	[role_id] [int] NULL,
	[org_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [Index_base_dt_pk_basedt]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_base_dt_pk_basedt] ON [dbo].[base_dt]
(
	[pk_basedt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_best_record_birth_date]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_best_record_birth_date] ON [dbo].[best_record]
(
	[birth_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_best_record_person_name]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_best_record_person_name] ON [dbo].[best_record]
(
	[person_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_best_record_pk_empi]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_best_record_pk_empi] ON [dbo].[best_record]
(
	[pk_empi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_best_record_social_no]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_best_record_social_no] ON [dbo].[best_record]
(
	[social_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_link_pk_empi]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_link_pk_empi] ON [dbo].[link]
(
	[pk_empi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Index_link_pk_link]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_link_pk_link] ON [dbo].[link]
(
	[pk_link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_link_pk_person]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_link_pk_person] ON [dbo].[link]
(
	[pk_person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_patient_from_msg_patient_id]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_patient_from_msg_patient_id] ON [dbo].[patient]
(
	[pk_msgpati] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_patient_from_msg_social_no]    Script Date: 2017/3/6 16:45:11 ******/
CREATE NONCLUSTERED INDEX [Index_patient_from_msg_social_no] ON [dbo].[patient]
(
	[social_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[best_record] ADD  CONSTRAINT [DF__best_reco__creat__656C112C]  DEFAULT (getdate()) FOR [create_time]
GO
ALTER TABLE [dbo].[best_record] ADD  CONSTRAINT [DF__best_reco__edit___66603565]  DEFAULT (getdate()) FOR [edit_time]
GO
ALTER TABLE [dbo].[link] ADD  CONSTRAINT [DF__link__operator_t__06CD04F7]  DEFAULT (getdate()) FOR [operator_time]
GO
ALTER TABLE [dbo].[link] ADD  CONSTRAINT [DF__link__edit_time__07C12930]  DEFAULT (getdate()) FOR [edit_time]
GO
ALTER TABLE [dbo].[patient] ADD  CONSTRAINT [DF__patient_f__data___6FE99F9F]  DEFAULT ((0)) FOR [data_flag]
GO
ALTER TABLE [dbo].[patient] ADD  CONSTRAINT [DF__patient_f__updat__70DDC3D8]  DEFAULT ((0)) FOR [update_flag]
GO
ALTER TABLE [dbo].[patient] ADD  CONSTRAINT [DF__patient_f__statu__71D1E811]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[patient] ADD  CONSTRAINT [DF__patient_f__creat__72C60C4A]  DEFAULT (getdate()) FOR [create_time]
GO
ALTER TABLE [dbo].[patient] ADD  CONSTRAINT [DF__patient_f__edit___73BA3083]  DEFAULT (getdate()) FOR [edit_time]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储所有的字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键UUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'pk_empi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完整地址描述（非结构化）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-省（自治区、直辖市）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-市（地区）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-县（区） ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_county'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-乡（镇、街道办事处）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道及门牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'home_street'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'empl_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司为员工发放的体检卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'health_card_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据标志(0:没有处理，无EID；1: 自己；2：连接；3：疑似；4： 已经确定过；-1：已经删除；)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'data_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（ SBR状态标识 0:生成EID、生成标识项SBR；1：生成非标识项SBR 2：发出更新通知 ;）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'best_record', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'pk_link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键UUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'pk_empi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要存储：门诊号、住院号和影像号等
   
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'local_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:新增 2:删除 3:更新
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'operator_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认值时间戳
   
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'operator_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员姓名
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'link', @level2type=N'COLUMN',@level2name=N'operator_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存储算法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'match_rule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'就诊流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'pk_msgpati'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完整地址描述（非结构化）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-省（自治区、直辖市）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-市（地区）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-县（区） ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_county'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址-乡（镇、街道办事处）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'街道及门牌号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'home_street'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'empl_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司为员工发放的体检卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'health_card_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'I：住院 O：门诊 E：急诊 P ：体检' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'localId_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据处理标识：0 .未处理 1.已拆分 2.数据更新未拆分 3.数据更新已拆分
   默认：0未处理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'data_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0.未修改1.修改  默认 0.未修改' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'update_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0.未删除 1.删除 默认0未删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'以患者为主体' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'patient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用：0是1否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_role', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统自动添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_role', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统自动添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_role', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_user', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可用：0是1否' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_user', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统自动添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_user', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统自动添加' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_user', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色关联表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_user_role'
GO
USE [master]
GO
ALTER DATABASE [empi_V3] SET  READ_WRITE 
GO

USE [empi_V3]
GO

INSERT INTO [dbo].[base_dt]
           ([type_code]
           ,[type_name]
           ,[code]
           ,[name]
           ,[remark]
           ,[update_name])
     VALUES
           ('ZJLX','证件类型','social_no','居民身份证','',''),
		   ('ZJLX','证件类型','booklet_no','居民户口簿','',''),
		   ('ZJLX','证件类型','pass_port_no','护照','',''),
		   ('ZJLX','证件类型','officer_no','军官证','',''),
		   ('ZJLX','证件类型','driver_no','驾驶证','',''),
		   ('ZJLX','证件类型','pass_no','港澳台居民来往内地通行证','',''),
		   ('ZJLX','证件类型','other_no','其他法定有效证件','',''),
		   ('YWHLX','业务号类型','outpatient_no','门诊号','',''),
		   ('YWHLX','业务号类型','inpatient_no','住院号','',''),
		   ('YWHLX','业务号类型','phealth_no','体检号','','')
GO

INSERT INTO [dbo].[match_rule]
           ([match]
           ,[match_name]
           ,[used]
           ,[threshold])
     VALUES
           ('patientName','患者姓名','1','100'),
		   ('socialNo','身份证号','0','90'),
		   ('birthDate','出生日期','1','90'),
		   ('gender','性别','1','100'),
		   ('homeTel','联系方式','1','90')
GO

INSERT INTO [dbo].[t_resource]
           ([resource_name]
           ,[resource_path]
           ,[parentId])
     VALUES
           ('管理员操作','','0'),
		   ('用户管理','page/manager/usermanager.jsp','1'),
		   ('角色管理','page/manager/rolemanager.jsp','1'),
		   ('匹配规则','page/matchrule/matchrule.jsp','1'),
		   ('患者数据管理','','0'),
		   ('患者信息维护','page/person/personIndex.jsp','5'),
		   ('批量数据导入','page/person/personImport.jsp','5')
		   
GO

INSERT INTO [dbo].[t_role]
           ([role_name]
           ,[description]
           ,[status]
           ,[creator]
           ,[updater]
           ,[create_time]
           ,[update_time])
     VALUES
           ('管理员','','','','','',''),
		   ('护理','','','','','',''),
		   ('医生','','','','','',''),
		   ('信息科','','','','','','')
GO

INSERT INTO [dbo].[t_role_resource]
           ([role_id]
           ,[resource_id]
           ,[org_id])
     VALUES
           ('1','2',''),
		   ('1','3',''),
		   ('1','4',''),
		   ('1','6',''),
		   ('1','7',''),
		   ('1','8','')
GO

INSERT INTO [dbo].[t_user]
           ([user_id]
           ,[password]
           ,[name]
           ,[sex]
           ,[birth_date]
           ,[identity_card]
           ,[email]
           ,[telephone]
           ,[mobile]
           ,[home_address]
           ,[description]
           ,[status]
           ,[user_role]
           ,[creator]
           ,[create_time]
           ,[updater]
           ,[update_time])
     VALUES
           ('admin','password','admin','','','','','','','','','','','','','','')
GO


INSERT INTO [dbo].[t_user_role]
           ([user_id]
           ,[role_id]
           ,[org_id])
     VALUES
           ('admin','1','')
GO
