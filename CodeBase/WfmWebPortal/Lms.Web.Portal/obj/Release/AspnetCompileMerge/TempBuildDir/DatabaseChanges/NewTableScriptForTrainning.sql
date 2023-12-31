ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING] DROP CONSTRAINT [DF_TRAINNING_MAPPING_STATUS]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING] DROP CONSTRAINT [DF_TRAINNING_MAPPING_CREATED_DATE]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE] DROP CONSTRAINT [DF_TAB_WORKFORCE_TRAINNING_STATUS]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE] DROP CONSTRAINT [DF_TAB_WORKFORCE_TRAINNING_CREATED_DATE]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_MASTER] DROP CONSTRAINT [DF_TAB_TRAINNING_MASTER_STATUS]
GO
/****** Object:  Table [dbo].[TAB_WORKFLOW_MAPPING_MASTER]    Script Date: 03-08-2021 18:08:37 ******/
DROP TABLE [dbo].[TAB_WORKFLOW_MAPPING_MASTER]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]    Script Date: 03-08-2021 18:08:37 ******/
DROP TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE]    Script Date: 03-08-2021 18:08:37 ******/
DROP TABLE [dbo].[TAB_TRAINNING_WORKFORCE]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_MASTER]    Script Date: 03-08-2021 18:08:37 ******/
DROP TABLE [dbo].[TAB_TRAINNING_MASTER]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_MASTER]    Script Date: 03-08-2021 18:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TRAINNING_MASTER](
	[TRAINNING_ID] [uniqueidentifier] NOT NULL,
	[CMP_ID] [uniqueidentifier] NOT NULL,
	[TRAINNING_NAME] [varchar](250) NULL,
	[DEPT_ID] [uniqueidentifier] NULL,
	[CREATED_BY] [varchar](50) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[STATUS] [char](1) NULL,
 CONSTRAINT [PK_TAB_TRAINNING_MASTER] PRIMARY KEY CLUSTERED 
(
	[TRAINNING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE]    Script Date: 03-08-2021 18:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TRAINNING_WORKFORCE](
	[TRAINNING_WORKFORCE_ID] [uniqueidentifier] NOT NULL,
	[CMP_ID] [uniqueidentifier] NOT NULL,
	[WF_ID] [uniqueidentifier] NULL,
	[ISCOMPLETED] [char](1) NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[STATUS] [char](1) NULL,
 CONSTRAINT [PK_TAB_TRAINNING_WORKFORCE] PRIMARY KEY CLUSTERED 
(
	[TRAINNING_WORKFORCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]    Script Date: 03-08-2021 18:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING](
	[TRAINNING_MAPPING_ID] [uniqueidentifier] NOT NULL,
	[TRAINNING_WORKFORCE_ID] [uniqueidentifier] NOT NULL,
	[TRAINNING_ID] [uniqueidentifier] NOT NULL,
	[TRAINNING_START_DATE] [datetime] NOT NULL,
	[TRAINNING_END_DATE] [datetime] NOT NULL,
	[ACTUAL_START_DATE] [datetime] NULL,
	[ACTUAL_END_DATE] [datetime] NULL,
	[ISCOMPLETED] [char](1) NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[STATUS] [char](1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAB_WORKFLOW_MAPPING_MASTER]    Script Date: 03-08-2021 18:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_WORKFLOW_MAPPING_MASTER](
	[WORKFLOWMAPPING_ID] [uniqueidentifier] NOT NULL,
	[WORKFLOW_ID] [uniqueidentifier] NOT NULL,
	[LEVEL_ID] [int] NULL,
	[DEPT_ID] [uniqueidentifier] NULL,
	[WF_ID] [uniqueidentifier] NOT NULL,
	[DESGINATED_AUTHORITY_EMP_ID] [uniqueidentifier] NULL,
	[AUTO_APPROVE] [char](1) NULL,
	[AUTO_APPROVE_DAY] [int] NULL,
	[AUTO_REJECT] [char](1) NULL,
	[AUTO_REJECT_DAY] [int] NULL,
	[created_date] [datetime] NOT NULL,
	[Created_by] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[status] [char](1) NOT NULL,
 CONSTRAINT [PK_TAB_WORKFLOW_MAPPING_MASTER] PRIMARY KEY CLUSTERED 
(
	[WORKFLOWMAPPING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[TAB_TRAINNING_MASTER] ([TRAINNING_ID], [CMP_ID], [TRAINNING_NAME], [DEPT_ID], [CREATED_BY], [CREATED_DATE], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'90a7b67a-5603-48d2-a74c-9e68ac99e962', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'Testing One', N'3da08c1e-c56b-4499-9d27-22c88b28cd30', N'22eb0bab-953d-4756-881b-9e2639dd7c59', CAST(N'2021-08-03T09:59:23.810' AS DateTime), NULL, NULL, N'Y')
INSERT [dbo].[TAB_TRAINNING_MASTER] ([TRAINNING_ID], [CMP_ID], [TRAINNING_NAME], [DEPT_ID], [CREATED_BY], [CREATED_DATE], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'b1e2e262-ccf3-4d31-bf3e-ecc7b4f13248', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'Testing One', N'8d891636-59b8-4aa2-bda2-1793e6c105ab', N'22eb0bab-953d-4756-881b-9e2639dd7c59', CAST(N'2021-08-03T09:59:23.810' AS DateTime), NULL, N'sumit', N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'82805a94-fc71-4ad5-bef0-15f0bb637b1e', N'5d3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 2, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'3a3655f2-74aa-eb11-bf79-a45d3669901f', NULL, N'Y', 1, N'Y', 1, CAST(N'2021-07-24T11:40:36.620' AS DateTime), N'IIS APPPOOL\wfm_new', NULL, NULL, N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'19d531da-22cf-4b4a-9f1b-1c33c2c36fb5', N'5f3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 1, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'0f3455f2-74aa-eb11-bf79-a45d3669901f', NULL, N'Y', 2, N'Y', 1, CAST(N'2021-07-24T11:41:11.313' AS DateTime), N'IIS APPPOOL\wfm_new', NULL, NULL, N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'482f3c0d-b2a7-4e2e-9be8-34a639fbd9d5', N'5f3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 2, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'433655f2-74aa-eb11-bf79-a45d3669901f', NULL, N'Y', 2, N'Y', 1, CAST(N'2021-07-24T11:41:11.313' AS DateTime), N'IIS APPPOOL\wfm_new', NULL, NULL, N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'313b5f51-fb51-4348-a810-4c022255444e', N'5e3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 1, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'373655f2-74aa-eb11-bf79-a45d3669901f', NULL, N'Y', 3, N'N', NULL, CAST(N'2021-08-03T17:32:10.973' AS DateTime), N'PNILT0228\Pankaj', NULL, NULL, N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'182fef37-6133-48e4-9c4c-8416ac7a4856', N'5d3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 1, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'773655f2-74aa-eb11-bf79-a45d3669901f', NULL, N'N', NULL, N'N', NULL, CAST(N'2021-07-24T11:40:36.620' AS DateTime), N'IIS APPPOOL\wfm_new', NULL, NULL, N'Y')
INSERT [dbo].[TAB_WORKFLOW_MAPPING_MASTER] ([WORKFLOWMAPPING_ID], [WORKFLOW_ID], [LEVEL_ID], [DEPT_ID], [WF_ID], [DESGINATED_AUTHORITY_EMP_ID], [AUTO_APPROVE], [AUTO_APPROVE_DAY], [AUTO_REJECT], [AUTO_REJECT_DAY], [created_date], [Created_by], [UPDATED_DATE], [UPDATED_BY], [status]) VALUES (N'36dd55e0-3f4b-49f6-8d69-8caa0d43b0c2', N'5e3952fb-9a41-eb11-9471-8cdcd4d2c4bc', 2, N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'f53355f2-74aa-eb11-bf79-a45d3669901f', NULL, N'Y', 2, N'N', NULL, CAST(N'2021-08-03T17:32:10.973' AS DateTime), N'PNILT0228\Pankaj', NULL, NULL, N'Y')
ALTER TABLE [dbo].[TAB_TRAINNING_MASTER] ADD  CONSTRAINT [DF_TAB_TRAINNING_MASTER_STATUS]  DEFAULT ('Y') FOR [STATUS]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE] ADD  CONSTRAINT [DF_TAB_WORKFORCE_TRAINNING_CREATED_DATE]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE] ADD  CONSTRAINT [DF_TAB_WORKFORCE_TRAINNING_STATUS]  DEFAULT ('Y') FOR [STATUS]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING] ADD  CONSTRAINT [DF_TRAINNING_MAPPING_CREATED_DATE]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING] ADD  CONSTRAINT [DF_TRAINNING_MAPPING_STATUS]  DEFAULT ('Y') FOR [STATUS]
GO
