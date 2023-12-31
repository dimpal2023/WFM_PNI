ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [FK__TAB_TOOL___WF_ID__2A01329B]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [FK__TAB_TOOL___TOOL___290D0E62]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [FK__TAB_TOOL___DEPT___2AF556D4]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___TOOL___408F9238]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___TOOL___2610A626]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___SHIFT__3F9B6DFF]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___SHIFT__251C81ED]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___DEPT___3EA749C6]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [FK__TAB_TOOL___DEPT___24285DB4]
GO
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
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [DF__TAB_TOOL___CREAT__2818EA29]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [DF__TAB_TOOL_T__DATE__2724C5F0]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] DROP CONSTRAINT [DF__TAB_TOOL_TAL__ID__2630A1B7]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [DF__TAB_TOOL___CREAT__607251E5]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] DROP CONSTRAINT [DF__TAB_TOOL_TAL__ID__5F7E2DAC]
GO
ALTER TABLE [dbo].[TAB_ASSET_MASTER] DROP CONSTRAINT [DF_TAB_ASSET_MASTER_ASSET_ID]
GO
ALTER TABLE [dbo].[TAB_ASSET_ALLOCATION] DROP CONSTRAINT [DF_TAB_ASSET_ALLOCATION_ASSET_ALLOCATION_ID]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_TRAINNING_WORKFORCE]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_TRAINNING_WORKFORCE]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_MASTER]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_TRAINNING_MASTER]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_TRAINNING_MASTER]
GO
/****** Object:  Table [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]
GO
/****** Object:  Table [dbo].[TAB_TOOL_TALK_CONFIGURATION]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_TOOL_TALK_CONFIGURATION]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]
GO
/****** Object:  Table [dbo].[TAB_MAIL_TEMPLATE]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_MAIL_TEMPLATE]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_MAIL_TEMPLATE]
GO
/****** Object:  Table [dbo].[TAB_ASSET_MASTER]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_ASSET_MASTER]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_ASSET_MASTER]
GO
/****** Object:  Table [dbo].[TAB_ASSET_ALLOCATION]    Script Date: 11/09/2021 17:20:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TAB_ASSET_ALLOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[TAB_ASSET_ALLOCATION]
GO
/****** Object:  Table [dbo].[TAB_ASSET_ALLOCATION]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_ASSET_ALLOCATION](
	[ASSET_ALLOCATION_ID] [uniqueidentifier] NOT NULL,
	[COMPANY_ID] [uniqueidentifier] NOT NULL,
	[DEPT_ID] [uniqueidentifier] NOT NULL,
	[SUBDEPT_ID] [uniqueidentifier] NOT NULL,
	[WF_ID] [uniqueidentifier] NOT NULL,
	[ASSET_ID] [uniqueidentifier] NOT NULL,
	[ASSET_TYPE] [varchar](80) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[PURPOSE] [varchar](250) NOT NULL,
	[IS_REFOUND] [char](1) NULL,
	[IS_ACTIVE] [char](1) NOT NULL,
	[ASSET_ASSIGN_DATE] [datetime] NOT NULL,
	[ASSET_ASSIGN_BY] [varchar](100) NOT NULL,
	[ASSET_HANDOVER_DATE] [datetime] NULL,
	[ASSET_CLOSE_DATE] [datetime] NULL,
	[ASSET_CLOSE_BY] [varchar](100) NULL,
 CONSTRAINT [PK_TAB_ASSET_ALLOCATION] PRIMARY KEY CLUSTERED 
(
	[ASSET_ALLOCATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_ASSET_MASTER]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_ASSET_MASTER](
	[ASSET_ID] [uniqueidentifier] NOT NULL,
	[COMPANY_ID] [uniqueidentifier] NOT NULL,
	[DEPARTMENT_ID] [uniqueidentifier] NOT NULL,
	[SUBDEPT_ID] [uniqueidentifier] NOT NULL,
	[ASSET_NAME] [varchar](200) NOT NULL,
	[ASSET_LIFE] [int] NULL,
	[REFUNDABLE] [char](1) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[CREATED_BY] [varchar](100) NOT NULL,
	[IS_ACTIVE] [char](1) NOT NULL,
 CONSTRAINT [PK_TAB_ASSET_MASTER] PRIMARY KEY CLUSTERED 
(
	[ASSET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_MAIL_TEMPLATE]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_MAIL_TEMPLATE](
	[TAMPLATE_ID] [int] IDENTITY(1,1) NOT NULL,
	[TEMPLATE_FOR] [nvarchar](250) NOT NULL,
	[TEMPLATE_CONTANT] [nvarchar](max) NOT NULL,
	[CC_MAIL] [nvarchar](350) NULL,
 CONSTRAINT [PK_TAB_MAIL_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[TAMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_TOOL_TALK_CONFIGURATION]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION](
	[ID] [uniqueidentifier] NOT NULL,
	[DEPT_ID] [uniqueidentifier] NOT NULL,
	[SUBDEPT_ID] [uniqueidentifier] NOT NULL,
	[SHIFT_ID] [uniqueidentifier] NOT NULL,
	[TOOL_TALK_ID] [uniqueidentifier] NOT NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
 CONSTRAINT [PK__TAB_TOOL__3214EC2733540A38] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST](
	[ID] [uniqueidentifier] NOT NULL,
	[TOOL_TALK_ID] [uniqueidentifier] NOT NULL,
	[WF_ID] [uniqueidentifier] NOT NULL,
	[DEPT_ID] [uniqueidentifier] NOT NULL,
	[SUBDEPT_ID] [uniqueidentifier] NOT NULL,
	[DATE] [datetime] NOT NULL,
	[CREATED_DATE] [datetime] NULL,
	[CREATED_BY] [varchar](100) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
 CONSTRAINT [PK__TAB_TOOL__3214EC2724D6969B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_MASTER]    Script Date: 11/09/2021 17:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAB_TRAINNING_MASTER](
	[TRAINNING_ID] [uniqueidentifier] NOT NULL,
	[CMP_ID] [uniqueidentifier] NOT NULL,
	[TRAINNING_NAME] [varchar](250) NOT NULL,
	[DEPT_ID] [uniqueidentifier] NOT NULL,
	[SUBDEPT_ID] [uniqueidentifier] NOT NULL,
	[CREATED_BY] [varchar](50) NOT NULL,
	[CREATED_DATE] [datetime] NOT NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](100) NULL,
	[STATUS] [char](1) NOT NULL,
 CONSTRAINT [PK_TAB_TRAINNING_MASTER] PRIMARY KEY CLUSTERED 
(
	[TRAINNING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE]    Script Date: 11/09/2021 17:20:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAB_TRAINNING_WORKFORCE_MAPPING]    Script Date: 11/09/2021 17:20:34 ******/
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
	[STATUS] [char](1) NOT NULL,
	[REMARK] [varchar](500) NULL,
 CONSTRAINT [TAB_TRAINNING_WORKFORCE_MAPPING_TRAINNING_MAPPING_ID] PRIMARY KEY CLUSTERED 
(
	[TRAINNING_MAPPING_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TAB_ASSET_ALLOCATION] ([ASSET_ALLOCATION_ID], [COMPANY_ID], [DEPT_ID], [SUBDEPT_ID], [WF_ID], [ASSET_ID], [ASSET_TYPE], [QUANTITY], [PURPOSE], [IS_REFOUND], [IS_ACTIVE], [ASSET_ASSIGN_DATE], [ASSET_ASSIGN_BY], [ASSET_HANDOVER_DATE], [ASSET_CLOSE_DATE], [ASSET_CLOSE_BY]) VALUES (N'96e25265-6460-4607-839f-4afe7174f8c9', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'3c3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'00000000-0000-0000-0000-000000000000', N'bd2ebe06-4697-4b21-8575-3422f27d8324', N'12c03aec-8105-4757-ac32-f80a45fb319d', N'Replace', 3, N'Waiting', NULL, N'Y', CAST(N'2021-09-11T13:53:09.497' AS DateTime), N'sumit kumar', NULL, NULL, NULL)
INSERT [dbo].[TAB_ASSET_ALLOCATION] ([ASSET_ALLOCATION_ID], [COMPANY_ID], [DEPT_ID], [SUBDEPT_ID], [WF_ID], [ASSET_ID], [ASSET_TYPE], [QUANTITY], [PURPOSE], [IS_REFOUND], [IS_ACTIVE], [ASSET_ASSIGN_DATE], [ASSET_ASSIGN_BY], [ASSET_HANDOVER_DATE], [ASSET_CLOSE_DATE], [ASSET_CLOSE_BY]) VALUES (N'62883cec-97c1-4e16-b43d-f9e15d31126d', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'3c3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'00000000-0000-0000-0000-000000000000', N'bd2ebe06-4697-4b21-8575-3422f27d8324', N'12c03aec-8105-4757-ac32-f80a45fb319d', N'New', 3, N'Testing', NULL, N'Y', CAST(N'2021-09-11T13:53:09.497' AS DateTime), N'sumit kumar', NULL, NULL, NULL)
GO
INSERT [dbo].[TAB_ASSET_MASTER] ([ASSET_ID], [COMPANY_ID], [DEPARTMENT_ID], [SUBDEPT_ID], [ASSET_NAME], [ASSET_LIFE], [REFUNDABLE], [CREATED_DATE], [CREATED_BY], [IS_ACTIVE]) VALUES (N'12c03aec-8105-4757-ac32-f80a45fb319d', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'3c3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'8b860be1-dc00-49aa-b4dc-760e7233beba', N'Asset 1', 2, N'Y', CAST(N'2021-09-11T11:18:08.647' AS DateTime), N'sumit1', N'Y')
GO
SET IDENTITY_INSERT [dbo].[TAB_MAIL_TEMPLATE] ON 

INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (1, N'GenerateOnRoleCard', N'<table width="80%" style="margin: 1% 1% 1% 1%;">
        <tr>
            <td>
                <table style="border: 1px solid black;border-collapse: collapse">
                    <tr>
                        <td>
                            <table width="450px" style="border: 1px solid black;border-collapse: collapse">
                                <tr>
                                    <td style="text-align:center">
                                        <img style="width:50px;" src="/Content/IdCardImages/karamIcon.png"  />
                                    </td>
                                    <td>
                                        <table width="100%">
                                            <tr>
                                                <th><h4 style="margin:0;font-weight:bold;text-align:left;">[CMP_NAME]</h4></th>
                                                <td style="text-align:right">[ADDRESS1]</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">[ADDRESS2]</td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="7" style="border: 1px solid black;"></td>
                                </tr>
                                <tr class="cardTr">
                                    <td style="width:36px;">
                                        <img src="/Content/IdCardImages/karam.JPG" />
                                    </td>
                                    <td>
                                        <table width="100%">
                                            <tr style="vertical-align: top;">
                                                <th width="25%" style="text-align:left">Name</th>
                                                <td width="40%">[EMP_NAME]</td>
                                                <td rowspan="5" style="text-align:left">
                                                    <img style="width:120px" src="[WF_SRC_URL]" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <th style="text-align:left">Emp_Code</th>
                                                <td>[EMP_CODE]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th style="text-align:left">Bio_Code</th>
                                                <td>[BIO_CODE]</td>
                                            </tr>
                                            <tr>
                                                <th style="text-align:left">Department</th>
                                                <td>[DEPARTMENT]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th style="text-align:left">Designation</th>
                                                <td>[DESIGNATION]</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td colspan="3">
                            <img style="width:23px;" src="/Content/IdCardImages/needIcon.JPG" />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="border: 1px solid black;border-collapse: collapse">
                    <tr>
                        <td>
                            <table width="450px" style="border: 1px solid black;border-collapse: collapse;font-size: small;">
                                <tr>
                                    <td style="text-align:center">
                                        <img style="width:50px;" src="/Content/IdCardImages/karamIcon.png" />
                                    </td>
                                    <td>
                                        <table width="100%">
                                            <tr>
                                                <th><h4 style="margin:0;font-weight:bold;text-align:left;">[CMP_NAME]</h4></th>
                                                <td style="text-align:right">[ADDRESS1]</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">[ADDRESS2]</td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="7" style="border: 1px solid black;margin-top:2px"></td>
                                </tr>
                                <tr>
                                    <td style="width:36px;">
                                        <img src="/Content/IdCardImages/karam.JPG" />
                                    </td>
                                    <td>
                                        <table style="text-align:left;font-size: small;" width="100%">
                                            <tr style="vertical-align: top;">
                                                <th width="70px">Local Address</th>
                                                <td width="210px">[LOC_ADDR]</td>
                                                
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Permanent Address</th>
                                                <td>[PERM_ADDR]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Mobile No.</th>
                                                <td>[EMP_MOB]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Emergency No.</th>
                                                <td>[EMG_MOB]</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td colspan="3">
                            <img style="width:23px;" src="/Content/IdCardImages/needIcon.JPG" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>', NULL)
INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (2, N'GenerateOnAgentCard', N'<table width="80%" style="margin: 1% 1% 1% 1%;">
        <tr>
            <td>
                <table style="border: 1px solid black;border-collapse: collapse">
                    <tr>
                        <td>
                            <table width="475px" style="border: 1px solid black;border-collapse: separate;border-radius:10px;">
                                <tr style="text-align:center;background-color: #009e9e;color: white;">
                                    <td colspan="2">
                                        <table width="100%" style="color:white;">
                                            <tr>
                                                <th><h4 style="margin:0;font-weight:bold;text-align:center;">[CMP_NAME]</h4></th>
                                                <td ></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="text-align:center">[ADDRESS1] [ADDRESS2]</td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="7" style="border: 1px solid black;"></td>
                                </tr>
                                <tr class="cardTr">
                                    <td style="width:36px;height:150px;">
                                       
                                    </td>
                                    <td>
                                        <table width="100%">
                                            <tr style="vertical-align: top;">
                                                <th width="25%" style="text-align:left">Name</th>
                                                <td width="40%">[EMP_NAME]</td>
                                                <td rowspan="5" style="text-align:left">
                                                    <img style="width:120px" src="[WF_SRC_URL]" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <th style="text-align:left">Emp_Code</th>
                                                <td>[EMP_CODE]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th style="text-align:left">Bio_Code</th>
                                                <td>[BIO_CODE]</td>
                                            </tr>
                                            <tr>
                                                <th style="text-align:left">Department</th>
                                                <td>[DEPARTMENT]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th style="text-align:left">Designation</th>
                                                <td>[DESIGNATION]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th style="text-align:left">DOJ</th>
                                                <td>[DOJ]</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                       
                    </tr>
                </table>
            </td>
            <td>
                <table style="border: 1px solid black;border-collapse: collapse">
                    <tr>
                        <td>
                           <table width="475px" style="border: 1px solid black;border-collapse: separate;border-radius:10px;">
                                <tr style="text-align:center;background-color: #009e9e;color: white;">
                                    <td colspan="2">
                                        <table width="100%" style="color:white;">
                                            <tr>
                                                <th><h4 style="margin:0;font-weight:bold;text-align:center;">[CMP_NAME]</h4></th>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="text-align:center">[ADDRESS1] [ADDRESS2]</td>
                                            </tr>
                                        </table>
                                    </td>

                                </tr>
                                <tr>
                                    <td colspan="7" style="border: 1px solid black;margin-top:2px"></td>
                                </tr>
                                <tr>
                                    <td style="width:36px;height:150px;">
                                    </td>
                                    <td>
                                        <table style="text-align:left;font-size: small;" width="100%">
                                            <tr style="vertical-align: top;">
                                                <th width="70px">Local Address</th>
                                                <td width="210px">[LOC_ADDR]</td>
                                                
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Permanent Address</th>
                                                <td>[PERM_ADDR]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Mobile No.</th>
                                                <td>[EMP_MOB]</td>
                                            </tr>
                                            <tr style="vertical-align: top;">
                                                <th>Emergency No.</th>
                                                <td>[EMG_MOB]</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>', NULL)
INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (3, N'NewUserSmsMsg', N'You have been added as a application user in WFM. Your username is [USER_LOGIN_ID] and password is [CURRENT_PASSWORD].', NULL)
INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (4, N'ApproveAndReject', N'<p>Dear [TONAME],</p>
<p>Please approve the [APPROVALTYPE] request from portal for [TASKNAME].</p>
<p>Please <a href="[REDIRECTURL]">Click hear<a/> to approve/reject.</p>
<p>Regards,</p>
<p>[FROMNAME]</p>', NULL)
INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (5, N'ApproveAndRejectStatus', N'<p>Dear [TONAME],</p>
<p>Your [APPROVALTYPE] request has been [TASKSTATUS].</p>
<p>Please <a href="[REDIRECTURL]">Click hear<a/> to view.</p>
<p>Regards,</p>
<p>[FROMNAME]</p>', NULL)
INSERT [dbo].[TAB_MAIL_TEMPLATE] ([TAMPLATE_ID], [TEMPLATE_FOR], [TEMPLATE_CONTANT], [CC_MAIL]) VALUES (6, N'NewUserMailMsg', N'<p>Dear [USERNAME],</p> <p>You have been added as a application user in WFM. Your username is [USER_LOGIN_ID] and password is [CURRENT_PASSWORD].</p>', NULL)
SET IDENTITY_INSERT [dbo].[TAB_MAIL_TEMPLATE] OFF
GO
INSERT [dbo].[TAB_TRAINNING_MASTER] ([TRAINNING_ID], [CMP_ID], [TRAINNING_NAME], [DEPT_ID], [SUBDEPT_ID], [CREATED_BY], [CREATED_DATE], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'f742d769-5e27-45bd-b628-3eeddabbbf76', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'Training 3', N'3c3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'6ed522f7-2634-4d42-a834-e1cc5b1e7372', N'sumit1', CAST(N'2021-09-11T16:43:46.783' AS DateTime), NULL, NULL, N'Y')
INSERT [dbo].[TAB_TRAINNING_MASTER] ([TRAINNING_ID], [CMP_ID], [TRAINNING_NAME], [DEPT_ID], [SUBDEPT_ID], [CREATED_BY], [CREATED_DATE], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'812cfd48-0e18-4209-82da-7ad71b834da8', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'Training 2', N'3c3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'8b860be1-dc00-49aa-b4dc-760e7233beba', N'sumit1', CAST(N'2021-09-11T16:43:14.207' AS DateTime), NULL, NULL, N'Y')
INSERT [dbo].[TAB_TRAINNING_MASTER] ([TRAINNING_ID], [CMP_ID], [TRAINNING_NAME], [DEPT_ID], [SUBDEPT_ID], [CREATED_BY], [CREATED_DATE], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'51a8437f-2e9d-4c89-b4dd-9f56c2778a46', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'Training 1', N'3a3cc7d1-e65b-eb11-9474-8cdcd4d2c4bc', N'da02bd4f-cacb-4c36-9f57-b1d967ab111c', N'sumit1', CAST(N'2021-09-11T16:25:34.067' AS DateTime), NULL, NULL, N'Y')
GO
INSERT [dbo].[TAB_TRAINNING_WORKFORCE] ([TRAINNING_WORKFORCE_ID], [CMP_ID], [WF_ID], [ISCOMPLETED], [CREATED_DATE], [CREATED_BY], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'5d1cf82e-840a-41fd-84d2-683c5f5cfca3', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'f03355f2-74aa-eb11-bf79-a45d3669901f', N'N', CAST(N'2021-08-28T06:47:41.647' AS DateTime), N'sumit', NULL, NULL, N'Y')
INSERT [dbo].[TAB_TRAINNING_WORKFORCE] ([TRAINNING_WORKFORCE_ID], [CMP_ID], [WF_ID], [ISCOMPLETED], [CREATED_DATE], [CREATED_BY], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'9be26c85-7133-4d30-89ab-c62875727897', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'f33355f2-74aa-eb11-bf79-a45d3669901f', N'N', CAST(N'2021-08-09T13:39:18.240' AS DateTime), N'sumit', NULL, NULL, N'Y')
INSERT [dbo].[TAB_TRAINNING_WORKFORCE] ([TRAINNING_WORKFORCE_ID], [CMP_ID], [WF_ID], [ISCOMPLETED], [CREATED_DATE], [CREATED_BY], [UPDATED_DATE], [UPDATED_BY], [STATUS]) VALUES (N'ca5d7488-a4e8-42d8-a249-e77123f8a3ea', N'a8e171fa-ac3f-eb11-9092-a0a8cdb0f79c', N'f03355f2-74aa-eb11-bf79-a45d3669901f', N'N', CAST(N'2021-08-28T06:46:52.290' AS DateTime), N'sumit', NULL, NULL, N'Y')
GO
ALTER TABLE [dbo].[TAB_ASSET_ALLOCATION] ADD  CONSTRAINT [DF_TAB_ASSET_ALLOCATION_ASSET_ALLOCATION_ID]  DEFAULT (newsequentialid()) FOR [ASSET_ALLOCATION_ID]
GO
ALTER TABLE [dbo].[TAB_ASSET_MASTER] ADD  CONSTRAINT [DF_TAB_ASSET_MASTER_ASSET_ID]  DEFAULT (newsequentialid()) FOR [ASSET_ID]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] ADD  CONSTRAINT [DF__TAB_TOOL_TAL__ID__5F7E2DAC]  DEFAULT (newsequentialid()) FOR [ID]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] ADD  CONSTRAINT [DF__TAB_TOOL___CREAT__607251E5]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] ADD  CONSTRAINT [DF__TAB_TOOL_TAL__ID__2630A1B7]  DEFAULT (newsequentialid()) FOR [ID]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] ADD  CONSTRAINT [DF__TAB_TOOL_T__DATE__2724C5F0]  DEFAULT (getdate()) FOR [DATE]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] ADD  CONSTRAINT [DF__TAB_TOOL___CREAT__2818EA29]  DEFAULT (getdate()) FOR [CREATED_DATE]
GO
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
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___DEPT___24285DB4] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[TAB_DEPARTMENT_MASTER] ([DEPT_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___DEPT___24285DB4]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___DEPT___3EA749C6] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[TAB_DEPARTMENT_MASTER] ([DEPT_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___DEPT___3EA749C6]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___SHIFT__251C81ED] FOREIGN KEY([SHIFT_ID])
REFERENCES [dbo].[TAB_SHIFT_MASTER] ([SHIFT_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___SHIFT__251C81ED]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___SHIFT__3F9B6DFF] FOREIGN KEY([SHIFT_ID])
REFERENCES [dbo].[TAB_SHIFT_MASTER] ([SHIFT_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___SHIFT__3F9B6DFF]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___TOOL___2610A626] FOREIGN KEY([TOOL_TALK_ID])
REFERENCES [dbo].[TAB_TOOL_TALK_MASTER] ([ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___TOOL___2610A626]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___TOOL___408F9238] FOREIGN KEY([TOOL_TALK_ID])
REFERENCES [dbo].[TAB_TOOL_TALK_MASTER] ([ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_CONFIGURATION] CHECK CONSTRAINT [FK__TAB_TOOL___TOOL___408F9238]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___DEPT___2AF556D4] FOREIGN KEY([DEPT_ID])
REFERENCES [dbo].[TAB_DEPARTMENT_MASTER] ([DEPT_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] CHECK CONSTRAINT [FK__TAB_TOOL___DEPT___2AF556D4]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___TOOL___290D0E62] FOREIGN KEY([TOOL_TALK_ID])
REFERENCES [dbo].[TAB_TOOL_TALK_MASTER] ([ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] CHECK CONSTRAINT [FK__TAB_TOOL___TOOL___290D0E62]
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST]  WITH CHECK ADD  CONSTRAINT [FK__TAB_TOOL___WF_ID__2A01329B] FOREIGN KEY([WF_ID])
REFERENCES [dbo].[TAB_WORKFORCE_MASTER] ([WF_ID])
GO
ALTER TABLE [dbo].[TAB_TOOL_TALK_DAILY_CHECKLIST] CHECK CONSTRAINT [FK__TAB_TOOL___WF_ID__2A01329B]
GO
