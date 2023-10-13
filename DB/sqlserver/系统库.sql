
USE [netcoredev_mbd]
GO
/****** Object:  Table [dbo].[FormCollectionObject]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormCollectionObject](
	[FormCollectionId] [uniqueidentifier] NOT NULL,
	[FormId] [uniqueidentifier] NULL,
	[Title] [nvarchar](max) NULL,
	[FormData] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionList] PRIMARY KEY CLUSTERED 
(
	[FormCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormDesignOptions]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormDesignOptions](
	[FormId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[DaraggeOptions] [nvarchar](max) NULL,
	[FormOptions] [nvarchar](max) NULL,
	[FormConfig] [nvarchar](max) NULL,
	[FormFields] [nvarchar](max) NULL,
	[TableConfig] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
 CONSTRAINT [PK_FormCollectionOptions] PRIMARY KEY CLUSTERED 
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_City]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityCode] [nvarchar](20) NULL,
	[CityName] [nvarchar](30) NULL,
	[ProvinceCode] [varchar](20) NULL,
 CONSTRAINT [PK_Sys_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Department]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Department](
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[DepartmentName] [nvarchar](200) NOT NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[DepartmentType] [nvarchar](50) NULL,
	[Enable] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Dic_ID] [int] IDENTITY(1,1) NOT NULL,
	[Config] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DBServer] [nvarchar](4000) NULL,
	[DbSql] [nvarchar](4000) NULL,
	[DicName] [nvarchar](100) NOT NULL,
	[DicNo] [nvarchar](100) NOT NULL,
	[Enable] [tinyint] NOT NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY CLUSTERED 
(
	[Dic_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_DictionaryList]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_DictionaryList](
	[DicList_ID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[DicName] [nvarchar](100) NULL,
	[DicValue] [nvarchar](100) NULL,
	[Dic_ID] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_DictionaryList] PRIMARY KEY CLUSTERED 
(
	[DicList_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginDate] [datetime] NULL,
	[BrowserType] [nvarchar](200) NULL,
	[ElapsedTime] [int] NULL,
	[EndDate] [datetime] NULL,
	[ExceptionInfo] [nvarchar](max) NULL,
	[LogType] [nvarchar](50) NULL,
	[RequestParameter] [nvarchar](max) NULL,
	[ResponseParameter] [nvarchar](max) NULL,
	[Role_Id] [int] NULL,
	[ServiceIP] [nvarchar](100) NULL,
	[Success] [int] NULL,
	[Url] [nvarchar](4000) NULL,
	[UserIP] [nvarchar](100) NULL,
	[UserName] [nvarchar](4000) NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Menu]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Menu](
	[Menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NOT NULL,
	[Auth] [nvarchar](4000) NULL,
	[Icon] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Enable] [tinyint] NULL,
	[OrderNo] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[ParentId] [int] NOT NULL,
	[Url] [nvarchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[Modifier] [nvarchar](50) NULL,
	[MenuType] [int] NULL,
 CONSTRAINT [PK_Sys_Menu] PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_Province]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Province](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceCode] [nvarchar](20) NOT NULL,
	[ProvinceName] [nvarchar](30) NOT NULL,
	[RegionCode] [nvarchar](20) NULL,
 CONSTRAINT [PK_Sys_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_QuartzLog]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_QuartzLog](
	[LogId] [uniqueidentifier] NOT NULL,
	[Id] [uniqueidentifier] NULL,
	[TaskName] [nvarchar](500) NULL,
	[ElapsedTime] [int] NULL,
	[StratDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Result] [int] NULL,
	[ResponseContent] [nvarchar](max) NULL,
	[ErrorMsg] [nvarchar](max) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK__Sys_Quar__5E54864815AC1510] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_QuartzOptions]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_QuartzOptions](
	[Id] [uniqueidentifier] NOT NULL,
	[TaskName] [nvarchar](500) NOT NULL,
	[GroupName] [nvarchar](500) NOT NULL,
	[CronExpression] [varchar](100) NOT NULL,
	[Method] [varchar](50) NULL,
	[ApiUrl] [nvarchar](2000) NULL,
	[AuthKey] [nvarchar](200) NULL,
	[AuthValue] [nvarchar](200) NULL,
	[Describe] [nvarchar](2000) NULL,
	[LastRunTime] [datetime] NULL,
	[Status] [int] NULL,
	[PostData] [nvarchar](max) NULL,
	[TimeOut] [int] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK__Sys_Quar__3214EC071E78A418] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](50) NULL,
	[DeleteBy] [nvarchar](50) NULL,
	[DeptName] [nvarchar](50) NULL,
	[Dept_Id] [int] NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](50) NULL,
	[ModifyDate] [datetime] NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_RoleAuth]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_RoleAuth](
	[Auth_Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthValue] [nvarchar](1000) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](1000) NULL,
	[Menu_Id] [int] NOT NULL,
	[Modifier] [nvarchar](1000) NULL,
	[ModifyDate] [datetime] NULL,
	[Role_Id] [int] NULL,
	[User_Id] [int] NULL,
 CONSTRAINT [PK_Sys_RoleAuth] PRIMARY KEY CLUSTERED 
(
	[Auth_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableColumn]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableColumn](
	[ColumnId] [int] IDENTITY(1,1) NOT NULL,
	[ApiInPut] [int] NULL,
	[ApiIsNull] [int] NULL,
	[ApiOutPut] [int] NULL,
	[ColSize] [int] NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[ColumnName] [nvarchar](100) NULL,
	[ColumnType] [nvarchar](max) NULL,
	[ColumnWidth] [int] NULL,
	[Columnformat] [nvarchar](max) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](200) NULL,
	[DropNo] [nvarchar](50) NULL,
	[EditColNo] [int] NULL,
	[EditRowNo] [int] NULL,
	[EditType] [nvarchar](200) NULL,
	[Enable] [int] NULL,
	[IsColumnData] [int] NULL,
	[IsDisplay] [int] NULL,
	[IsImage] [int] NULL,
	[IsKey] [int] NULL,
	[IsNull] [int] NULL,
	[IsReadDataset] [int] NULL,
	[Maxlength] [int] NULL,
	[Modifier] [ntext] NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[OrderNo] [int] NULL,
	[Script] [ntext] NULL,
	[SearchColNo] [int] NULL,
	[SearchRowNo] [int] NULL,
	[SearchType] [nvarchar](200) NULL,
	[Sortable] [int] NULL,
	[TableName] [nvarchar](200) NULL,
	[Table_Id] [int] NULL,
 CONSTRAINT [PK_Sys_TableColumn] PRIMARY KEY CLUSTERED 
(
	[ColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_TableInfo]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_TableInfo](
	[Table_Id] [int] IDENTITY(1,1) NOT NULL,
	[CnName] [nvarchar](50) NULL,
	[ColumnCNName] [nvarchar](100) NULL,
	[DBServer] [nvarchar](2000) NULL,
	[DataTableType] [nvarchar](200) NULL,
	[DetailCnName] [nvarchar](200) NULL,
	[DetailName] [nvarchar](200) NULL,
	[EditorType] [nvarchar](100) NULL,
	[Enable] [int] NULL,
	[ExpressField] [nvarchar](200) NULL,
	[FolderName] [nvarchar](200) NULL,
	[Namespace] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[ParentId] [int] NULL,
	[RichText] [nvarchar](100) NULL,
	[SortName] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[TableTrueName] [nvarchar](100) NULL,
	[UploadField] [nvarchar](100) NULL,
	[UploadMaxCount] [int] NULL,
 CONSTRAINT [PK_Sys_TableInfo] PRIMARY KEY CLUSTERED 
(
	[Table_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Id] [int] NOT NULL,
	[RoleName] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](11) NULL,
	[Remark] [nvarchar](200) NULL,
	[Tel] [nvarchar](20) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPwd] [nvarchar](200) NULL,
	[UserTrueName] [nvarchar](20) NOT NULL,
	[DeptName] [nvarchar](150) NULL,
	[Dept_Id] [int] NULL,
	[Email] [nvarchar](100) NULL,
	[Enable] [tinyint] NOT NULL,
	[Gender] [int] NULL,
	[HeadImageUrl] [nvarchar](500) NULL,
	[IsRegregisterPhone] [int] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastModifyPwdDate] [datetime] NULL,
	[Address] [nvarchar](200) NULL,
	[AppType] [int] NULL,
	[AuditDate] [datetime] NULL,
	[AuditStatus] [int] NULL,
	[Auditor] [nvarchar](200) NULL,
	[OrderNo] [int] NULL,
	[Token] [nvarchar](500) NULL,
	[CreateID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Creator] [nvarchar](200) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Modifier] [nvarchar](200) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[DeptIds] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Sys_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_UserDepartment]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_UserDepartment](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[Enable] [int] NOT NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlow]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlow](
	[WorkFlow_Id] [uniqueidentifier] NOT NULL,
	[WorkName] [nvarchar](200) NOT NULL,
	[WorkTable] [nvarchar](200) NOT NULL,
	[WorkTableName] [nvarchar](200) NULL,
	[NodeConfig] [nvarchar](max) NULL,
	[LineConfig] [nvarchar](max) NULL,
	[Remark] [nvarchar](500) NULL,
	[Weight] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[AuditingEdit] [int] NULL,
 CONSTRAINT [PK__Sys_Work__2A1726C38AD06D4D] PRIMARY KEY CLUSTERED 
(
	[WorkFlow_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowStep]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowStep](
	[WorkStepFlow_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[StepId] [varchar](100) NULL,
	[StepName] [nvarchar](200) NULL,
	[StepType] [int] NULL,
	[StepValue] [varchar](500) NULL,
	[OrderId] [int] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[NextStepIds] [varchar](500) NULL,
	[ParentId] [varchar](2000) NULL,
	[AuditRefuse] [int] NULL,
	[AuditBack] [int] NULL,
	[AuditMethod] [int] NULL,
	[SendMail] [int] NULL,
	[Filters] [nvarchar](4000) NULL,
	[StepAttrType] [varchar](50) NULL,
	[Weight] [int] NULL,
 CONSTRAINT [PK__Sys_Work__26A928370FFD6659] PRIMARY KEY CLUSTERED 
(
	[WorkStepFlow_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_WorkFlowTable]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowTable](
	[WorkFlowTable_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[WorkName] [nvarchar](200) NULL,
	[WorkTableKey] [nvarchar](200) NULL,
	[WorkTable] [nvarchar](200) NULL,
	[WorkTableName] [nvarchar](200) NULL,
	[CurrentOrderId] [int] NULL,
	[AuditStatus] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[CurrentStepId] [nvarchar](100) NULL,
	[StepName] [nvarchar](500) NULL,
 CONSTRAINT [PK__Sys_Work__E731D35B8DAE74D6] PRIMARY KEY CLUSTERED 
(
	[WorkFlowTable_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowTableAuditLog]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowTableAuditLog](
	[Id] [uniqueidentifier] NOT NULL,
	[WorkFlowTable_Id] [uniqueidentifier] NULL,
	[WorkFlowTableStep_Id] [uniqueidentifier] NULL,
	[StepId] [nvarchar](100) NULL,
	[StepName] [nvarchar](200) NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](100) NULL,
	[AuditStatus] [int] NULL,
	[AuditResult] [nvarchar](1000) NULL,
	[AuditDate] [datetime] NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sys_WorkFlowTableStep]    Script Date: 2023/8/6 23:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_WorkFlowTableStep](
	[Sys_WorkFlowTableStep_Id] [uniqueidentifier] NOT NULL,
	[WorkFlowTable_Id] [uniqueidentifier] NOT NULL,
	[WorkFlow_Id] [uniqueidentifier] NULL,
	[StepId] [nvarchar](100) NULL,
	[StepName] [nvarchar](200) NULL,
	[StepType] [int] NULL,
	[StepValue] [varchar](500) NULL,
	[OrderId] [int] NULL,
	[AuditId] [int] NULL,
	[Auditor] [nvarchar](50) NULL,
	[AuditStatus] [int] NULL,
	[AuditDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](30) NULL,
	[Enable] [tinyint] NULL,
	[Modifier] [nvarchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[StepAttrType] [varchar](50) NULL,
	[ParentId] [varchar](2000) NULL,
	[NextStepId] [varchar](100) NULL,
	[Weight] [int] NULL,
 CONSTRAINT [PK__Sys_Work__2CBB561BDE0F2FDA] PRIMARY KEY CLUSTERED 
(
	[Sys_WorkFlowTableStep_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'cccc519c-c448-4292-85d1-6a0ac2828fd9', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-04","field1641207457900":"123456","field1641207424694":""}', CAST(0x0000AE12013BD32C AS DateTime), 1, N'��������Ա', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'a37c1956-ddc0-457b-8f0a-93cdc44c257d', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"ʮ������,�൱����","field1641205647957":"�൱����","field1641206608182":"û�����"}', CAST(0x0000AE12013AB1B8 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'e913389c-e11a-4675-b8eb-a25c75086e37', N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', NULL, N'{"FormId":"8e6d9e7c-16c2-48b8-9d67-f1a1a19453da","field1641205615398":"1","field1641206170991":"�ǳ�����,ʮ������,�൱����","field1641205647957":"�ǳ�����","field1641206608182":"1111"}', CAST(0x0000AE12013BC9CC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL)
GO
INSERT [dbo].[FormCollectionObject] ([FormCollectionId], [FormId], [Title], [FormData], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'90513c4c-b639-4d0d-8c9d-fb69b77620f8', N'0431a578-bfc9-407f-b95e-321c350f10cb', NULL, N'{"FormId":"0431a578-bfc9-407f-b95e-321c350f10cb","field1640871905593":"1","field1640871902689":"2022-01-05","field1641207457900":null,"field1641207424694":""}', CAST(0x0000AE12013AFCB8 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'0431a578-bfc9-407f-b95e-321c350f10cb', N'2021��������ʹ�õ���', N'[{"id":5,"name":"�Ƿ�ͬʱʹ�ö������Կ���","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"key":"enable","field":"field1640871905593","width":100,"readonly":false,"required":true,"values":["��"]},{"id":3,"name":"��ʲôʱ��ʼ������?","type":"date","icon":"el-icon-date","value":null,"field":"field1640871902689","width":100,"readonly":false,"required":true},{"id":2,"name":"˵��ʲô","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641207457900","width":100,"readonly":false,"required":false},{"id":9,"name":"ͼƬ�ϴ�","type":"img","url":"","maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"icon":"el-icon-picture-outline","field":"field1641207424694","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1640871905593":[],"field1640871902689":null,"field1641207457900":null,"field1641207424694":null},"formOptions":[[{"field":"field1640871905593","title":"�Ƿ�ͬʱʹ�ö������Կ���","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"dataKey":"enable"}],[{"field":"field1640871902689","title":"��ʲôʱ��ʼ������?","type":"date","required":true,"readonly":false,"colSize":12}],[{"field":"field1641207457900","title":"˵��ʲô","type":"textarea","required":false,"readonly":false,"colSize":12}],[{"field":"field1641207424694","title":"ͼƬ�ϴ�","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]],"tables":[],"tabs":[]}', N'[{"field":"field1640871905593","title":"�Ƿ�ͬʱʹ�ö������Կ���","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"dataKey":"enable"},{"field":"field1640871902689","title":"��ʲôʱ��ʼ������?","type":"date","required":true,"readonly":false,"colSize":12},{"field":"field1641207457900","title":"˵��ʲô","type":"textarea","required":false,"readonly":false,"colSize":12},{"field":"field1641207424694","title":"ͼƬ�ϴ�","type":"img","required":false,"readonly":false,"colSize":12,"maxSize":3,"fileInfo":[],"multiple":false,"autoUpload":false,"maxFile":5,"url":""}]', NULL, N'[]', CAST(0x0000AE0D0185D738 AS DateTime), 1, N'��������Ա', N'��������Ա', CAST(0x0000AE1201393F68 AS DateTime), 1)
GO
INSERT [dbo].[FormDesignOptions] ([FormId], [Title], [DaraggeOptions], [FormOptions], [FormConfig], [FormFields], [TableConfig], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'8e6d9e7c-16c2-48b8-9d67-f1a1a19453da', N'2021˫�����ߵ���', N'[{"id":5,"name":"���ĺ��ӷ�ѧ���Ƿ���ѧУ���õ�������ҵ?","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"key":"enable","field":"field1641205615398","width":100,"readonly":false,"required":true,"values":["��"]},{"id":6,"name":"����Ϊ��ѧ����ҵ�Ժ��ӵĸ�������?","values":["�ǳ�����"],"type":"checkbox","key":"�����","data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"icon":"el-icon-circle-check","field":"field1641206170991","width":100,"readonly":false,"required":true},{"id":5,"name":"��Ϊ�ҳ�,�Ե�ǰ˫�������Ƿ����⣿","type":"radio","icon":"el-icon-aim","value":0,"data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"key":"�����","field":"field1641205647957","width":100,"readonly":false,"required":true,"values":["�ǳ�����"]},{"id":2,"name":"�������","type":"textarea","value":"","icon":"el-icon-document-copy","field":"field1641206608182","width":100,"readonly":false,"required":false}]', N'{"fields":{"field1641205615398":[],"field1641206170991":[],"field1641205647957":[],"field1641206608182":null},"formOptions":[[{"field":"field1641205615398","title":"���ĺ��ӷ�ѧ���Ƿ���ѧУ���õ�������ҵ?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"dataKey":"enable"}],[{"field":"field1641206170991","title":"����Ϊ��ѧ����ҵ�Ժ��ӵĸ�������?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"dataKey":"�����"}],[{"field":"field1641205647957","title":"��Ϊ�ҳ�,�Ե�ǰ˫�������Ƿ����⣿","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"dataKey":"�����"}],[{"field":"field1641206608182","title":"�������","type":"textarea","required":false,"readonly":false,"colSize":12}]],"tables":[],"tabs":[]}', N'[{"field":"field1641205615398","title":"���ĺ��ӷ�ѧ���Ƿ���ѧУ���õ�������ҵ?","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"0","value":"��"},{"key":"2","value":"xx11"},{"key":"1","value":"��"}],"dataKey":"enable"},{"field":"field1641206170991","title":"����Ϊ��ѧ����ҵ�Ժ��ӵĸ�������?","type":"checkbox","required":true,"readonly":false,"colSize":12,"data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"dataKey":"�����"},{"field":"field1641205647957","title":"��Ϊ�ҳ�,�Ե�ǰ˫�������Ƿ����⣿","type":"radio","required":true,"readonly":false,"colSize":12,"data":[{"key":"�ǳ�����","value":"�ǳ�����"},{"key":"ʮ������","value":"ʮ������"},{"key":"�൱����","value":"�൱����"}],"dataKey":"�����"},{"field":"field1641206608182","title":"�������","type":"textarea","required":false,"readonly":false,"colSize":12}]', NULL, N'[]', CAST(0x0000AE0E01668090 AS DateTime), 1, N'��������Ա', N'��������Ա', CAST(0x0000AE120134A6D8 AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Sys_City] ON 

GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (1, N'110100', N'��Ͻ��', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (2, N'110200', N'��', N'110000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (3, N'120100', N'��Ͻ��', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (4, N'120200', N'��', N'120000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (5, N'130100', N'ʯ��ׯ��', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (6, N'130200', N'��ɽ��', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (7, N'130300', N'�ػʵ���', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (8, N'130400', N'������', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (9, N'130500', N'��̨��', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (10, N'130600', N'������', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (11, N'130700', N'�żҿ���', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (12, N'130800', N'�е���', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (13, N'130900', N'������', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (14, N'131000', N'�ȷ���', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (15, N'131100', N'��ˮ��', N'130000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (16, N'140100', N'̫ԭ��', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (17, N'140200', N'��ͬ��', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (18, N'140300', N'��Ȫ��', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (19, N'140400', N'������', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (20, N'140500', N'������', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (21, N'140600', N'˷����', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (22, N'140700', N'������', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (23, N'140800', N'�˳���', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (24, N'140900', N'������', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (25, N'141000', N'�ٷ���', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (26, N'141100', N'������', N'140000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (27, N'150100', N'���ͺ�����', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (28, N'150200', N'��ͷ��', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (29, N'150300', N'�ں���', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (30, N'150400', N'�����', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (31, N'150500', N'ͨ����', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (32, N'150600', N'������˹��', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (33, N'150700', N'���ױ�����', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (34, N'150800', N'�����׶���', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (35, N'150900', N'�����첼��', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (36, N'152200', N'�˰���', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (37, N'152500', N'���ֹ�����', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (38, N'152900', N'��������', N'150000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (39, N'210100', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (40, N'210200', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (41, N'210300', N'��ɽ��', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (42, N'210400', N'��˳��', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (43, N'210500', N'��Ϫ��', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (44, N'210600', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (45, N'210700', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (46, N'210800', N'Ӫ����', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (47, N'210900', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (48, N'211000', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (49, N'211100', N'�̽���', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (50, N'211200', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (51, N'211300', N'������', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (52, N'211400', N'��«����', N'210000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (53, N'220100', N'������', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (54, N'220200', N'������', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (55, N'220300', N'��ƽ��', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (56, N'220400', N'��Դ��', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (57, N'220500', N'ͨ����', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (58, N'220600', N'��ɽ��', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (59, N'220700', N'��ԭ��', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (60, N'220800', N'�׳���', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (61, N'222400', N'�ӱ߳�����������', N'220000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (62, N'230100', N'��������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (63, N'230200', N'���������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (64, N'230300', N'������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (65, N'230400', N'�׸���', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (66, N'230500', N'˫Ѽɽ��', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (67, N'230600', N'������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (68, N'230700', N'������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (69, N'230800', N'��ľ˹��', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (70, N'230900', N'��̨����', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (71, N'231000', N'ĵ������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (72, N'231100', N'�ں���', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (73, N'231200', N'�绯��', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (74, N'232700', N'���˰������', N'230000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (75, N'310100', N'��Ͻ��', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (76, N'310200', N'��', N'310000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (77, N'320100', N'�Ͼ���', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (78, N'320200', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (79, N'320300', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (80, N'320400', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (81, N'320500', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (82, N'320600', N'��ͨ��', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (83, N'320700', N'���Ƹ���', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (84, N'320800', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (85, N'320900', N'�γ���', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (86, N'321000', N'������', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (87, N'321100', N'����', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (88, N'321200', N'̩����', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (89, N'321300', N'��Ǩ��', N'320000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (90, N'330100', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (91, N'330200', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (92, N'330300', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (93, N'330400', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (94, N'330500', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (95, N'330600', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (96, N'330700', N'����', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (97, N'330800', N'������', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (98, N'330900', N'��ɽ��', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (99, N'331000', N'̨����', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (100, N'331100', N'��ˮ��', N'330000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (101, N'340100', N'�Ϸ���', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (102, N'340200', N'�ߺ���', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (103, N'340300', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (104, N'340400', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (105, N'340500', N'��ɽ��', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (106, N'340600', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (107, N'340700', N'ͭ����', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (108, N'340800', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (109, N'341000', N'��ɽ��', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (110, N'341100', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (111, N'341200', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (112, N'341300', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (113, N'341400', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (114, N'341500', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (115, N'341600', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (116, N'341700', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (117, N'341800', N'������', N'340000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (118, N'350100', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (119, N'350200', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (120, N'350300', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (121, N'350400', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (122, N'350500', N'Ȫ����', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (123, N'350600', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (124, N'350700', N'��ƽ��', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (125, N'350800', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (126, N'350900', N'������', N'350000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (127, N'360100', N'�ϲ���', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (128, N'360200', N'��������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (129, N'360300', N'Ƽ����', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (130, N'360400', N'�Ž���', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (131, N'360500', N'������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (132, N'360600', N'ӥ̶��', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (133, N'360700', N'������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (134, N'360800', N'������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (135, N'360900', N'�˴���', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (136, N'361000', N'������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (137, N'361100', N'������', N'360000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (138, N'370100', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (139, N'370200', N'�ൺ��', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (140, N'370300', N'�Ͳ���', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (141, N'370400', N'��ׯ��', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (142, N'370500', N'��Ӫ��', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (143, N'370600', N'��̨��', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (144, N'370700', N'Ϋ����', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (145, N'370800', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (146, N'370900', N'̩����', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (147, N'371000', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (148, N'371100', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (149, N'371200', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (150, N'371300', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (151, N'371400', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (152, N'371500', N'�ĳ���', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (153, N'371600', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (154, N'371700', N'������', N'370000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (155, N'410100', N'֣����', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (156, N'410200', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (157, N'410300', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (158, N'410400', N'ƽ��ɽ��', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (159, N'410500', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (160, N'410600', N'�ױ���', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (161, N'410700', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (162, N'410800', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (163, N'410900', N'�����', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (164, N'411000', N'�����', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (165, N'411100', N'�����', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (166, N'411200', N'����Ͽ��', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (167, N'411300', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (168, N'411400', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (169, N'411500', N'������', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (170, N'411600', N'�ܿ���', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (171, N'411700', N'פ�����', N'410000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (172, N'420100', N'�人��', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (173, N'420200', N'��ʯ��', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (174, N'420300', N'ʮ����', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (175, N'420500', N'�˲���', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (176, N'420600', N'�差��', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (177, N'420700', N'������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (178, N'420800', N'������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (179, N'420900', N'Т����', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (180, N'421000', N'������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (181, N'421100', N'�Ƹ���', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (182, N'421200', N'������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (183, N'421300', N'������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (184, N'422800', N'��ʩ����������������', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (185, N'429000', N'ʡֱϽ������λ', N'420000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (186, N'430100', N'��ɳ��', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (187, N'430200', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (188, N'430300', N'��̶��', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (189, N'430400', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (190, N'430500', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (191, N'430600', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (192, N'430700', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (193, N'430800', N'�żҽ���', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (194, N'430900', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (195, N'431000', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (196, N'431100', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (197, N'431200', N'������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (198, N'431300', N'¦����', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (199, N'433100', N'��������������������', N'430000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (200, N'440100', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (201, N'440200', N'�ع���', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (202, N'440300', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (203, N'440400', N'�麣��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (204, N'440500', N'��ͷ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (205, N'440600', N'��ɽ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (206, N'440700', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (207, N'440800', N'տ����', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (208, N'440900', N'ï����', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (209, N'441200', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (210, N'441300', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (211, N'441400', N'÷����', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (212, N'441500', N'��β��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (213, N'441600', N'��Դ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (214, N'441700', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (215, N'441800', N'��Զ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (216, N'441900', N'��ݸ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (217, N'442000', N'��ɽ��', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (218, N'445100', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (219, N'445200', N'������', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (220, N'445300', N'�Ƹ���', N'440000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (221, N'450100', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (222, N'450200', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (223, N'450300', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (224, N'450400', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (225, N'450500', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (226, N'450600', N'���Ǹ���', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (227, N'450700', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (228, N'450800', N'�����', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (229, N'450900', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (230, N'451000', N'��ɫ��', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (231, N'451100', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (232, N'451200', N'�ӳ���', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (233, N'451300', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (234, N'451400', N'������', N'450000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (235, N'460100', N'������', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (236, N'460200', N'������', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (237, N'469000', N'ʡֱϽ�ؼ�������λ', N'460000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (238, N'500100', N'��Ͻ��', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (239, N'500200', N'��', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (240, N'500300', N'��', N'500000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (241, N'510100', N'�ɶ���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (242, N'510300', N'�Թ���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (243, N'510400', N'��֦����', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (244, N'510500', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (245, N'510600', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (246, N'510700', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (247, N'510800', N'��Ԫ��', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (248, N'510900', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (249, N'511000', N'�ڽ���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (250, N'511100', N'��ɽ��', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (251, N'511300', N'�ϳ���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (252, N'511400', N'üɽ��', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (253, N'511500', N'�˱���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (254, N'511600', N'�㰲��', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (255, N'511700', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (256, N'511800', N'�Ű���', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (257, N'511900', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (258, N'512000', N'������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (259, N'513200', N'���Ӳ���Ǽ��������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (260, N'513300', N'���β���������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (261, N'513400', N'��ɽ����������', N'510000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (262, N'520100', N'������', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (263, N'520200', N'����ˮ��', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (264, N'520300', N'������', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (265, N'520400', N'��˳��', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (266, N'522200', N'ͭ�ʵ���', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (267, N'522300', N'ǭ���ϲ���������������', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (268, N'522400', N'�Ͻڵ���', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (269, N'522600', N'ǭ�������嶱��������', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (270, N'522700', N'ǭ�ϲ���������������', N'520000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (271, N'530100', N'������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (272, N'530300', N'������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (273, N'530400', N'��Ϫ��', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (274, N'530500', N'��ɽ��', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (275, N'530600', N'��ͨ��', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (276, N'530700', N'������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (277, N'530800', N'˼é��', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (278, N'530900', N'�ٲ���', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (279, N'532300', N'��������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (280, N'532500', N'��ӹ���������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (281, N'532600', N'��ɽ׳������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (282, N'532800', N'��˫���ɴ���������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (283, N'532900', N'�������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (284, N'533100', N'�º���徰����������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (285, N'533300', N'ŭ��������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (286, N'533400', N'�������������', N'530000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (287, N'540100', N'������', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (288, N'542100', N'��������', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (289, N'542200', N'ɽ�ϵ���', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (290, N'542300', N'�տ������', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (291, N'542400', N'��������', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (292, N'542500', N'�������', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (293, N'542600', N'��֥����', N'540000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (294, N'610100', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (295, N'610200', N'ͭ����', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (296, N'610300', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (297, N'610400', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (298, N'610500', N'μ����', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (299, N'610600', N'�Ӱ���', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (300, N'610700', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (301, N'610800', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (302, N'610900', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (303, N'611000', N'������', N'610000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (304, N'620100', N'������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (305, N'620200', N'��������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (306, N'620300', N'�����', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (307, N'620400', N'������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (308, N'620500', N'��ˮ��', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (309, N'620600', N'������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (310, N'620700', N'��Ҵ��', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (311, N'620800', N'ƽ����', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (312, N'620900', N'��Ȫ��', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (313, N'621000', N'������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (314, N'621100', N'������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (315, N'621200', N'¤����', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (316, N'622900', N'���Ļ���������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (317, N'623000', N'���ϲ���������', N'620000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (318, N'630100', N'������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (319, N'632100', N'��������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (320, N'632200', N'��������������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (321, N'632300', N'���ϲ���������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (322, N'632500', N'���ϲ���������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (323, N'632600', N'�������������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (324, N'632700', N'��������������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (325, N'632800', N'�����ɹ������������', N'630000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (326, N'640100', N'������', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (327, N'640200', N'ʯ��ɽ��', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (328, N'640300', N'������', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (329, N'640400', N'��ԭ��', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (330, N'640500', N'������', N'640000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (331, N'650100', N'��³ľ����', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (332, N'650200', N'����������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (333, N'652100', N'��³������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (334, N'652200', N'���ܵ���', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (335, N'652300', N'��������������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (336, N'652700', N'���������ɹ�������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (337, N'652800', N'���������ɹ�������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (338, N'652900', N'�����յ���', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (339, N'653000', N'�������տ¶�����������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (340, N'653100', N'��ʲ����', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (341, N'653200', N'�������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (342, N'654000', N'���������������', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (343, N'654200', N'���ǵ���', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (344, N'654300', N'����̩����', N'650000')
GO
INSERT [dbo].[Sys_City] ([CityId], [CityCode], [CityName], [ProvinceCode]) VALUES (345, N'659000', N'ʡֱϽ������λ', N'650000')
GO
SET IDENTITY_INSERT [dbo].[Sys_City] OFF
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'ec238385-f907-44de-b99b-0eddcffa6750', N'��Ʒ��', N'A0003', N'41b96ea8-5475-4775-845d-fd66370c75ae', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010099ED78 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'62105dfa-ca64-4c4a-ab42-11ba677ac4db', N'�г���', N'A003', N'8974177f-af6b-45b5-b7ab-88f169063f40', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010097D4C0 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'9e1121a0-d5c5-4f46-8dd4-43ed90d2f963', N'������', N'A005', N'8974177f-af6b-45b5-b7ab-88f169063f40', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010097F7E8 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'97b5ff9c-5f52-4745-95f9-5fed8d505fa9', N'��Դ��', N'H0007', N'41b96ea8-5475-4775-845d-fd66370c75ae', NULL, NULL, N'��û���', 1, N'��������Ա', CAST(0x0000B00100A22C04 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'd01eb5d9-0f02-4468-94b8-635a5dfb3142', N'����', N'A0002', N'8974177f-af6b-45b5-b7ab-88f169063f40', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B00100964FB0 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'8974177f-af6b-45b5-b7ab-88f169063f40', N'���������о�Ժ', N'A0001', NULL, NULL, NULL, N'��û���', 1, N'��������Ա', CAST(0x0000B00100934A40 AS DateTime), 1, N'��������Ա', CAST(0x0000B00100A23438 AS DateTime))
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'e8c6cc16-af09-495d-b101-b651f10196de', N'ս�Բ�', N'H0002', N'41b96ea8-5475-4775-845d-fd66370c75ae', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010099C924 AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'e5d8e8af-3659-454c-aa8e-c201c7edbcfb', N'���۲�', N'A004', N'62105dfa-ca64-4c4a-ab42-11ba677ac4db', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010097E654 AS DateTime), 1, N'��������Ա', CAST(0x0000B001009848C4 AS DateTime))
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'eae332dc-4af8-4ebf-804a-e3d6c6d00926', N'���²�', NULL, N'9e1121a0-d5c5-4f46-8dd4-43ed90d2f963', NULL, NULL, NULL, 1, N'��������Ա', CAST(0x0000B0010098592C AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Department] ([DepartmentId], [DepartmentName], [DepartmentCode], [ParentId], [DepartmentType], [Enable], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'41b96ea8-5475-4775-845d-fd66370c75ae', N'�Ϻ��г��о�Ժ', N'H0001', NULL, NULL, NULL, N'��û���', 1, N'��������Ա', CAST(0x0000B0010098B110 AS DateTime), 1, N'��������Ա', CAST(0x0000B00100A237BC AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] ON 

GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (3, N'{valueField: ''Enable'',
textField: ''Enable'',
 containField: null,
  handler: null }', CAST(0x0000AA81012224F4 AS DateTime), NULL, N'admin', N'1', NULL, N'�Ƿ�ֵ', N'enable', 1, N'��������Ա', CAST(0x0000AE120130F41A AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (30, N'{valueField: ''Success'',
 textField: ''Success'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FC012FCB7C AS DateTime), 0, N'���Գ�������Ա', NULL, NULL, N'��Ӧ״̬', N'restatus', 1, N'���Գ�������Ա', CAST(0x0000A8FD00AAC850 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (31, N'{valueField: ''LogType'',
 textField: ''LogType'', 
 containField: null,
 handler: null }
', CAST(0x0000A8FD00F36114 AS DateTime), NULL, N'���Գ�������Ա', NULL, NULL, N'��־����', N'log', 1, N'��������Ա', CAST(0x0000AE6D00DC40AE AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (32, N'{valueField: ''Role_Id'',
 textField: ''RoleName'', 
 containField: [''Role_Id'',''RoleName''],
 handler: null }
', CAST(0x0000A8FF01150404 AS DateTime), NULL, N'���Գ�������Ա', NULL, N'SELECT Role_Id as ''key'',RoleName as ''value'' FROM Sys_Role WHERE Enable=1
', N'��ɫ�б�', N'roles', 1, N'���Գ�������Ա', CAST(0x0000A91C00F8424C AS DateTime), 1, 123, 0, N'sql�����Ҫkey,value�У�������ܰ�����Դ')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (35, N'{
 valueField: ''AuditStatus'',
 textField: ''AuditStatus'',
  containField:null 
}', CAST(0x0000A91900B2F8CC AS DateTime), NULL, N'���Գ�������Ա', NULL, NULL, N'���״̬', N'audit', 1, N'��������Ա', CAST(0x0000AFFC00120E1A AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (36, N'{
 valueField: ''Variety'',
 textField: ''Variety'',
  containField:null 
}', CAST(0x0000A91900E86A70 AS DateTime), 1, N'���Գ�������Ա', NULL, NULL, N'����', N'pz', 1, N'��������Ա', CAST(0x0000AFFC00116061 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (37, N'{
 valueField: ''AgeRange'',
 textField: ''AgeRange'',
  containField:null 
}', CAST(0x0000A91900E8D898 AS DateTime), NULL, N'���Գ�������Ա', NULL, NULL, N'����', N'age', 1, N'��������Ա', CAST(0x0000B00100B240E1 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (38, N'{
 valueField: ''City'',
 textField: ''City'',
  containField:null 
}', CAST(0x0000A91900EBC56C AS DateTime), NULL, N'���Գ�������Ա', NULL, N'
SELECT  CASE WHEN  CityName=''��Ͻ��'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''��Ͻ��'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''��''', N'����', N'city', 1, N'��������Ա', CAST(0x0000AB540172007F AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (44, N'{
 valueField: ''NewsType'',
 textField: ''NewsType'',
  containField:null 
}', CAST(0x0000A919010C0FD4 AS DateTime), 1, N'���Գ�������Ա', NULL, NULL, N'��������', N'news', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (46, N'{
 valueField: ''ProvinceName'',
 textField: ''ProvinceName'',
  containField:null 
}', CAST(0x0000A91F00DDCE08 AS DateTime), NULL, N'���Գ�������Ա', NULL, N'
SELECT  CASE WHEN  CityName=''��Ͻ��'' THEN  ProvinceName ELSE CityName end  as  ''key'',CASE WHEN  CityName=''��Ͻ��'' THEN  ProvinceName ELSE CityName end  as  ''value''  FROM Sys_City AS a 
INNER JOIN Sys_Province AS b 
ON a.ProvinceCode=b.ProvinceCode
WHERE a.CityName<> ''��''', N'ʡ�б�', N'pro', 1, N'��������Ա', CAST(0x0000AB540171F607 AS DateTime), 1, NULL, 0, N'sql�����Ҫkey,value�У�������ܰ�����Դ')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (49, N'{
 valueField: ''Gender'',
 textField: ''Gender'',
  containField:null 
}', CAST(0x0000A92600A6197C AS DateTime), NULL, N'���Գ�������Ա', NULL, NULL, N'�Ա�', N'gender', 1, N'���Գ�������Ա', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (50, N'{
 valueField: ''Enable'',
 textField: ''Enable'',
  containField:null 
}', CAST(0x0000A926010146E4 AS DateTime), 1, N'���Գ�������Ա', NULL, NULL, N'����״̬', N'status', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (59, N'{
 valueField: ''IsRegregisterPhone'',
 textField: ''IsRegregisterPhone'',
  containField:null 
}', CAST(0x0000A94B01061EBC AS DateTime), 1, N'���Գ�������Ա', NULL, NULL, N'�ֻ��û�', N'isphone', 1, N'��������Ա', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (64, NULL, CAST(0x0000AACC01403124 AS DateTime), 1, N'��������Ա', NULL, NULL, N'��������', N'ordertype', 1, N'��������Ա', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, 0, N'xxxxx')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (65, NULL, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'��������Ա', NULL, NULL, N'��Ʒ����', N'pn', 1, N'��������Ա', CAST(0x0000AED00182E785 AS DateTime), 1, 2, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (66, NULL, CAST(0x0000AC79017C1BD0 AS DateTime), 1, N'��������Ա', NULL, N'SELECT Role_Id AS id,parentId,Role_Id AS [key],RoleName AS value FROM Sys_Role', N'������ɫ', N'tree_roles', 1, N'��������Ա', CAST(0x0000AC79017D3D85 AS DateTime), 1, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (67, NULL, CAST(0x0000ACA0016566D6 AS DateTime), 1, N'��������Ա', NULL, NULL, N'nav', N'nav', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (68, NULL, CAST(0x0000AE120130A904 AS DateTime), 1, N'��������Ա', NULL, NULL, N'�����', N'�����', 1, N'��������Ա', CAST(0x0000AEC1000E76FE AS DateTime), 1, NULL, 0, N'�����ʹ��')
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (70, NULL, CAST(0x0000AF08000D3A93 AS DateTime), 1, N'��������Ա', NULL, NULL, N'����ʽ', N'����ʽ', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (71, NULL, CAST(0x0000AF08000DFA5B AS DateTime), 1, N'��������Ա', NULL, NULL, N'��ʱ����״̬', N'��ʱ����״̬', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Sys_Dictionary] ([Dic_ID], [Config], [CreateDate], [CreateID], [Creator], [DBServer], [DbSql], [DicName], [DicNo], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [ParentId], [Remark]) VALUES (72, NULL, CAST(0x0000B0010093E874 AS DateTime), 1, N'��������Ա', NULL, N'SELECT DepartmentId AS ''key'',DepartmentId AS ''id'',ParentId AS parentId,DepartmentName as ''value'' FROM Sys_Department', N'��֯����', N'��֯����', 1, NULL, NULL, NULL, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_Dictionary] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] ON 

GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (3, NULL, 1, N'admin', N'��', N'0', 3, NULL, N'��������Ա', CAST(0x0000AE120130F41A AS DateTime), 1, 2, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (4, NULL, 1, N'xxx', N'��', N'1', 3, NULL, N'��������Ա', CAST(0x0000AE120130F41A AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (22, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'���Գ�������Ա', N'����', N'0', 30, NULL, N'��������Ա', CAST(0x0000AAB0011553B4 AS DateTime), 1, 10, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (23, CAST(0x0000A8FC012FCB7C AS DateTime), 1, N'���Գ�������Ա', N'�ɹ�', N'1', 30, NULL, N'��������Ա', CAST(0x0000AAB0011553B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (24, CAST(0x0000A8FD009FD788 AS DateTime), 1, N'���Գ�������Ա', N'�쳣', N'2', 30, NULL, N'��������Ա', CAST(0x0000AAB0011553B4 AS DateTime), 1, 50, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (25, CAST(0x0000A8FD00F36240 AS DateTime), 1, N'���Գ�������Ա', N'ϵͳ', N'System', 31, NULL, N'��������Ա', CAST(0x0000AE6D00DC40B4 AS DateTime), 1, 100, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (26, CAST(0x0000A8FD00F3C4B0 AS DateTime), 1, N'���Գ�������Ա', N'��½', N'Login', 31, NULL, N'��������Ա', CAST(0x0000AE6D00DC40B4 AS DateTime), 1, 90, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (27, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'���Գ�������Ա', N'�½�', N'Add', 31, NULL, N'��������Ա', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (28, CAST(0x0000A90000FF6C48 AS DateTime), 1, N'���Գ�������Ա', N'ɾ��', N'Del', 31, 1, N'��������Ա', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (29, CAST(0x0000A90000FF9678 AS DateTime), 1, N'���Գ�������Ա', N'�༭', N'Edit', 31, 1, N'��������Ա', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (37, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'���Գ�������Ա', N'�����', N'0', 35, 0, N'��������Ա', CAST(0x0000AFFC00120E1A AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (38, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'���Գ�������Ա', N'���ͨ��', N'1', 35, NULL, N'��������Ա', CAST(0x0000AFFC00120E1A AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (39, CAST(0x0000A91900B2F9F8 AS DateTime), 1, N'���Գ�������Ա', N'�����', N'2', 35, 0, N'��������Ա', CAST(0x0000AFFC00120E1A AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (64, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'���Գ�������Ա', N'��ҵ����', N'1', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (65, CAST(0x0000A919010C0FD4 AS DateTime), 1, N'���Գ�������Ա', N'������Ѷ', N'2', 44, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (71, CAST(0x0000A91A011B4274 AS DateTime), 1, N'���Գ�������Ա', N'�쳣', N'Exception', 31, 0, N'��������Ա', CAST(0x0000AE6D00DC40B3 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (90, CAST(0x0000A92600A6197C AS DateTime), 1, N'���Գ�������Ա', N'��', N'0', 49, NULL, N'���Գ�������Ա', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (91, CAST(0x0000A92600A6197C AS DateTime), 1, N'���Գ�������Ա', N'Ů', N'1', 49, NULL, N'���Գ�������Ա', CAST(0x0000A92600B82630 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (96, CAST(0x0000A926010146E4 AS DateTime), 1, N'���Գ�������Ա', N'δ����', N'0', 50, 1, N'��������Ա', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (97, CAST(0x0000A926010146E4 AS DateTime), 1, N'���Գ�������Ա', N'������', N'1', 50, 1, N'��������Ա', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (98, CAST(0x0000A926010146E4 AS DateTime), 1, N'���Գ�������Ա', N'��ɾ��', N'2', 50, 1, N'��������Ա', CAST(0x0000AAAB012D83E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (128, CAST(0x0000A94B01061EBC AS DateTime), 1, N'���Գ�������Ա', N'��', N'1', 59, 0, N'��������Ա', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (129, CAST(0x0000A94B01061EBC AS DateTime), 1, N'���Գ�������Ա', N'��', N'0', 59, 1, N'��������Ա', CAST(0x0000AC79017C9F6B AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (144, CAST(0x0000AAB00112E318 AS DateTime), 1, N'��������Ա', N'ˢ��Token', N'ReplaceToeken', 31, NULL, N'��������Ա', CAST(0x0000AE6D00DC40B1 AS DateTime), 1, 110, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (145, CAST(0x0000AAB0011553B4 AS DateTime), 1, N'��������Ա', N'Info', N'3', 30, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (149, CAST(0x0000AACC01403124 AS DateTime), 1, N'��������Ա', N'����', N'1', 64, 1, N'��������Ա', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fd')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (150, CAST(0x0000AACC01403124 AS DateTime), 1, N'��������Ա', N'�˻�', N'2', 64, 0, N'��������Ա', CAST(0x0000AAF800A5FD2B AS DateTime), 1, NULL, N'fs')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (151, CAST(0x0000AACC01403124 AS DateTime), 1, N'��������Ա', N'����', N'3', 64, 1, N'��������Ա', CAST(0x0000AAF800A5FD2A AS DateTime), 1, NULL, N'xx')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (152, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'��������Ա', N'�Ҿ�', N'4', 65, 1, N'��������Ա', CAST(0x0000AB5A0127DCC0 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (153, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'��������Ա', N'��װ', N'3', 65, 1, N'��������Ա', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 4, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (154, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'��������Ա', N'Ůװ', N'2', 65, 0, N'��������Ա', CAST(0x0000AB5A0127DCBF AS DateTime), 1, 6, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (155, CAST(0x0000AACD00A6D2A4 AS DateTime), 1, N'��������Ա', N'ʳƷ', N'1', 65, 0, N'��������Ա', CAST(0x0000AB5A0127DCAE AS DateTime), 1, NULL, N'�������,�������')
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (423, CAST(0x0000ACA0016566E6 AS DateTime), 1, N'��������Ա', N'��', N'1', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (424, CAST(0x0000ACA0016566ED AS DateTime), 1, N'��������Ա', N'��', N'0', 67, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (425, CAST(0x0000AE120130A91C AS DateTime), 1, N'��������Ա', N'�ǳ�����', N'�ǳ�����', 68, 0, N'��������Ա', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (426, CAST(0x0000AE120130A91E AS DateTime), 1, N'��������Ա', N'ʮ������', N'ʮ������', 68, 0, N'��������Ա', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (427, CAST(0x0000AE120130A91E AS DateTime), 1, N'��������Ա', N'�൱����', N'�൱����', 68, 0, N'��������Ա', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (428, CAST(0x0000AE120132F9A5 AS DateTime), 1, N'��������Ա', N'�Ƚ�����', N'�Ƚ�����', 68, 0, N'��������Ա', CAST(0x0000AE1201330927 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (429, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'��������Ա', N'�������', N'�������', 36, 0, N'��������Ա', CAST(0x0000AFFC00116072 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (430, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'��������Ա', N'�������', N'�������', 36, 0, N'��������Ա', CAST(0x0000AFFC00116072 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (431, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'��������Ա', N'΢�����', N'΢�����', 36, 0, N'��������Ա', CAST(0x0000AFFC00116072 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (432, CAST(0x0000AE12013D1B40 AS DateTime), 1, N'��������Ա', N'�˶����', N'�˶����', 36, 0, N'��������Ա', CAST(0x0000AFFC0011606F AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (435, CAST(0x0000AF0000316707 AS DateTime), 1, N'��������Ա', N'���δͨ��', N'3', 35, 0, N'��������Ա', CAST(0x0000AFFC00120E1A AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (436, CAST(0x0000AF08000D3AA0 AS DateTime), 1, N'��������Ա', N'get', N'get', 70, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (437, CAST(0x0000AF08000D3AA2 AS DateTime), 1, N'��������Ա', N'post', N'post', 70, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (438, CAST(0x0000AF08000DFA5C AS DateTime), 1, N'��������Ա', N'����', N'0', 71, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (439, CAST(0x0000AF08000DFA5D AS DateTime), 1, N'��������Ա', N'��ͣ', N'1', 71, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (440, CAST(0x0000AF09001E7233 AS DateTime), 1, N'��������Ա', N'20', N'20', 37, 0, N'��������Ա', CAST(0x0000B00100B240E6 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (441, CAST(0x0000AF09001E7239 AS DateTime), 1, N'��������Ա', N'30', N'30', 37, 0, N'��������Ա', CAST(0x0000B00100B240E4 AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Sys_DictionaryList] ([DicList_ID], [CreateDate], [CreateID], [Creator], [DicName], [DicValue], [Dic_ID], [Enable], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Remark]) VALUES (442, CAST(0x0000AFFC00120E1A AS DateTime), 1, N'��������Ա', N'����', N'4', 35, 0, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_DictionaryList] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] ON 

GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (1, CAST(0x0000B056017F8D4D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 101, CAST(0x0000B056017F8D6B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (2, CAST(0x0000B056017F8E16 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 13, CAST(0x0000B056017F8E1A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (3, CAST(0x0000B056017F8E59 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017F8E5B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (4, CAST(0x0000B056017F8E9A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017F8E9B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (5, CAST(0x0000B056017F901C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017F901E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (6, CAST(0x0000B056017FA2F1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FA2F1 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (7, CAST(0x0000B056017FA2F1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 41, CAST(0x0000B056017FA2FD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (8, CAST(0x0000B056017FA322 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 22, CAST(0x0000B056017FA328 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ReportDBTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (9, CAST(0x0000B056017FA62A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 26, CAST(0x0000B056017FA632 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Log/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (10, CAST(0x0000B056017FA62A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 109, CAST(0x0000B056017FA64B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (11, CAST(0x0000B056017FACC0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 40, CAST(0x0000B056017FACCC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (12, CAST(0x0000B056017FAEB8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 23, CAST(0x0000B056017FAEBF AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (13, CAST(0x0000B056017FB171 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FB173 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (14, CAST(0x0000B056017FB29A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FB29B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (15, CAST(0x0000B056017FB4F7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FB4F9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (16, CAST(0x0000B056017FB8DA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 154, CAST(0x0000B056017FB908 AS DateTime), NULL, N'Info', N'��:.,�˵�������ҳ��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (17, CAST(0x0000B056017FB8DA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 159, CAST(0x0000B056017FB909 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (18, CAST(0x0000B056017FB9FF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FBA00 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (19, CAST(0x0000B056017FBB96 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 10, CAST(0x0000B056017FBB99 AS DateTime), NULL, N'Info', N'��:.,�˵�������Դ��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (20, CAST(0x0000B056017FBB96 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 11, CAST(0x0000B056017FBB9A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (21, CAST(0x0000B056017FBC5E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FBC5F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (22, CAST(0x0000B056017FBE1E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FBE20 AS DateTime), NULL, N'Info', N'��:.,�˵����¼���ʽ��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (23, CAST(0x0000B056017FBE1E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FBE20 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (24, CAST(0x0000B056017FBEFB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FBEFC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (25, CAST(0x0000B056017FC0E9 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FC0EB AS DateTime), NULL, N'Info', N'��:.,�˵������ӱ�ҳ��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (26, CAST(0x0000B056017FC0E9 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FC0EB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (27, CAST(0x0000B056017FC1B6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FC1B7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (28, CAST(0x0000B056017FC387 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FC389 AS DateTime), NULL, N'Info', N'��:.,�˵����Զ�����չ,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (29, CAST(0x0000B056017FC387 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FC389 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (30, CAST(0x0000B056017FC428 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FC429 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (31, CAST(0x0000B056017FC5DF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FC5E1 AS DateTime), NULL, N'Info', N'��:.,�˵�����vol-form,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (32, CAST(0x0000B056017FC5DF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FC5E1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (33, CAST(0x0000B056017FC6B2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FC6B3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (34, CAST(0x0000B056017FC882 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FC883 AS DateTime), NULL, N'Info', N'��:.,�˵������vol-table,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (35, CAST(0x0000B056017FC882 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FC883 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (36, CAST(0x0000B056017FC98E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FC98F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (37, CAST(0x0000B056017FCCCC AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FCCCD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (38, CAST(0x0000B056017FCEE6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FCEE7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (39, CAST(0x0000B056017FD096 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FD098 AS DateTime), NULL, N'Info', N'��:/,�˵���һ��һ(��),Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (40, CAST(0x0000B056017FD096 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FD098 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (41, CAST(0x0000B056017FD17A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FD17B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (42, CAST(0x0000B056017FD34B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FD34D AS DateTime), NULL, N'Info', N'��:.,�˵�����ҳǩ/���ͷ,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (43, CAST(0x0000B056017FD34B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FD34D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (44, CAST(0x0000B056017FD60D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FD60E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (45, CAST(0x0000B056017FD7D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FD7D2 AS DateTime), NULL, N'Info', N'��:/,�˵���ͼ��+��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (46, CAST(0x0000B056017FD7D0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FD7D2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (47, CAST(0x0000B056017FD8B6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FD8B7 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (48, CAST(0x0000B056017FDB63 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 14, CAST(0x0000B056017FDB67 AS DateTime), NULL, N'Info', N'��:tables,�˵���table���,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (49, CAST(0x0000B056017FDB63 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 14, CAST(0x0000B056017FDB67 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (50, CAST(0x0000B056017FDC74 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FDC75 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (51, CAST(0x0000B056017FDF79 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FDF7A AS DateTime), NULL, N'Info', N'��:�ļ��ϴ�,�˵����ļ��ϴ�,Ȩ��[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (52, CAST(0x0000B056017FDF79 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FDF7A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (53, CAST(0x0000B056017FE0D7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056017FE0D8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (54, CAST(0x0000B056017FE2A0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FE2A1 AS DateTime), NULL, N'Info', N'��:���β˵����,�˵������β˵�,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (55, CAST(0x0000B056017FE2A0 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FE2A1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (56, CAST(0x0000B056017FE397 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FE398 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (57, CAST(0x0000B056017FE43E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FE43F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (58, CAST(0x0000B056017FE5F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FE5FA AS DateTime), NULL, N'Info', N'��:/,�˵�����̨У��,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (59, CAST(0x0000B056017FE5F8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FE5FA AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (60, CAST(0x0000B056017FE603 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056017FE603 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (61, CAST(0x0000B056017FE794 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056017FE795 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (62, CAST(0x0000B056017FE795 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FE796 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (63, CAST(0x0000B056017FE7BA AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FE7BA AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (64, CAST(0x0000B056017FEC92 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056017FEC92 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (65, CAST(0x0000B056017FEE86 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FEE87 AS DateTime), NULL, N'Info', N'��:.,�˵��������,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (66, CAST(0x0000B056017FEE86 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FEE87 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (67, CAST(0x0000B056017FEF4A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B056017FEF4A AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (68, CAST(0x0000B056017FEF4A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FEF4B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (69, CAST(0x0000B056017FEF6D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FEF6E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (70, CAST(0x0000B056017FF0A3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FF0A4 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (71, CAST(0x0000B056017FF24A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FF24B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (72, CAST(0x0000B056017FF4E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056017FF4E9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (73, CAST(0x0000B056017FF6E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FF6EB AS DateTime), NULL, N'Info', N'��:Table+������,�˵�����������,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (74, CAST(0x0000B056017FF6E8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FF6EB AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (75, CAST(0x0000B056017FF7C1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FF7C2 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (76, CAST(0x0000B056017FF976 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FF979 AS DateTime), NULL, N'Info', N'��:/,�˵���������,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (77, CAST(0x0000B056017FF976 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 8, CAST(0x0000B056017FF979 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (78, CAST(0x0000B056017FFA42 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FFA43 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (79, CAST(0x0000B056017FFBFE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B056017FFC00 AS DateTime), NULL, N'Info', N'��:/,�˵�����һ�Զ�,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (80, CAST(0x0000B056017FFBFE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056017FFC00 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (81, CAST(0x0000B056017FFD8F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FFD90 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (82, CAST(0x0000B056017FFF25 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056017FFF26 AS DateTime), NULL, N'Info', N'��:.,�˵�����Ϣ����,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (83, CAST(0x0000B056017FFF25 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056017FFF26 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (84, CAST(0x0000B056017FFF36 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056017FFF36 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (85, CAST(0x0000B0560180001E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180001F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (86, CAST(0x0000B056018001CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056018001CD AS DateTime), NULL, N'Info', N'��:/,�˵����ƶ�H5����,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (87, CAST(0x0000B056018001CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056018001CD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (88, CAST(0x0000B056018001D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056018001D9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (89, CAST(0x0000B05601800293 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601800293 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (90, CAST(0x0000B056018004CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056018004CD AS DateTime), NULL, N'Info', N'��:��̬ҳ�淢��,�˵����༭����HTML,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (91, CAST(0x0000B056018004CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B056018004CD AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (92, CAST(0x0000B056018004D8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056018004D8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (93, CAST(0x0000B056018006CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056018006CB AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (94, CAST(0x0000B056018006CB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B056018006CC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (95, CAST(0x0000B056018006EB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B056018006EC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (96, CAST(0x0000B0560180198B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180198B AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (97, CAST(0x0000B0560180198B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180198B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (98, CAST(0x0000B056018019AB AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056018019AC AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (99, CAST(0x0000B05601802001 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601802002 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (100, CAST(0x0000B05601804050 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 33, CAST(0x0000B0560180405A AS DateTime), NULL, N'Info', N'��:Service_Test,�˵���ҵ��ֿ�,Ȩ��[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (101, CAST(0x0000B05601804050 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 34, CAST(0x0000B0560180405A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (102, CAST(0x0000B0560180413D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180413D AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (103, CAST(0x0000B0560180413D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B0560180413E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (104, CAST(0x0000B05601804162 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601804162 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (105, CAST(0x0000B0560180464D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180464D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (106, CAST(0x0000B05601806A24 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B05601806A25 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (107, CAST(0x0000B056018072E6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056018072E9 AS DateTime), NULL, N'Info', N'��:ServiceDbTest,�˵���ҵ��ֿ�,Ȩ��[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (108, CAST(0x0000B056018072E6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B056018072E9 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (109, CAST(0x0000B05601807415 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B05601807415 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (110, CAST(0x0000B05601807415 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B05601807416 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (111, CAST(0x0000B05601807437 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601807438 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (112, CAST(0x0000B05601807571 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601807571 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (113, CAST(0x0000B056018079F2 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056018079F3 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (114, CAST(0x0000B0560180912C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B0560180912E AS DateTime), NULL, N'Info', N'��:ReportDBTest,�˵�������ֿ�,Ȩ��[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (115, CAST(0x0000B0560180912C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 7, CAST(0x0000B0560180912E AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (116, CAST(0x0000B05601809222 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B05601809222 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (117, CAST(0x0000B05601809222 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B05601809223 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (118, CAST(0x0000B05601809246 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601809246 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (119, CAST(0x0000B05601809557 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601809558 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (120, CAST(0x0000B05601809879 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601809879 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (121, CAST(0x0000B05601809AD4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 10, CAST(0x0000B05601809AD7 AS DateTime), NULL, N'Info', N'��:ReportDBTest,�˵�������ֿ�,Ȩ��[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (122, CAST(0x0000B05601809AD4 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 12, CAST(0x0000B05601809AD8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (123, CAST(0x0000B05601809C05 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B05601809C05 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (124, CAST(0x0000B05601809C05 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601809C06 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (125, CAST(0x0000B05601809C26 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601809C27 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (126, CAST(0x0000B05601809D78 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601809D79 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (127, CAST(0x0000B05601809DEF AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 5, CAST(0x0000B05601809DF0 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ReportDBTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (128, CAST(0x0000B0560180A64C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B0560180A64C AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (129, CAST(0x0000B0560180A64C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180A64C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (130, CAST(0x0000B0560180A65F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180A660 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ReportDBTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (131, CAST(0x0000B0560180A98A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B0560180A98C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Dictionary/GetVueDictionary', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (132, CAST(0x0000B0560180A98A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 6, CAST(0x0000B0560180A98C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/Sys_Log/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (133, CAST(0x0000B0560180AC54 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180AC54 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (134, CAST(0x0000B0560180B2D5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180B2D6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (135, CAST(0x0000B0560180B3A6 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180B3A6 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeItem', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (136, CAST(0x0000B0560180BB6E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B0560180BB6F AS DateTime), NULL, N'Info', N'��:/,�˵����������,Ȩ��[{"text":"��ѯ","value":"Search"}],�ɹ�����ɹ�', NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (137, CAST(0x0000B0560180BB6E AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B0560180BB6F AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/save', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (138, CAST(0x0000B0560180BD41 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B0560180BD41 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (139, CAST(0x0000B0560180BD41 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B0560180BD42 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (140, CAST(0x0000B0560180BD67 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180BD67 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (141, CAST(0x0000B0560180E917 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180E917 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (142, CAST(0x0000B0560180E917 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560180E917 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (143, CAST(0x0000B0560180E93C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560180E93D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (144, CAST(0x0000B05601810817 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810817 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (145, CAST(0x0000B05601810817 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810818 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (146, CAST(0x0000B05601810840 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601810840 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (147, CAST(0x0000B05601810863 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810863 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (148, CAST(0x0000B05601810863 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810863 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (149, CAST(0x0000B05601810882 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601810882 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (150, CAST(0x0000B05601810906 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810906 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (151, CAST(0x0000B05601810906 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810906 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (152, CAST(0x0000B05601810924 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601810924 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (153, CAST(0x0000B05601810964 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810964 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (154, CAST(0x0000B05601810964 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601810964 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (155, CAST(0x0000B05601810980 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601810981 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (156, CAST(0x0000B056018109B7 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B056018109B8 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (157, CAST(0x0000B056018109B8 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B056018109B8 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (158, CAST(0x0000B056018109D5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B056018109D5 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (159, CAST(0x0000B05601818412 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601818412 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (160, CAST(0x0000B05601818412 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601818413 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (161, CAST(0x0000B05601818439 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560181843A AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (162, CAST(0x0000B0560181855F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560181855F AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (163, CAST(0x0000B05601818560 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601818560 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (164, CAST(0x0000B05601818588 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601818588 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (165, CAST(0x0000B05601818C14 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601818C14 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ReportDBTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (166, CAST(0x0000B05601818C2B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601818C2C AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (167, CAST(0x0000B05601818E35 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B05601818E35 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (168, CAST(0x0000B05601818E35 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601818E35 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (169, CAST(0x0000B05601818E4C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B05601818E4D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (170, CAST(0x0000B0560181D289 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B0560181D289 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (171, CAST(0x0000B0560181D289 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560181D289 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (172, CAST(0x0000B0560181D2BE AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 4, CAST(0x0000B0560181D2BF AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (173, CAST(0x0000B0560181D58C AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B0560181D58C AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (174, CAST(0x0000B0560181D58D AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B0560181D58D AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (175, CAST(0x0000B0560181D5C1 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560181D5C1 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (176, CAST(0x0000B05601828CE3 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B05601828CE3 AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (177, CAST(0x0000B05601828CE5 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601828CE5 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (178, CAST(0x0000B05601828D0A AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 3, CAST(0x0000B05601828D0B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (179, CAST(0x0000B0560182902F AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 0, CAST(0x0000B0560182902F AS DateTime), NULL, N'System', NULL, NULL, 0, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/Upload/Tables/Sys_User/202004271001535915/04.jpg', N'127.0.0.1', NULL, 0)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (180, CAST(0x0000B05601829030 AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 1, CAST(0x0000B05601829031 AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/menu/getTreeMenu', N'127.0.0.1', N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Log] ([Id], [BeginDate], [BrowserType], [ElapsedTime], [EndDate], [ExceptionInfo], [LogType], [RequestParameter], [ResponseParameter], [Role_Id], [ServiceIP], [Success], [Url], [UserIP], [UserName], [User_Id]) VALUES (181, CAST(0x0000B0560182904B AS DateTime), N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 2, CAST(0x0000B0560182904B AS DateTime), NULL, N'System', NULL, NULL, 1, N'127.0.0.1:9991', 3, N'http://127.0.0.1:9991/api/ServiceDbTest/getPageData', N'127.0.0.1', N'��������Ա', 1)
GO
SET IDENTITY_INSERT [dbo].[Sys_Log] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] ON 

GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (2, N'�û�����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-user', NULL, 1, 2400, N'.', 0, NULL, CAST(0x0000A7DD00CB94CC AS DateTime), N'2017-08-28 11:12:45', CAST(0x0000B001012F344D AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (3, N'��ɫ����', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 900, N'Sys_Role', 2, N'/Sys_Role', CAST(0x0000A7EC010D2C98 AS DateTime), N'2017-08-28 14:19:13', CAST(0x0000AFFC0023E4E8 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (5, N'��־����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-date', NULL, 1, 1300, N'xxx', 0, N'/', CAST(0x0000A7F60128868C AS DateTime), N'2017-09-22 17:59:37', CAST(0x0000B00100B7DAC8 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (6, N'ϵͳ��־', N'[{"text":"��ѯ","value":"Search"},{"text":"ɾ��","value":"Delete"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'Sys_Log', 5, N'/Sys_Log/Manager', CAST(0x0000A7F60128BECC AS DateTime), N'2017-09-22 18:0:25', CAST(0x0000AAA9010D5344 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (8, N'ͼ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 10000, N'/', 32, N'chart', NULL, NULL, CAST(0x0000AB94015FB231 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (9, N'�û�����', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 2000, N'Sys_User', 2, N'/Sys_User', NULL, NULL, CAST(0x0000AFFC00243789 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (13, N'��+ͼ��', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 800, N'.', 55, N'/multi3', CAST(0x0000A7DD00ECCAC0 AS DateTime), N'null', CAST(0x0000B00100B99D0C AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (25, N'�������', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1100, N'/', 29, N'/form6', NULL, NULL, CAST(0x0000AACE00D21158 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (28, N'�����ɱ༭table', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1500, N'vtable', 33, N'table1', NULL, NULL, CAST(0x0000AB0100EDA5D2 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (29, N'�������', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-monitor', NULL, 1, 1690, N'/', 45, N'', NULL, NULL, CAST(0x0000B0560180BB6E AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (31, N'��һ�Զ�table', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 950, N'App_TransactionAvgPrice1', 55, N'/multi1', NULL, NULL, CAST(0x0000AAFF0119EC74 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (32, N'ͼ��+��', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-full-screen', NULL, 1, 1720, N'/', 45, N'', NULL, NULL, CAST(0x0000B056017FD7D1 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (33, N'table���', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-mobile-phone', NULL, 1, 1710, N'tables', 45, N'/', NULL, NULL, CAST(0x0000B056017FDB66 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (34, N'�����ϴ�����', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 0, N'�����ϴ�����', 84, N'/formUpload', NULL, NULL, CAST(0x0000AB0F015C1B71 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (36, N'ͼ��+��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'/', 32, N'formChart', NULL, NULL, CAST(0x0000AB00012F31F5 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (37, N'ͼƬ�ϴ���Ԥ�� ', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 800, N'ͼƬ�ϴ���Ԥ�� ', 84, N'', NULL, NULL, CAST(0x0000AB0F008A9BD9 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (40, N'api����table����', N'[{"text":"��ѯ","value":"Search"}]', N'ivu-icon ivu-icon-ios-add-circle', NULL, 1, 900, N'table2', 33, N'table2', NULL, NULL, CAST(0x0000AB0100ED9F42 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (42, N'�������ϴ��ļ�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'�������ϴ��ļ�', 84, N'', NULL, NULL, CAST(0x0000AB0F008AC273 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (45, N'���ýڵ�', N'', N'', NULL, 0, 0, N'/', 0, NULL, NULL, NULL, CAST(0x0000ABB200DBCA8F AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (48, N'��������', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-news', NULL, 1, 2000, N'Table+������', 45, N'/', CAST(0x0000AA8800DD8560 AS DateTime), N'��������Ա', CAST(0x0000B056017FF6E9 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (49, N'ֻ��ҳ��', N'[{"text":"��ѯ","value":"Search"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"test","value":"test"}]', N'el-icon-postcard', NULL, 1, 1000, N'App_Appointment', 48, N'/App_Appointment', CAST(0x0000AA8800DE006C AS DateTime), N'��������Ա', CAST(0x0000B00100BA1502 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (50, N'�Զ�����Դ', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 900, N'App_TransactionAvgPrice', 48, N'/App_TransactionAvgPrice', CAST(0x0000AA8800E4EFD0 AS DateTime), N'��������Ա', CAST(0x0000B00100B80911 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (51, N'�Զ�����չһ�Զ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 800, N'App_ReportPrice', 74, N'/App_ReportPrice', CAST(0x0000AA8800E56F8C AS DateTime), N'��������Ա', CAST(0x0000AEF900114CC8 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (52, N'���뵼����', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 600, N'App_Transaction', 48, N'/App_Transaction', CAST(0x0000AA8800E5AED4 AS DateTime), N'��������Ա', CAST(0x0000B00100B9E4E7 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (53, N'��ϱ�һ�Զ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 900, N'App_ReportPrice', 55, N'/multi2', CAST(0x0000AA8800E5E96C AS DateTime), N'��������Ա', CAST(0x0000AAFF013A0640 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (55, N'��һ�Զ�', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-c-scale-to-original', NULL, 1, 1740, N'/', 45, NULL, CAST(0x0000AA8800E651B8 AS DateTime), N'��������Ա', CAST(0x0000B056017FFBFF AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (56, N'������', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-mouse', NULL, 1, 1750, N'/', 45, NULL, CAST(0x0000AA8800E6CCC4 AS DateTime), N'��������Ա', CAST(0x0000B056017FF978 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (57, N'���б�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1000, N'.', 56, N'/form1', CAST(0x0000AA8800E70AE0 AS DateTime), N'��������Ա', CAST(0x0000AB94015D5495 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (58, N'���б�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 900, N'���б�', 56, N'/form2', CAST(0x0000AA8800E72F34 AS DateTime), N'��������Ա', CAST(0x0000AACE00E673B4 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (59, N'���б�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 800, N'���б�', 56, N'/form3', CAST(0x0000AA8800E7570C AS DateTime), N'��������Ա', CAST(0x0000AB960167456A AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (60, N'Table+��', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-mouse', NULL, 1, 700, N'Table+��', 56, N'/form4', CAST(0x0000AA8800E799D8 AS DateTime), N'��������Ա', CAST(0x0000B00100BED549 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (61, N'ϵͳ����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-setting', NULL, 1, 1000, N'ϵͳ����', 0, N'/', CAST(0x0000AA8800E7D470 AS DateTime), N'��������Ա', CAST(0x0000B00100B7C41F AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (62, N'�˵�����', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 10, N'Sys_Menu', 61, N'/sysmenu', CAST(0x0000AA8800E7F8C4 AS DateTime), N'��������Ա', CAST(0x0000AAF000C5EE20 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (63, N'�����������', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 10, N'Sys_Dictionary', 61, N'/Sys_Dictionary', CAST(0x0000AA8800E85A08 AS DateTime), N'��������Ա', CAST(0x0000AAAB01237B24 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (64, N'��������', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-edit', NULL, 1, 1500, N'��������', 0, N'/coding', CAST(0x0000AA8800E8E324 AS DateTime), N'��������Ա', CAST(0x0000B00100B7AAE4 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (65, N'��������', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 10, N'/', 64, N'/coder', CAST(0x0000AA8800E92CF8 AS DateTime), N'��������Ա', CAST(0x0000AE1201397ACA AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (66, N'�༭����HTML', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-document-copy', NULL, 1, 1520, N'��̬ҳ�淢��', 45, N'/', CAST(0x0000AA8800EA2EC8 AS DateTime), N'��������Ա', CAST(0x0000B056018004CC AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (67, N'��̬ҳ�淢��', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'App_News', 66, N'/App_News', CAST(0x0000AA8800EAA1A0 AS DateTime), N'��������Ա', CAST(0x0000AB2B00F38661 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (68, N'ͼƬ�ϴ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 700, N'App_Expert', 48, N'/App_Expert', CAST(0x0000AA8800ED5F94 AS DateTime), N'��������Ա', CAST(0x0000B00100B819DC AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (71, N'Ȩ�޹���', N'[{"text":"��ѯ","value":"Search"},{"text":"�༭","value":"Update"}]', N'ivu-icon ivu-icon-ios-boat', NULL, 1, 1000, N',', 2, N'/permission', CAST(0x0000AAA500ABD380 AS DateTime), N'��������Ա', CAST(0x0000AFFC0024035B AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (72, N'�ƶ�H5����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-mobile', NULL, 1, 1650, N'/', 45, N'', CAST(0x0000AAA900DAA7C8 AS DateTime), N'��������Ա', CAST(0x0000B056018001CC AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (73, N'�ƶ�H5�����������', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, NULL, N'/', 72, N'/app/guide', CAST(0x0000AAA900DAE134 AS DateTime), N'��������Ա', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (74, N'һ��һ(��)', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-copy-document', NULL, 1, 1770, N'/', 45, N'/', CAST(0x0000AAB101243A28 AS DateTime), N'��������Ա', CAST(0x0000B056017FD097 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (75, N'����һ��һ(1)', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'', NULL, 1, 1000, N'SellOrder', 74, N'/SellOrder', CAST(0x0000AAB1012C1FA4 AS DateTime), N'��������Ա', CAST(0x0000ACEB017058C2 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (77, N'��ֻ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 600, N'��ֻ��', 56, N'/form7', CAST(0x0000AAB500C574D4 AS DateTime), N'��������Ա', CAST(0x0000AACE00E67F6C AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (84, N'�ļ��ϴ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"},{"text":"���","value":"Audit"}]', N'el-icon-document', NULL, 1, 1700, N'�ļ��ϴ�', 45, N'/', CAST(0x0000AB0200D5F887 AS DateTime), N'��������Ա', CAST(0x0000B056017FDF7A AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (85, N'�����ļ��ϴ�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1000, N'�����ļ��ϴ�', 84, N'/volUploadExample', CAST(0x0000AB0B01297D21 AS DateTime), N'��������Ա', CAST(0x0000AB2600BA5FF2 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (86, N'��̨У��', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-connection', NULL, 1, 1700, N'/', 45, N'', CAST(0x0000AB0D00BA0B39 AS DateTime), N'��������Ա', CAST(0x0000B056017FE5F9 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (87, N'KindEditor�༭��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1000, N'KindEditor�༭��', 66, N'/kindEditor', CAST(0x0000AB2800BF93F5 AS DateTime), N'��������Ա', CAST(0x0000AB2C00A53E89 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (88, N'��̬ҳ���б�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 900, N'htmlList', 66, N'/htmlList', CAST(0x0000AB2B00EF5362 AS DateTime), N'��������Ա', CAST(0x0000AB2C00A543EF AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (89, N'��̨����У��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 1700, N'.', 86, N'/validator', CAST(0x0000AB5501182CD9 AS DateTime), N'��������Ա', CAST(0x0000AB550118608A AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (90, N'�ӱ�ͼƬ�ϴ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'vSellOrderImg', 74, N'/vSellOrderImg', CAST(0x0000AB9601550193 AS DateTime), N'��������Ա', CAST(0x0000AE9E015E1A08 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (91, N'�����Ű�', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'�����Ű�', 32, N'/flex', CAST(0x0000AB96016840CA AS DateTime), N'��������Ա', CAST(0x0000AB00012F30CC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (92, N'���β˵�', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-bank-card', NULL, 1, 1705, N'���β˵����', 45, N'', CAST(0x0000ABA900EBEFF1 AS DateTime), N'��������Ա', CAST(0x0000B056017FE2A1 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (93, N'tree���������ҳ��', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 1000, N'tree���������ҳ��', 92, N'treetable1', CAST(0x0000ABA900EC5EC0 AS DateTime), N'��������Ա', CAST(0x0000ABA900EC2A34 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (94, N'tree���Զ���table', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'treetable2', 92, N'/treetable2', CAST(0x0000ABA9012C23BD AS DateTime), N'��������Ա', CAST(0x0000ABA900EC2A34 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (96, N'Ĭ�ϱ༭��', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"},{"text":"�ϴ�","value":"Upload"}]', N'', NULL, 1, 0, N'App_NewsEditor', 48, N'/App_NewsEditor', CAST(0x0000ACB200B4A734 AS DateTime), N'��������Ա', CAST(0x0000AB08013C06BC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (97, N'���кϲ���ʾ', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 0, N'App_Expert2', 48, N'/App_Expert2', CAST(0x0000ACE301054346 AS DateTime), N'��������Ա', CAST(0x0000B00100B8BDA3 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (98, N'����һ��һ(2)', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 990, N'SellOrder2', 74, N'/SellOrder2', CAST(0x0000ACEB0170197F AS DateTime), N'��������Ա', CAST(0x0000ACEB01706089 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (99, N'����һ�Զ�(3)', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 980, N'SellOrder3', 74, N'/SellOrder3', CAST(0x0000ACEB01764E81 AS DateTime), N'��������Ա', CAST(0x0000ACEB0170604C AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (100, N'���༭', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'App_Transaction2', 48, N'/App_Transaction2', CAST(0x0000ACF0017430E3 AS DateTime), N'��������Ա', CAST(0x0000AAF700A74450 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (101, N'table�༭(2)', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'table3', 33, N'/table3', CAST(0x0000ACF100D5ED2E AS DateTime), N'��������Ա', CAST(0x0000AB0100ED9EDC AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (104, N'��ɫ����(tree)', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 0, 0, N'Sys_Role1', 2, N'/Sys_Role1', CAST(0x0000AD1C00E1A7EA AS DateTime), N'��������Ա', CAST(0x0000B0010091D991 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (105, N'tree�Զ���table����', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'/treetable2', 92, N'/treetable2', CAST(0x0000AD1C00F8E5AF AS DateTime), N'��������Ա', CAST(0x0000AD1C00F8A264 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (106, N'�����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-postcard', NULL, 1, 3000, N'.', 45, N'', CAST(0x0000AD92000ABAC4 AS DateTime), N'��������Ա', CAST(0x0000B056017FEE87 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (107, N'�����', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 100, N'.', 106, N'/formDraggable', CAST(0x0000AD92000AFCD8 AS DateTime), N'��������Ա', CAST(0x0000AE1201399759 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (109, N'������', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 0, N'FormDesignOptions', 106, N'/FormDesignOptions', CAST(0x0000AE0D01829308 AS DateTime), N'��������Ա', CAST(0x0000AE12013A329D AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (110, N'���ݲɼ�', N'[{"text":"��ѯ","value":"Search"},{"text":"ɾ��","value":"Delete"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'.', 106, N'/formCollectionResultTree', CAST(0x0000AE0D0182EBC4 AS DateTime), N'��������Ա', CAST(0x0000AE0E017E47E2 AS DateTime), N'��������Ա', NULL)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (113, N'����ҳ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 9000, N'.', 45, N'', CAST(0x0000AE6400101E2C AS DateTime), N'��������Ա', CAST(0x0000B056017FB8E5 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (114, N'ֻ��ҳ��', N'', N'', NULL, 1, 10, N'App_Appointment', 123, N'pages/order/App_Appointment/App_Appointment', CAST(0x0000AE6400105EA0 AS DateTime), N'��������Ա', CAST(0x0000AE6501021963 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (115, N'ˮƽ��ʾ', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'.', 113, N'/pages/order/App_Appointment1/App_Appointment1', CAST(0x0000AE640010A748 AS DateTime), N'��������Ա', CAST(0x0000AEF900142699 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (116, N'����Դ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 8500, N'.', 45, N'', CAST(0x0000AE64002200B0 AS DateTime), N'��������Ա', CAST(0x0000B056017FBB98 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (117, N'����Դ��', N'', N'', NULL, 1, 10, N'App_TransactionAvgPrice', 116, N'pages/appmanager/App_TransactionAvgPrice/App_TransactionAvgPrice', CAST(0x0000AE64002252B8 AS DateTime), N'��������Ա', CAST(0x0000AE650101AFC5 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (118, N'�¼���ʽ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 8200, N'.', 45, N'', CAST(0x0000AE640033E7E4 AS DateTime), N'��������Ա', CAST(0x0000B056017FBE1F AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (119, N'�¼���', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Import"},{"text":"����","value":"Export"}]', N'', NULL, 1, 10, N'App_Transaction', 118, N'/pages/appmanager/App_Transaction/App_Transaction', CAST(0x0000AE640033FCFC AS DateTime), N'��������Ա', CAST(0x0000B00100B9D6A6 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (120, N'��ʽ��', N'', N'', NULL, 1, 0, N'.', 118, N'/pages/appmanager/App_Transaction1/App_Transaction1', CAST(0x0000AE6400341DCC AS DateTime), N'��������Ա', CAST(0x0000AE650101DB79 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (121, N'���ӱ�ҳ��', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 8100, N'.', 45, N'', CAST(0x0000AE6400346548 AS DateTime), N'��������Ա', CAST(0x0000B056017FC0EA AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (122, N'����1��1', N'', N'', NULL, 1, 0, N'SellOrder', 121, N'/pages/order/SellOrder/SellOrder', CAST(0x0000AE64003484EC AS DateTime), N'��������Ա', CAST(0x0000AE650101F094 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (123, N'��vol-form', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 8000, N'.', 45, N'', CAST(0x0000AE640034C308 AS DateTime), N'��������Ա', CAST(0x0000B056017FC5E0 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (124, N'������', N'', N'', NULL, 1, 10, N'.', 123, N'/pages/form/form2', CAST(0x0000AE640034E9B4 AS DateTime), N'��������Ա', CAST(0x0000AE6501021BD2 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (125, N'��ֻ��', N'', N'', NULL, 1, 0, N'.', 113, N'pages/form/form1', CAST(0x0000AE640034F8F0 AS DateTime), N'��������Ա', CAST(0x0000AE650101A166 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (126, N'���vol-table', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 7900, N'.', 45, N'', CAST(0x0000AE6400351C18 AS DateTime), N'��������Ա', CAST(0x0000B056017FC883 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (127, N'�б���ʾtable', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'.', 126, N'pages/table/table2/table2', CAST(0x0000AE6400353964 AS DateTime), N'��������Ա', CAST(0x0000AEF3000F700E AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (128, N'�����ʾtable', N'', N'', NULL, 1, 0, N'App_Expert', 126, N'/pages/table/table1/table1', CAST(0x0000AE6400354774 AS DateTime), N'��������Ա', CAST(0x0000AE6501022F06 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (129, N'�Զ�����չ', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 8050, N'.', 45, N'', CAST(0x0000AE640035E47C AS DateTime), N'��������Ա', CAST(0x0000B056017FC388 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (130, N'����ҳ����չ���', N'', N'', NULL, 1, 0, N'.', 129, N'pages/pagedemo/pagedemo', CAST(0x0000AE6400361104 AS DateTime), N'��������Ա', CAST(0x0000AE6501020653 AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (131, N'�ֶ�������', N'', N'', NULL, 1, 0, N'.', 126, N'pages/table/table3/table3', CAST(0x0000AE65003203E8 AS DateTime), N'��������Ա', CAST(0x0000AE65010231BD AS DateTime), N'��������Ա', 1)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (132, N'��Ϣ����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-chat-line-round', NULL, 1, 1700, N'.', 45, N'/signalR', CAST(0x0000AE8A0039F664 AS DateTime), N'��������Ա', CAST(0x0000B056017FFF26 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (133, N'���̹���', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-mobile', NULL, 1, 2500, N'���̹���', 0, N'', CAST(0x0000AEDD000ACFDE AS DateTime), N'��������Ա', CAST(0x0000B001012F3DA2 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (134, N'���̹���', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'Sys_WorkFlow', 133, N'/Sys_WorkFlow', CAST(0x0000AEDD000AF7BB AS DateTime), N'��������Ա', CAST(0x0000AEE400366800 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (135, N'�ҵ�����', N'[{"text":"��ѯ","value":"Search"},{"text":"ɾ��","value":"Delete"}]', N'', NULL, 1, 0, N'Sys_WorkFlowTable', 133, N'/Sys_WorkFlowTable', CAST(0x0000AEE40009A340 AS DateTime), N'��������Ա', CAST(0x0000AEF30010B019 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (136, N'��������', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 0, N'��������', 133, N'/flowdemo', CAST(0x0000AEF30005F2A2 AS DateTime), N'��������Ա', CAST(0x0000AEF30005FA24 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (137, N'��ʱ����', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-alarm-clock', NULL, 1, 1725, N'��ʱ����', 0, N'', CAST(0x0000AF070036B381 AS DateTime), N'��������Ա', CAST(0x0000AEE400094638 AS DateTime), NULL, 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (138, N'��������', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 0, N'Sys_QuartzOptions', 137, N'/Sys_QuartzOptions', CAST(0x0000AF070036DC92 AS DateTime), N'��������Ա', CAST(0x0000AEE400094638 AS DateTime), NULL, 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (139, N'ִ�м�¼', N'[{"text":"��ѯ","value":"Search"},{"text":"ɾ��","value":"Delete"},{"text":"����","value":"Export"}]', N'', NULL, 1, 0, N'Sys_QuartzLog', 137, N'/Sys_QuartzLog', CAST(0x0000AF070036F5CC AS DateTime), N'��������Ա', CAST(0x0000AF070036F82F AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (142, N'��֯�ܹ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"},{"text":"����","value":"Export"}]', N'', NULL, 1, 2500, N'Sys_Department', 2, N'/Sys_Department', CAST(0x0000AFFC00245310 AS DateTime), N'��������Ա', CAST(0x0000AFFC002473CA AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (143, N'��ҳǩ/���ͷ', N'[{"text":"��ѯ","value":"Search"}]', N'el-icon-document', NULL, 1, 1760, N'.', 45, N'', CAST(0x0000B001012FFEFA AS DateTime), N'��������Ա', CAST(0x0000B056017FD34C AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (144, N'��ҳǩ', N'[{"text":"��ѯ","value":"Search"}]', N'', NULL, 1, 200, N'.', 143, N'/tabsTable', CAST(0x0000B00101302C77 AS DateTime), N'��������Ա', CAST(0x0000B00101300D1C AS DateTime), NULL, 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (145, N'���ͷ', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 100, N'.', 143, N'/App_Appointment2', CAST(0x0000B001013043E1 AS DateTime), N'��������Ա', CAST(0x0000B00101300D1C AS DateTime), NULL, 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (146, N'ҵ��ֿ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 4000, N'ServiceDbTest', 0, N'/ServiceDbTest', CAST(0x0000B05601804050 AS DateTime), N'��������Ա', CAST(0x0000B056018072E8 AS DateTime), N'��������Ա', 0)
GO
INSERT [dbo].[Sys_Menu] ([Menu_Id], [MenuName], [Auth], [Icon], [Description], [Enable], [OrderNo], [TableName], [ParentId], [Url], [CreateDate], [Creator], [ModifyDate], [Modifier], [MenuType]) VALUES (147, N'����ֿ�', N'[{"text":"��ѯ","value":"Search"},{"text":"�½�","value":"Add"},{"text":"ɾ��","value":"Delete"},{"text":"�༭","value":"Update"}]', N'', NULL, 1, 3500, N'ReportDBTest', 0, N'/ReportDBTest', CAST(0x0000B0560180912D AS DateTime), N'��������Ա', CAST(0x0000B05601809AD5 AS DateTime), N'��������Ա', 0)
GO
SET IDENTITY_INSERT [dbo].[Sys_Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] ON 

GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (1, N'110000', N'������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (2, N'120000', N'�����', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (3, N'130000', N'�ӱ�ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (4, N'140000', N'ɽ��ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (5, N'150000', N'���ɹ�������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (6, N'210000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (7, N'220000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (8, N'230000', N'������ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (9, N'310000', N'�Ϻ���', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (10, N'320000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (11, N'330000', N'�㽭ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (12, N'340000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (13, N'350000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (14, N'360000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (15, N'370000', N'ɽ��ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (16, N'410000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (17, N'420000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (18, N'430000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (19, N'440000', N'�㶫ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (20, N'450000', N'����׳��������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (21, N'460000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (22, N'500000', N'������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (23, N'510000', N'�Ĵ�ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (24, N'520000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (25, N'530000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (26, N'540000', N'����������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (27, N'610000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (28, N'620000', N'����ʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (29, N'630000', N'�ຣʡ', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (30, N'640000', N'���Ļ���������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (31, N'650000', N'�½�ά���������', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (32, N'710000', N'̨��ʡ', N'�۰�̨')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (33, N'810000', N'����ر�������', N'�۰�̨')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (34, N'820000', N'�����ر�������', N'�۰�̨')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (35, N'thd', N'�һ���', N'����')
GO
INSERT [dbo].[Sys_Province] ([ProvinceId], [ProvinceCode], [ProvinceName], [RegionCode]) VALUES (43, N'����1', N'����1', N'�۰�̨')
GO
SET IDENTITY_INSERT [dbo].[Sys_Province] OFF
GO
INSERT [dbo].[Sys_QuartzOptions] ([Id], [TaskName], [GroupName], [CronExpression], [Method], [ApiUrl], [AuthKey], [AuthValue], [Describe], [LastRunTime], [Status], [PostData], [TimeOut], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'7d223549-c8ee-461d-80a9-e4601eeb5c0a', N'1��ִ��һ��', N'����', N'* * * * * ?	', N'get', N'http://localhost:9991/api/Sys_QuartzOptions/test', NULL, NULL, NULL, CAST(0x0000B00100BEFCFC AS DateTime), 1, NULL, 180, 1, N'��������Ա', CAST(0x0000AF09001CDB80 AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] ON 

GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (1, CAST(0x0000A94500C1EFA8 AS DateTime), N'��������Ա', NULL, N'��', 0, 1, N'���Գ�������Ա', CAST(0x0000A953011A8244 AS DateTime), 1000, 0, N'��������Ա')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (2, CAST(0x0000A94500C22590 AS DateTime), N'��������Ա', NULL, N'1', 0, 1, N'��������Ա', CAST(0x0000AE7A014CA24C AS DateTime), NULL, 1, N'���Թ���Ա')
GO
INSERT [dbo].[Sys_Role] ([Role_Id], [CreateDate], [Creator], [DeleteBy], [DeptName], [Dept_Id], [Enable], [Modifier], [ModifyDate], [OrderNo], [ParentId], [RoleName]) VALUES (4, CAST(0x0000A94500C25EFC AS DateTime), N'��������Ա', NULL, N'��  ', 0, 1, N'��������Ա', CAST(0x0000AB1D015D2414 AS DateTime), NULL, 2, N'��ϢԱ')
GO
SET IDENTITY_INSERT [dbo].[Sys_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] ON 

GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (1, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 9, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (2, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 53, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (3, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 50, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (4, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 40, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (5, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 3, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (6, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 37, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (7, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 51, N'��������Ա', CAST(0x0000AEF900143923 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (8, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 59, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (9, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 13, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (10, N'', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 44, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (11, N'', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 24, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (12, N'', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 35, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (13, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 60, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (14, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 58, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (15, N'Search,Add,Delete,Update,Export,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 68, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (16, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 52, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (17, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 65, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (18, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 62, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (19, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 63, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (20, N'', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 54, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (21, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 94, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (22, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 42, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (23, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 34, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (24, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 90, N'��������Ա', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (25, N'Search,Add,Delete,Update,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 67, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (26, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 91, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (27, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 36, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (28, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 77, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (29, N'Search,Delete,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 6, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (30, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 88, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (31, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 61, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (32, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 8, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (33, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 48, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (34, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 74, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (35, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 56, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (36, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 55, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (37, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 32, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (38, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 33, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (39, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 92, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (40, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 89, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (41, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 86, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (42, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 84, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (43, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 29, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (44, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 31, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (45, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 72, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (46, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 66, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (47, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 28, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (48, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 64, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (49, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 5, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (50, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 25, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (51, N'Search,Add,Delete,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 93, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (52, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 85, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (53, N'Search,Add,Delete,Update,Import,Export,Upload,Audit', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 75, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (54, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 87, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (55, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 57, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (56, N'Search,Import,Export,test', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 49, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (57, N'Search,Update', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 71, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (58, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 2, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (59, N'Search', CAST(0x0000ABB200DC9A0F AS DateTime), N'��������Ա', 73, N'��������Ա', CAST(0x0000ABB200DC9A0F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (60, N'Search', CAST(0x0000AEF3000F99A3 AS DateTime), N'��������Ա', 133, N'��������Ա', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (61, N'Search,Add,Delete,Update,Export', CAST(0x0000AEF3000F99A3 AS DateTime), N'��������Ա', 134, N'��������Ա', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (62, N'Search,Delete', CAST(0x0000AEF3000F99A3 AS DateTime), N'��������Ա', 135, N'��������Ա', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (63, N'Search', CAST(0x0000AEF3000F99A3 AS DateTime), N'��������Ա', 136, N'��������Ա', CAST(0x0000AEF3000F99A3 AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (64, N'Search', CAST(0x0000AEF900143923 AS DateTime), N'��������Ա', 113, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (65, N'Search', CAST(0x0000AEF900143923 AS DateTime), N'��������Ա', 115, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (66, N'Search', CAST(0x0000AF0B0126C83E AS DateTime), N'��������Ա', 118, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (67, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000AF0B0126C83E AS DateTime), N'��������Ա', 119, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (68, N'Search', CAST(0x0000AF0B0126CD90 AS DateTime), N'��������Ա', 116, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (69, N'Search', CAST(0x0000AF0B0126E1CD AS DateTime), N'��������Ա', 129, N'��������Ա', CAST(0x0000AF0B0126E1CD AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (70, N'Search', CAST(0x0000AF0B0126E9FF AS DateTime), N'��������Ա', 106, N'��������Ա', CAST(0x0000AF0B0126E9FF AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (71, N'Search', CAST(0x0000AF0B0126E9FF AS DateTime), N'��������Ա', 107, N'��������Ա', CAST(0x0000AF0B0126E9FF AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (72, N'Search', CAST(0x0000AF0B0126E9FF AS DateTime), N'��������Ա', 127, N'��������Ա', CAST(0x0000AF0B0126E9FF AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (73, N'Search,Add,Delete,Update', CAST(0x0000AF0B0126E9FF AS DateTime), N'��������Ա', 109, N'��������Ա', CAST(0x0000AF0B0126E9FF AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (74, N'Search,Delete,Export', CAST(0x0000AF0B0126E9FF AS DateTime), N'��������Ա', 110, N'��������Ա', CAST(0x0000AF0B0126E9FF AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (75, N'Search', CAST(0x0000AF0B0126FEAE AS DateTime), N'��������Ա', 137, N'��������Ա', CAST(0x0000AF0B0126FEAE AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (76, N'Search,Add,Delete,Update', CAST(0x0000AF0B0126FEAE AS DateTime), N'��������Ա', 138, N'��������Ա', CAST(0x0000AF0B0126FEAE AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (77, N'Search,Delete,Export', CAST(0x0000AF0B0126FEAE AS DateTime), N'��������Ա', 139, N'��������Ա', CAST(0x0000AF0B0126FEAE AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (78, N'Search', CAST(0x0000AF0B01276696 AS DateTime), N'zs', 129, N'zs', CAST(0x0000AF0B01276696 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (79, N'Search', CAST(0x0000AF0B01276696 AS DateTime), N'zs', 106, N'zs', CAST(0x0000AF0B01276696 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (80, N'Search', CAST(0x0000AF0B01276696 AS DateTime), N'zs', 107, N'zs', CAST(0x0000AF0B01276696 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (81, N'Search,Add,Delete,Update', CAST(0x0000AF0B01276696 AS DateTime), N'zs', 109, N'zs', CAST(0x0000AF0B01276696 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (82, N'Search,Delete,Export', CAST(0x0000AF0B01276696 AS DateTime), N'zs', 110, N'zs', CAST(0x0000AF0B01276696 AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (83, N'Search', CAST(0x0000AF9E0115E5EF AS DateTime), N'��������Ա', 113, N'��������Ա', CAST(0x0000AF9E0115E5EF AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (84, N'Search', CAST(0x0000AF9E0115E5EF AS DateTime), N'��������Ա', 116, N'��������Ա', CAST(0x0000AF9E0115E5EF AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (85, N'Search', CAST(0x0000AF9E0115E5EF AS DateTime), N'��������Ա', 118, N'��������Ա', CAST(0x0000AF9E0115E5EF AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (86, N'Search,Add,Delete,Update', CAST(0x0000AF9E0115E5EF AS DateTime), N'��������Ա', 119, N'��������Ա', CAST(0x0000AF9E0115E5EF AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (87, N'Search', CAST(0x0000AF9E0115E5EF AS DateTime), N'��������Ա', 115, N'��������Ա', CAST(0x0000AF9E0115E5EF AS DateTime), 4, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (88, N'Search', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 101, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (89, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 100, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (90, N'Search,Add,Delete,Update,Import,Export,Upload', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 96, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (91, N'Search', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 105, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (92, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 99, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (93, N'Search,Add,Delete,Update,Import,Export', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 98, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (94, N'Search', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 132, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (95, N'Search,Add,Delete,Update,Export', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 142, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (96, N'Search,Add,Delete,Update', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 97, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (97, N'Search', CAST(0x0000B00100E4E60F AS DateTime), N'��������Ա', 123, N'��������Ա', CAST(0x0000B00100E4E60F AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (98, N'Search', CAST(0x0000B00100E5498B AS DateTime), N'��������Ա', 121, N'��������Ա', CAST(0x0000B00100E5498B AS DateTime), 2, NULL)
GO
INSERT [dbo].[Sys_RoleAuth] ([Auth_Id], [AuthValue], [CreateDate], [Creator], [Menu_Id], [Modifier], [ModifyDate], [Role_Id], [User_Id]) VALUES (99, N'Search', CAST(0x0000B00100E5498B AS DateTime), N'��������Ա', 126, N'��������Ա', CAST(0x0000B00100E5498B AS DateTime), 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_RoleAuth] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] ON 

GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (20, NULL, NULL, NULL, NULL, N'��ɫID', N'Role_Id', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1420, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (21, NULL, NULL, NULL, NULL, N'����ID', N'ParentId', N'int', 70, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1410, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (22, NULL, NULL, NULL, NULL, N'��ɫ����', N'RoleName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 0, 100, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1400, N'', NULL, 1, N'text', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (23, NULL, NULL, NULL, NULL, N'����ID', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1390, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (24, NULL, NULL, NULL, NULL, N'��������', N'DeptName', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1380, N'', NULL, 1, N'text', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (25, NULL, NULL, NULL, NULL, N'����', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1370, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (26, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'��������Ա', CAST(0x0000AF9E011E4D10 AS DateTime), 1, 1360, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (27, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 4, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AF9E011E4D10 AS DateTime), 1, 1350, N'', NULL, 2, N'datetime', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (28, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 100, N'��������Ա', CAST(0x0000AF9E011E4D10 AS DateTime), 1, 1340, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (29, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, 5, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AF9E011E4D10 AS DateTime), 1, 1330, N'', NULL, 2, N'datetime', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (30, NULL, NULL, NULL, NULL, N'', N'DeleteBy', N'string', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AF9E011E4D10 AS DateTime), 1, 1320, N'', NULL, NULL, N'', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (31, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 90, N'', CAST(0x0000A8F500A8BC7C AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000AF9E011E4D0F AS DateTime), 1, 1375, N'', NULL, 1, N'select', 0, N'Sys_Role', 2)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (32, NULL, NULL, NULL, NULL, N'�ֵ�ID', N'Dic_ID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (33, NULL, NULL, NULL, NULL, N'�ֵ�����', N'DicName', N'string', 140, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1290, NULL, NULL, 1, N'textarea', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (34, NULL, NULL, NULL, NULL, N'����ID', N'ParentId', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1280, NULL, NULL, 1, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (35, NULL, NULL, NULL, NULL, N'������', N'Config', N'string', 300, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1270, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (36, NULL, NULL, NULL, 8, N'sql���', N'DbSql', N'string', 200, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8000, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1260, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (37, NULL, NULL, NULL, NULL, N'DBServer', N'DBServer', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8000, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (38, NULL, NULL, NULL, NULL, N'�����', N'OrderNo', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1240, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (39, NULL, NULL, NULL, NULL, N'�ֵ���', N'DicNo', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000AED6001BE4D9 AS DateTime), 1, 1295, NULL, NULL, 1, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (40, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 6, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 4000, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1220, NULL, NULL, NULL, N'��', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (41, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1210, NULL, NULL, 2, N'select', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (42, NULL, NULL, NULL, NULL, NULL, N'CreateID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (43, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1190, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (44, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, 2, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1180, NULL, NULL, 2, N'datetime', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (45, NULL, NULL, NULL, NULL, NULL, N'ModifyID', N'int', 90, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1170, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (46, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1160, NULL, NULL, NULL, NULL, 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (47, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A8F700E84874 AS DateTime), NULL, NULL, NULL, NULL, NULL, N'datetime', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AED6001BE4DA AS DateTime), 1, 1150, NULL, NULL, 2, N'datetime', 0, N'Sys_Dictionary', 3)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (48, NULL, NULL, NULL, NULL, N'', N'DicList_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000AEC1000A46FB AS DateTime), 1, 1140, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (49, NULL, NULL, NULL, NULL, N'����ԴID', N'Dic_ID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 1, 4, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1130, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (50, NULL, NULL, NULL, NULL, N'����ԴValue', N'DicValue', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1120, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (51, NULL, NULL, NULL, NULL, N'����ԴText', N'DicName', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1110, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (52, NULL, NULL, NULL, NULL, N'�����', N'OrderNo', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, 1, N'text', NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1100, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (53, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'selectList', NULL, 1, 1, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1090, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (54, NULL, NULL, NULL, NULL, N'�Ƿ����', N'Enable', N'byte', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'enable', NULL, 1, N'switch', NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1080, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (55, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'��', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1070, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (56, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1060, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (57, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1050, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (58, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1040, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (59, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1030, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (60, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8F700EA1758 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AEC1000A4700 AS DateTime), 1, 1020, N'', NULL, NULL, N'', 0, N'Sys_DictionaryList', 4)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (61, NULL, NULL, NULL, NULL, NULL, N'Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000AED6001BD277 AS DateTime), 1, 10000, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (62, NULL, NULL, NULL, 12, N'��־����', N'LogType', N'string', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'log', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 8888, NULL, NULL, 3, N'checkbox', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (63, NULL, NULL, NULL, NULL, N'�������', N'RequestParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (64, NULL, NULL, NULL, NULL, N'��Ӧ����', N'ResponseParameter', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7980, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (65, NULL, NULL, NULL, NULL, N'�쳣��Ϣ', N'ExceptionInfo', N'string', 70, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 20000, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7970, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (66, NULL, NULL, NULL, NULL, N'��Ӧ״̬', N'Success', N'int', 80, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'restatus', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 8700, NULL, NULL, 2, N'selectList', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (67, NULL, NULL, NULL, NULL, N'��ʼʱ��', N'BeginDate', N'DateTime', 140, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 9999, NULL, NULL, 2, N'datetime', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (68, NULL, NULL, NULL, NULL, N'����ʱ��', N'EndDate', N'DateTime', 150, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (69, NULL, NULL, NULL, NULL, N'ʱ��', N'ElapsedTime', N'int', 60, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 8600, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (70, NULL, NULL, NULL, NULL, N'�û�IP', N'UserIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7920, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (71, NULL, NULL, NULL, NULL, N'������IP', N'ServiceIP', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7910, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (72, NULL, NULL, NULL, NULL, N'���������', N'BrowserType', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7900, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (73, NULL, NULL, NULL, NULL, N'�����ַ', N'Url', N'string', 110, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 9000, NULL, NULL, 1, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (74, NULL, NULL, NULL, NULL, N'�û�ID', N'User_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7880, NULL, NULL, NULL, N'text', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (75, NULL, NULL, NULL, NULL, N'�û�����', N'UserName', N'string', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8000, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 9100, NULL, NULL, NULL, NULL, 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (76, NULL, NULL, NULL, NULL, N'��ɫID', N'Role_Id', N'int', 90, NULL, CAST(0x0000A8FC012EBF20 AS DateTime), NULL, NULL, N'roles', NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AED6001BD27D AS DateTime), 1, 7860, NULL, NULL, 2, N'select', 0, N'Sys_Log', 5)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (77, NULL, NULL, NULL, NULL, N'', N'User_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 8000, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (78, NULL, NULL, NULL, NULL, N'����', N'Dept_Id', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7840, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (79, 0, NULL, 1, NULL, N'����', N'DeptName', N'string', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 150, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7830, N'', NULL, 2, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (80, 0, 0, 1, NULL, N'��ɫ', N'Role_Id', N'int', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'tree_roles', NULL, 5, N'cascader', NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7820, N'', NULL, 2, N'select', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (81, NULL, NULL, NULL, NULL, N'����', N'RoleName', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7810, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (82, 1, 0, 1, NULL, N'�ʺ�', N'UserName', N'string', 120, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 0, 1, 100, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7945, N'', NULL, 1, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (83, 1, 0, NULL, NULL, N'����', N'UserPwd', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 0, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7790, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (84, NULL, NULL, NULL, NULL, N'����', N'UserTrueName', N'string', 120, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 2, N'text', NULL, 1, 1, NULL, 0, 0, 0, 20, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7944, N'', NULL, 1, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (85, NULL, NULL, NULL, NULL, N'��ַ', N'Address', N'string', 190, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7270, N'', NULL, 4, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (86, NULL, NULL, NULL, NULL, N'�绰', N'Mobile', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7260, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (87, NULL, NULL, NULL, NULL, N'Email', N'Email', N'string', 140, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'mail', NULL, 1, 0, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7250, N'', NULL, 4, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (88, NULL, NULL, NULL, NULL, N'', N'Tel', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 20, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7740, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (89, NULL, NULL, NULL, 12, N'��ע', N'Remark', N'string', 180, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 13, N'textarea', NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7230, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (90, NULL, NULL, NULL, NULL, N'�����', N'OrderNo', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, 0, N'text', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7220, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (91, NULL, NULL, NULL, NULL, N'�Ƿ����', N'Enable', N'byte', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'enable', NULL, 10, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7670, N'', NULL, 4, N'select', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (92, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7700, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (93, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7690, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (94, NULL, NULL, NULL, NULL, N'ע��ʱ��', N'CreateDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7780, N'', NULL, 5, N'datetime', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (95, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7670, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (96, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 1, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7660, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (97, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'datetime', NULL, 1, 0, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7650, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (98, NULL, NULL, NULL, NULL, N'���״̬', N'AuditStatus', N'int', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7640, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (99, NULL, NULL, NULL, NULL, N'�����', N'Auditor', N'string', 90, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7630, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (100, NULL, NULL, NULL, NULL, N'���ʱ��', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7620, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (101, NULL, NULL, NULL, NULL, N'����½ʱ��', N'LastLoginDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7610, N'', NULL, 5, N'datetime', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (102, NULL, NULL, NULL, NULL, N'��������޸�ʱ��', N'LastModifyPwdDate', N'DateTime', 150, N'', CAST(0x0000A8FF0113D354 AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7600, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (114, NULL, NULL, NULL, NULL, N'ͷ��', N'HeadImageUrl', N'string', 90, N'', NULL, NULL, NULL, N'', NULL, 20, N'img', NULL, 1, 1, 1, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7842, N'', NULL, NULL, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (142, NULL, NULL, NULL, NULL, N'����ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8570, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (143, NULL, NULL, NULL, 12, N'����', N'Variety', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'checkbox', NULL, 1, 1, NULL, 0, 0, 0, 20, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8560, NULL, NULL, 1, N'select', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (144, NULL, NULL, NULL, 12, N'����', N'AgeRange', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'age', NULL, 10, N'select', NULL, 1, 1, NULL, 0, 0, 0, 50, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8561, NULL, NULL, 1, N'select', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (145, NULL, NULL, NULL, 12, N'����', N'City', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'city', NULL, 15, N'select', NULL, 1, 1, NULL, 0, 0, 0, 15, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8540, NULL, NULL, 1, N'select', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (146, NULL, NULL, NULL, 12, N'�۸�', N'AvgPrice', N'decimal', 80, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 20, NULL, NULL, 1, 1, NULL, 0, 0, 0, 9, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8530, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (147, NULL, NULL, NULL, 12, N'����', N'Date', N'DateTime', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 25, N'date', NULL, 1, 1, 4, 0, 0, 0, 3, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8520, NULL, NULL, 2, N'datetime', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (148, NULL, NULL, NULL, NULL, N'Զ��', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, N'enable', NULL, NULL, N'selectList', NULL, 1, 0, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8510, NULL, NULL, 2, N'selectList', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (149, NULL, NULL, NULL, NULL, N'������Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8500, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (150, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 100, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8490, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (151, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 40, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8480, NULL, NULL, NULL, N'datetime', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (152, NULL, NULL, NULL, NULL, N'�޸���ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8470, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (153, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 90, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 0, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8460, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (154, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 140, NULL, CAST(0x0000A91900E5F524 AS DateTime), NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8450, NULL, NULL, NULL, NULL, 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (155, NULL, NULL, NULL, NULL, N'����ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8440, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (156, NULL, NULL, NULL, NULL, N'����', N'Variety', N'string', 80, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'pz', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 40, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8430, NULL, NULL, 1, N'select', 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (157, NULL, NULL, NULL, NULL, N'����', N'Age', N'string', 80, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'age', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 100, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8420, NULL, NULL, 1, N'select', 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (158, NULL, NULL, NULL, NULL, N'����', N'City', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'city', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 30, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8410, NULL, NULL, 1, N'select', 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (159, NULL, NULL, NULL, NULL, N'�۸�', N'Price', N'decimal', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, N'decimal', NULL, 1, 1, NULL, 0, 0, 0, 9, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8400, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (160, 0, NULL, NULL, NULL, N'���״̬', N'AuditStatus', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'audit', NULL, NULL, N'select', NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8382, NULL, NULL, 2, N'select', 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (161, NULL, NULL, NULL, NULL, N'�����Id', N'AuditId', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8380, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (162, NULL, NULL, NULL, NULL, N'�����', N'Auditor', N'string', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 40, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8370, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (163, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, N'enable', NULL, 2, N'switch', NULL, 1, 1, NULL, 0, 1, 1, 1, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8360, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (164, NULL, NULL, NULL, NULL, N'������Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8350, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (165, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 0, NULL, 0, 1, 1, 60, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8388, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (166, NULL, 0, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'datetime', NULL, 1, 0, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8387, NULL, NULL, 2, N'datetime', 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (167, NULL, NULL, NULL, NULL, N'�޸���ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8320, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (168, NULL, NULL, NULL, 12, N'����', N'Modifier', N'string', 100, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8310, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (169, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000A91900F7F3C8 AS DateTime), NULL, NULL, NULL, NULL, 5, N'��', NULL, 1, 1, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000B00100BE063A AS DateTime), 1, 8300, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (170, NULL, NULL, NULL, NULL, N'���ʱ��', N'AuditDate', N'DateTime', 110, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, N'��������Ա', CAST(0x0000B00100BE0639 AS DateTime), 1, 8381, NULL, NULL, NULL, NULL, 0, N'App_ReportPrice', 16)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (193, NULL, NULL, NULL, NULL, N'����ID', N'Id', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8060, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (194, NULL, NULL, NULL, NULL, N'����', N'Name', N'string', 120, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 50, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8050, NULL, NULL, 1, N'text', 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (195, NULL, NULL, NULL, NULL, N'�绰', N'PhoneNo', N'string', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 50, N'phone', NULL, 1, 1, NULL, 0, 0, 0, 15, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8040, NULL, NULL, 1, N'text', 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (196, NULL, NULL, NULL, NULL, N'����', N'Quantity', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8030, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (197, NULL, NULL, NULL, NULL, N'��������', N'CowType', N'string', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, N'nav', NULL, 30, N'select', NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8020, NULL, NULL, 2, N'selectList', 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (198, NULL, NULL, NULL, NULL, N'����', N'Describe', N'string', 190, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, 60, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 500, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8010, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (199, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8000, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (200, NULL, NULL, NULL, NULL, N'������Id', N'CreateID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7990, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (201, NULL, NULL, NULL, NULL, N'�ύ��', N'Creator', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7980, NULL, NULL, 2, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (202, NULL, NULL, NULL, NULL, N'�ύʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7970, NULL, NULL, 2, N'datetime', 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (203, NULL, NULL, NULL, NULL, N'�޸���ID', N'ModifyID', N'int', 90, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7960, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (204, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7950, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (205, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A91900FA9A4C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 7940, NULL, NULL, NULL, NULL, 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (206, 1, 1, 0, NULL, N'����ID', N'ExpertId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7930, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (207, NULL, NULL, NULL, NULL, N'����', N'ExpertName', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 1, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7920, N'', NULL, 1, N'like', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (208, NULL, NULL, NULL, NULL, N'����', N'ReallyName', N'string', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 2, N'', NULL, 1, 1, NULL, 0, 1, 0, 20, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7910, N'', NULL, 1, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (209, NULL, NULL, NULL, NULL, N'���֤��', N'IDNumber', N'string', 200, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 18, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7900, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (210, NULL, NULL, NULL, NULL, N'ͷ��', N'HeadImageUrl', N'string', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 10, N'img', NULL, 1, 1, 1, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7920, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (211, NULL, NULL, NULL, NULL, N'ѧ��', N'Education', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7880, N'', NULL, NULL, N'text', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (212, NULL, NULL, NULL, NULL, N'ְҵ', N'Professional', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7870, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (213, NULL, NULL, NULL, NULL, N'���ڹ�˾', N'Company', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7860, N'', NULL, NULL, N'��', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (214, NULL, NULL, NULL, NULL, N'����', N'City', N'string', 100, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'city', NULL, 5, N'select', NULL, 1, 1, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7850, N'', NULL, NULL, N'selectList', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (215, NULL, NULL, NULL, NULL, N'�ó�', N'SpecialField', N'string', 120, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, NULL, N'textarea', NULL, 0, 1, NULL, 0, 1, 0, 800, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7840, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (216, NULL, NULL, NULL, 12, N'���', N'Resume', N'string', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 7, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7830, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (217, NULL, NULL, NULL, NULL, N'���״̬', N'AuditStatus', N'int', 100, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'audit', NULL, 0, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7919, N'', NULL, 1, N'selectList', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (218, NULL, NULL, NULL, NULL, N'�����Id', N'AuditId', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7810, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (219, NULL, NULL, NULL, NULL, N'�����', N'Auditor', N'string', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 20, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7919, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (220, NULL, NULL, NULL, NULL, N'���ʱ��', N'AuditDate', N'DateTime', 150, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'datetime', NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7790, N'', NULL, NULL, N'datetime', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (221, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 90, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'enable', NULL, 3, N'select', NULL, 1, 1, NULL, 0, 0, 0, 1, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7919, N'', NULL, 1, N'select', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (222, NULL, NULL, NULL, NULL, N'������Id', N'CreateID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7770, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (223, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7760, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (224, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7750, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (225, NULL, NULL, NULL, NULL, N'�޸���ID', N'ModifyID', N'int', 80, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7740, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (226, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 100, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7730, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (227, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 130, N'', CAST(0x0000A91900FF297C AS DateTime), NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7720, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (308, NULL, NULL, NULL, NULL, N'����ID', N'Id', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 4, N'��������Ա', CAST(0x0000AB3A00BB1339 AS DateTime), 1, 6910, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (309, NULL, NULL, NULL, 12, N'����', N'Title', N'string', 250, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6900, NULL, NULL, 1, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (310, NULL, NULL, NULL, NULL, N'������', N'Author', N'string', 120, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 100, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6890, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (311, 0, NULL, NULL, NULL, N'����ʱ��', N'ReleaseDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6880, NULL, NULL, 3, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (312, NULL, NULL, NULL, 12, N'����ͼƬ', N'ImageUrl', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 9, NULL, NULL, 1, 1, 1, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6870, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (313, NULL, NULL, NULL, NULL, N'ͼƬ(��ͼ)', N'BigImageUrls', N'string', 220, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1000, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6860, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (314, NULL, NULL, NULL, 12, N'���ŵ�ַ', N'DetailUrl', N'string', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 8, NULL, NULL, 1, 1, NULL, 0, 1, 0, 400, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6850, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (315, NULL, NULL, NULL, NULL, N'�������', N'ViewCount', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6840, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (316, NULL, NULL, NULL, NULL, N'��������', N'NewsType', N'int', 110, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'news', 1, 3, N'select', NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6830, NULL, NULL, 1, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (317, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'int', 90, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, N'enable', NULL, 7, N'select', NULL, 1, 1, NULL, 0, 1, 0, 2, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6820, NULL, NULL, 3, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (318, NULL, NULL, NULL, NULL, N'������Id', N'CreateID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6810, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (319, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 60, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6800, NULL, NULL, 3, N'��', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (320, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 6, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6790, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (321, NULL, NULL, NULL, NULL, N'�޸���ID', N'ModifyID', N'int', 80, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6780, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (322, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6770, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (323, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000A919010AF694 AS DateTime), NULL, NULL, NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6760, NULL, NULL, NULL, N'datetime', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (324, NULL, NULL, NULL, 12, N'��������', N'Content', N'string', 300, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 1, 0, NULL, NULL, 1, 0, 0, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6896, NULL, NULL, NULL, NULL, NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (429, 1, 0, NULL, NULL, N'�ֻ���', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'', NULL, 1, 0, NULL, NULL, 1, 0, 11, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7760, N'', NULL, 3, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (431, NULL, NULL, NULL, NULL, N'Token', N'Token', N'string', 180, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7810, N'', NULL, 2, N'', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (446, NULL, NULL, NULL, 12, N'����', N'IsTop', N'int', 90, NULL, NULL, NULL, NULL, N'enable', NULL, 30, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'��������Ա', CAST(0x0000B00100B219BB AS DateTime), 1, 8515, NULL, NULL, 2, N'select', 0, N'App_TransactionAvgPrice', 15)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (457, NULL, NULL, NULL, NULL, N'�Ƿ����', N'TransactionType', N'int', 120, NULL, NULL, NULL, NULL, N'enable', NULL, 20, N'select', NULL, 1, 1, NULL, 0, 0, 0, 8, N'��������Ա', CAST(0x0000B00100B94257 AS DateTime), 1, 8021, NULL, NULL, 1, N'select', 0, N'App_Transaction', 19)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (506, NULL, NULL, NULL, NULL, N'�Ա�', N'Gender', N'int', 80, N'', NULL, NULL, NULL, N'gender', NULL, 12, N'select', NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7843, N'', NULL, 1, N'select', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (523, NULL, NULL, NULL, NULL, N'�绰', N'PhoneNo', N'string', 150, N'', NULL, NULL, NULL, N'', NULL, NULL, N'phone', NULL, 1, 0, NULL, NULL, 1, 0, 11, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7900, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (550, NULL, NULL, NULL, NULL, N'�������ʺ�Id', N'User_Id', N'int', 90, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 8, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7921, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (551, NULL, NULL, NULL, NULL, N'�ʺ�', N'UserName', N'string', 120, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 30, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7920, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (552, NULL, NULL, NULL, NULL, N'������', N'UserTrueName', N'string', 100, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 1, 0, NULL, NULL, 1, 0, 50, N'��������Ա', CAST(0x0000B00100B508A2 AS DateTime), 1, 7920, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (603, NULL, NULL, NULL, NULL, N'����֤��', N' Certificate', N'string', 200, N'', NULL, NULL, NULL, N'', NULL, 0, N'', NULL, 0, 0, 1, 0, 1, 0, 2500, N'��������Ա', CAST(0x0000B00100B508A3 AS DateTime), 1, 7828, N'', NULL, NULL, N'', 0, N'App_Expert', 20)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (654, NULL, NULL, NULL, NULL, N'����', N'AppType', N'int', 150, N'', NULL, NULL, NULL, N'ut', NULL, 0, N'', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7809, N'', NULL, 3, N'selectList', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (659, NULL, NULL, NULL, NULL, N'�ֻ��û�', N'IsRegregisterPhone', N'int', 120, N'', NULL, NULL, NULL, N'isphone', NULL, NULL, N'select', NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7771, N'', NULL, 3, N'select', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (663, NULL, NULL, NULL, NULL, N'�Ƿ�����Ƽ�', N'DailyRecommend', N'int', 120, NULL, NULL, NULL, NULL, N'dr', NULL, 5, N'select', NULL, 1, 1, NULL, NULL, 0, 0, 2, N'��������Ա', CAST(0x0000AB3A00BB135B AS DateTime), 1, 6825, NULL, NULL, 1, N'select', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (664, NULL, NULL, NULL, NULL, N'�Ƽ�����', N'OrderNo', N'int', 120, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 4, N'��������Ա', CAST(0x0000AB3A00BB135C AS DateTime), 1, 6822, NULL, NULL, NULL, N'��', NULL, N'App_News', 28)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (714, NULL, NULL, NULL, NULL, N'Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'��������Ա', CAST(0x0000AB3400DC1657 AS DateTime), 1, 2850, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (715, NULL, NULL, NULL, NULL, N'��������', N'OrderType', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', N'ordertype', 1, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2840, NULL, 1, 1, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (716, NULL, NULL, NULL, NULL, N'�˵���', N'TranNo', N'string', 150, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 1, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2830, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (717, NULL, NULL, NULL, NULL, N'���۶�����', N'SellNo', N'string', 200, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 2, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2820, NULL, NULL, 1, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (718, NULL, NULL, NULL, NULL, N'��������', N'Qty', N'int', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 2, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2810, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (719, NULL, NULL, NULL, 8, N'��ע', N'Remark', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 1000, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2800, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (720, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2790, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (721, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 255, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2780, NULL, NULL, 3, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (722, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 3, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2770, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (723, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2760, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (724, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 4, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 1, 255, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2750, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (725, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB1011F8B54 AS DateTime), 1, N'��������Ա', NULL, 4, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2740, NULL, NULL, 3, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (726, NULL, NULL, NULL, NULL, N'', N'OrderList_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 0, 36, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2730, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (727, NULL, NULL, NULL, NULL, N'����Id', N'Order_Id', N'string', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, 1, 36, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2720, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (728, NULL, NULL, NULL, NULL, N'��Ʒ����', N'ProductName', N'string', 150, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', N'pn', NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2710, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (729, NULL, NULL, NULL, NULL, N'����', N'MO', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 255, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2700, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (730, NULL, NULL, NULL, NULL, N'����', N'Qty', N'int', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, N'select', NULL, 1, 1, NULL, 0, 0, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2690, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (731, NULL, NULL, NULL, NULL, N'����', N'Weight', N'decimal', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2680, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (732, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 120, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2670, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (733, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2660, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (734, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2650, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (735, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2640, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (736, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2630, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (737, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 100, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2620, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (738, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AAB7009929C4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AACD00F5CF58 AS DateTime), 1, 2610, NULL, NULL, NULL, NULL, NULL, N'SellOrderList', 78)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (739, NULL, NULL, NULL, NULL, N'���ʱ��', N'AuditDate', N'DateTime', 120, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2805, NULL, NULL, 2, N'datetime', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (740, NULL, NULL, NULL, NULL, N'�����', N'Auditor', N'string', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 0, 100, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2803, NULL, NULL, 2, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (741, NULL, NULL, NULL, NULL, N'�����Id', N'AuditId', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1672 AS DateTime), 1, 2801, NULL, NULL, NULL, NULL, NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (742, NULL, NULL, NULL, NULL, N'���״̬', N'AuditStatus', N'int', NULL, NULL, CAST(0x0000AAB7009D3CBC AS DateTime), 1, N'��������Ա', N'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, 0, NULL, N'��������Ա', CAST(0x0000AB3400DC1671 AS DateTime), 1, 2808, NULL, NULL, 2, N'select', NULL, N'SellOrder', 77)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (743, NULL, NULL, NULL, NULL, N'', N'Id', N'string', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, 5, 1, NULL, NULL, 1, 0, NULL, 1, 0, 1, 36, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2560, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (744, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 120, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, 1, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2550, NULL, NULL, 1, N'datetime', NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (745, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2540, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (746, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, 2, 3, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2530, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (747, NULL, NULL, NULL, NULL, N'����', N'Describe', N'string', 180, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 250, N'��������Ա', CAST(0x0000AB1B015248D5 AS DateTime), 1, 3490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (748, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2510, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (749, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 90, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, 1, 4, NULL, NULL, 1, 1, NULL, 0, 1, 1, NULL, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2500, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (750, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, NULL, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 2490, NULL, NULL, NULL, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (751, NULL, NULL, NULL, NULL, N'����', N'Name', N'string', 100, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 1, 50, N'��������Ա', CAST(0x0000AB1B015248CE AS DateTime), 1, 3500, NULL, NULL, 1, N'like', NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (752, NULL, NULL, NULL, NULL, N'�绰', N'PhoneNo', N'string', 130, NULL, CAST(0x0000AACC01040604 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 0, 1, 15, N'��������Ա', CAST(0x0000AB1B015248D8 AS DateTime), 1, 3470, NULL, NULL, 1, NULL, NULL, N'App_Appointment', 80)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (753, NULL, NULL, NULL, NULL, N'', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (754, NULL, NULL, NULL, NULL, N'������', N'Title', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, 0, 1, N'textarea', NULL, 1, 1, NULL, 0, 0, 0, 1000, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 1100, NULL, NULL, 1, N'like', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (755, NULL, NULL, NULL, NULL, N'���������', N'DaraggeOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (756, NULL, NULL, NULL, NULL, N'������', N'FormOptions', N'string', 140, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (757, NULL, NULL, NULL, NULL, N'������', N'FormConfig', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (758, NULL, NULL, NULL, NULL, N'���ֶ�', N'FormFields', N'string', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (760, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (761, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (762, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 810, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (763, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (764, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 600, NULL, NULL, 1, N'datetime', 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (765, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D017FCFDC AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AE0D0186211B AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (766, NULL, NULL, NULL, NULL, N'�������', N'TableConfig', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0D0186211A AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'FormDesignOptions', 82)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (767, NULL, NULL, NULL, NULL, N'', N'FormCollectionId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000AE0E017B18FE AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (768, NULL, NULL, NULL, NULL, N'��ID', N'FormId', N'guid', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (769, NULL, NULL, NULL, NULL, N'����', N'Title', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 900, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (770, NULL, NULL, NULL, NULL, N'������', N'FormData', N'string', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (771, NULL, NULL, NULL, NULL, N'�ύʱ��', N'CreateDate', N'DateTime', 145, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 800, NULL, NULL, 1, N'datetime', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (772, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (773, NULL, NULL, NULL, NULL, N'�ύ��', N'Creator', N'string', 100, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 810, NULL, NULL, 1, N'like', 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (774, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 60, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (775, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (776, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AE0D01818174 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AE0E017B18FF AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'FormCollectionObject', 83)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (777, NULL, NULL, NULL, NULL, N'', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (778, NULL, NULL, NULL, NULL, N'��������', N'WorkName', N'string', 140, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1150, NULL, NULL, 1, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (779, NULL, NULL, NULL, NULL, N'����', N'WorkTable', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1100, NULL, NULL, 1, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (780, NULL, NULL, NULL, NULL, N'���ܲ˵�', N'WorkTableName', N'string', 120, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (781, NULL, NULL, NULL, NULL, N'�ڵ���Ϣ', N'NodeConfig', N'string', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (782, NULL, NULL, NULL, NULL, N'��������', N'LineConfig', N'string', 110, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (783, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 130, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (784, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 740, NULL, NULL, 1, N'datetime', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (785, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (786, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 750, NULL, NULL, NULL, N'', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (787, NULL, NULL, NULL, NULL, N'�Ƿ�����', N'Enable', N'byte', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', N'enable', NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1010, NULL, NULL, NULL, N'select', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (788, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 100, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (789, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 160, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 600, NULL, NULL, NULL, N'datetime', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (790, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEDD0008A228 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 660, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (809, NULL, NULL, NULL, NULL, N'', N'WorkStepFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B0010112B969 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (810, NULL, NULL, NULL, NULL, N'��������id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (811, NULL, NULL, NULL, NULL, N'���̽ڵ�Id', N'StepId', N'string', 120, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (812, NULL, NULL, NULL, NULL, N'�ڵ�����', N'StepName', N'string', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (813, NULL, NULL, NULL, NULL, N'�ڵ�����(1=���û�����,2=����ɫ����)', N'StepType', N'int', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (814, NULL, NULL, NULL, NULL, N'�����û�id���ɫid', N'StepValue', N'string', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (815, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 220, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (816, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (817, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (818, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (819, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (820, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (821, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (822, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE301765E48 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (823, NULL, NULL, NULL, NULL, N'����˳��', N'OrderId', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 880, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (824, NULL, NULL, NULL, NULL, N'', N'WorkFlowTable_Id', N'guid', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B00100D62CC6 AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (825, NULL, NULL, NULL, NULL, N'����id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (826, NULL, NULL, NULL, NULL, N'��������', N'WorkName', N'string', 130, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 1150, NULL, 2, 1, N'like', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (827, NULL, NULL, NULL, NULL, N'������id', N'WorkTableKey', N'string', 180, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (828, NULL, NULL, NULL, NULL, N'����', N'WorkTable', N'string', 100, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (829, NULL, NULL, NULL, NULL, N'ҵ������', N'WorkTableName', N'string', 120, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 1000, NULL, 3, 1, N'like', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (830, NULL, NULL, NULL, NULL, N'����', N'CurrentOrderId', N'int', 90, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (831, NULL, NULL, NULL, NULL, N'����״̬', N'AuditStatus', N'int', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', N'audit', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 900, NULL, 1, 1, N'select', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (832, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 850, NULL, 4, 1, N'datetime', 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (833, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (834, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 100, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 860, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (835, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (836, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (837, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (838, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE400044D90 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (839, NULL, NULL, NULL, NULL, N'', N'Sys_WorkFlowTableStep_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B0010112CC3B AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (840, NULL, NULL, NULL, NULL, N'����id', N'WorkFlowTable_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1250, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (841, NULL, NULL, NULL, NULL, N'����id', N'WorkFlow_Id', N'guid', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (842, NULL, NULL, NULL, NULL, N'�ڵ�id', N'StepId', N'string', 120, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (843, NULL, NULL, NULL, NULL, N'������', N'StepName', N'string', 180, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (844, NULL, NULL, NULL, NULL, N'��������', N'StepType', N'int', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (845, NULL, NULL, NULL, NULL, N'�ڵ�����(1=���û�����,2=����ɫ����)', N'StepValue', N'string', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (846, NULL, NULL, NULL, NULL, N'����˳��', N'OrderId', N'int', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (847, NULL, NULL, NULL, NULL, N'', N'Remark', N'string', 220, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (848, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (849, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (850, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (851, NULL, NULL, NULL, NULL, N'', N'Enable', N'byte', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (852, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (853, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (854, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AEE40005DAD4 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (855, NULL, NULL, NULL, NULL, N'�����id', N'AuditId', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (856, NULL, NULL, NULL, NULL, N'�����', N'Auditor', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (857, NULL, NULL, NULL, NULL, N'���״̬', N'AuditStatus', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (858, NULL, NULL, NULL, NULL, N'���ʱ��', N'AuditDate', N'DateTime', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (859, NULL, NULL, NULL, NULL, N'', N'Id', N'guid', 110, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000AF09001C3846 AS DateTime), 1, 1300, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (860, NULL, NULL, NULL, NULL, N'��������', N'TaskName', N'string', 120, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1250, NULL, NULL, 1, N'like', 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (861, NULL, NULL, NULL, NULL, N'�������', N'GroupName', N'string', 100, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, 0, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 500, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (862, NULL, NULL, NULL, NULL, N'Corn���ʽ', N'CronExpression', N'string', 120, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, 0, 2, NULL, NULL, 1, 1, NULL, 0, 0, 0, 100, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (863, NULL, NULL, NULL, 12, N'Url��ַ', N'ApiUrl', N'string', 150, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 7, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (864, NULL, NULL, NULL, NULL, N'AuthKey', N'AuthKey', N'string', 100, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (865, NULL, NULL, NULL, NULL, N'AuthValue', N'AuthValue', N'string', 100, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 6, NULL, NULL, 1, 0, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (866, NULL, NULL, NULL, NULL, N'����', N'Describe', N'string', 120, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 5, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (867, NULL, NULL, NULL, NULL, N'���ִ��ִ��', N'LastRunTime', N'DateTime', 150, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 900, NULL, NULL, 1, N'datetime', 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (868, NULL, NULL, NULL, NULL, N'����״̬', N'Status', N'int', 90, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', N'', NULL, 0, N'', NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (869, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (870, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 130, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 30, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (871, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, 10, NULL, NULL, 1, 0, NULL, 0, 1, 1, 8, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 700, NULL, NULL, 1, N'datetime', 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (872, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (873, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (874, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AF070033F270 AS DateTime), 1, N'��������Ա', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 550, NULL, NULL, 1, N'datetime', 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (889, NULL, NULL, NULL, NULL, N'', N'LogId', N'guid', 110, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000AF070188A1C4 AS DateTime), 1, 1200, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (890, NULL, NULL, NULL, NULL, N'����id', N'Id', N'guid', 110, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (891, NULL, NULL, NULL, NULL, N'��������', N'TaskName', N'string', 120, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 1100, NULL, NULL, 1, N'like', 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (892, NULL, NULL, NULL, NULL, N'��ʱ(��)', N'ElapsedTime', N'int', 90, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 1050, NULL, NULL, 1, N'range', 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (893, NULL, NULL, NULL, NULL, N'��ʼʱ��', N'StratDate', N'DateTime', 150, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 1000, NULL, NULL, 1, N'datetime', 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (894, NULL, NULL, NULL, NULL, N'����ʱ��', N'EndDate', N'DateTime', 150, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (895, NULL, NULL, NULL, NULL, N'�Ƿ�ɹ�', N'Result', N'int', 100, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', N'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 900, NULL, NULL, 1, N'select', 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (896, NULL, NULL, NULL, NULL, N'��������', N'ResponseContent', N'string', 250, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (897, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 80, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (898, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 130, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (899, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 110, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (900, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 80, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (901, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 130, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (902, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 110, NULL, CAST(0x0000AF0700358464 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (904, NULL, NULL, NULL, 12, N'post����', N'PostData', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 8, N'textarea', NULL, 1, 0, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1060, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (905, NULL, NULL, NULL, NULL, N'����ʽ', N'Method', N'string', 110, NULL, NULL, NULL, NULL, N'����ʽ', NULL, 2, N'select', NULL, 1, 1, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1160, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (906, NULL, NULL, NULL, NULL, N'��ʱʱ��(��)', N'TimeOut', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AF09001C3852 AS DateTime), 1, 1152, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzOptions', 91)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (907, NULL, NULL, NULL, NULL, N'�쳣��Ϣ', N'ErrorMsg', N'string', 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, N'��������Ա', CAST(0x0000AF070188A1C8 AS DateTime), 1, 840, NULL, NULL, NULL, NULL, 0, N'Sys_QuartzLog', 93)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (908, NULL, NULL, NULL, NULL, N'��һ�������ڵ�', N'NextStepIds', N'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (909, NULL, NULL, NULL, NULL, N'�����ڵ�', N'ParentId', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (911, NULL, NULL, NULL, NULL, N'���δͨ��(������һ�ڵ�,�������¿�ʼ,���̽���)', N'AuditRefuse', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (912, NULL, NULL, NULL, NULL, N'����(������һ�ڵ�,�������¿�ʼ,���̽���)', N'AuditBack', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (913, NULL, NULL, NULL, NULL, N'������ʽ(���û�ǩ)', N'AuditMethod', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (914, NULL, NULL, NULL, NULL, N'��˺����ʼ�֪ͨ', N'SendMail', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (915, NULL, NULL, NULL, NULL, N'�������', N'Filters', N'string', 220, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4000, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (918, NULL, NULL, NULL, NULL, N'����������Ƿ���Ա༭', N'AuditingEdit', N'int', 80, NULL, NULL, NULL, NULL, N'enable', NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1010, NULL, NULL, 1, N'select', 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (919, NULL, NULL, NULL, NULL, N'�ڵ�����(start��node��end))', N'StepAttrType', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (920, NULL, NULL, NULL, NULL, N'�ڵ�����(start��node��end))', N'StepAttrType', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (921, NULL, NULL, NULL, NULL, N'��ǰ��˽ڵ�ID', N'CurrentStepId', N'string', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 960, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (922, NULL, NULL, NULL, NULL, N'', N'ParentId', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (924, NULL, NULL, NULL, NULL, N'', N'NextStepId', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (925, NULL, NULL, NULL, NULL, N'', N'Id', N'guid', 110, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000AFF000C42448 AS DateTime), 1, 1100, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (926, NULL, NULL, NULL, NULL, N'', N'WorkFlowTable_Id', N'guid', 110, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 1050, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (927, NULL, NULL, NULL, NULL, N'', N'WorkFlowTableStep_Id', N'guid', 110, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (928, NULL, NULL, NULL, NULL, N'�ڵ�id', N'StepId', N'string', 120, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (929, NULL, NULL, NULL, NULL, N'�ڵ�����', N'StepName', N'string', 180, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 200, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (930, NULL, NULL, NULL, NULL, N'', N'AuditId', N'int', 110, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (931, NULL, NULL, NULL, NULL, N'', N'Auditor', N'string', 120, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 100, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (932, NULL, NULL, NULL, NULL, N'', N'AuditStatus', N'int', 110, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (933, NULL, NULL, NULL, NULL, N'', N'AuditResult', N'string', 220, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (934, NULL, NULL, NULL, NULL, N'', N'AuditDate', N'DateTime', 150, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (935, NULL, NULL, NULL, NULL, N'', N'Remark', N'string', 220, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 1000, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (936, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AFF000C3A5F0 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000AFF000C42449 AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableAuditLog', 94)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (937, NULL, NULL, NULL, NULL, N'', N'DepartmentId', N'guid', 110, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B00100A259EE AS DateTime), 1, 1150, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (938, NULL, NULL, NULL, NULL, N'��֯����', N'DepartmentName', N'string', 180, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 1, NULL, NULL, 1, 1, NULL, 0, 0, 0, 200, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 1100, NULL, NULL, 1, N'like', 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (939, NULL, NULL, NULL, NULL, N'��֯���', N'DepartmentCode', N'string', 90, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 2, NULL, NULL, 1, 1, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 1050, NULL, NULL, 1, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (940, NULL, NULL, NULL, NULL, N'�ϼ���֯', N'ParentId', N'guid', 110, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', N'��֯����', NULL, 3, N'cascader', NULL, 1, 0, NULL, 0, 1, 0, 16, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (941, NULL, NULL, NULL, NULL, N'��֯����', N'DepartmentType', N'string', 110, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 50, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (942, NULL, NULL, NULL, NULL, N'�Ƿ����', N'Enable', N'int', 110, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (943, NULL, NULL, NULL, NULL, N'��ע', N'Remark', N'string', 100, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 5, N'textarea', NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (944, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 100, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (945, NULL, NULL, NULL, NULL, N'������', N'Creator', N'string', 90, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 750, NULL, NULL, 1, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (946, NULL, NULL, NULL, NULL, N'����ʱ��', N'CreateDate', N'DateTime', 145, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 700, NULL, NULL, 1, N'datetime', 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (947, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 100, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (948, NULL, NULL, NULL, NULL, N'�޸���', N'Modifier', N'string', 90, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 30, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (949, NULL, NULL, NULL, NULL, N'�޸�ʱ��', N'ModifyDate', N'DateTime', 140, NULL, CAST(0x0000AFFC00227964 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100A259F4 AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_Department', 95)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (950, NULL, NULL, NULL, NULL, N'', N'Id', N'guid', 110, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 1, 0, 1, 16, N'��������Ա', CAST(0x0000B00100A728FB AS DateTime), 1, 1000, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (951, NULL, NULL, NULL, NULL, N'', N'UserId', N'int', 110, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 950, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (952, NULL, NULL, NULL, NULL, N'', N'DepartmentId', N'guid', 110, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 16, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 900, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (953, NULL, NULL, NULL, NULL, N'', N'Enable', N'int', 110, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, 0, 0, 4, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 850, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (954, NULL, NULL, NULL, NULL, N'', N'CreateID', N'int', 100, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 800, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (955, NULL, NULL, NULL, NULL, N'', N'Creator', N'string', 100, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 750, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (956, NULL, NULL, NULL, NULL, N'', N'CreateDate', N'DateTime', 150, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 700, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (957, NULL, NULL, NULL, NULL, N'', N'ModifyID', N'int', 100, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 0, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 650, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (958, NULL, NULL, NULL, NULL, N'', N'Modifier', N'string', 100, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 255, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 600, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (959, NULL, NULL, NULL, NULL, N'', N'ModifyDate', N'DateTime', 150, NULL, CAST(0x0000AFFC00231540 AS DateTime), 1, N'��������Ա', NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 8, N'��������Ա', CAST(0x0000B00100A72901 AS DateTime), 1, 550, NULL, NULL, NULL, NULL, 0, N'Sys_UserDepartment', 96)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (960, NULL, NULL, NULL, 12, N'��֯����', N'DeptIds', N'string', 140, NULL, NULL, NULL, NULL, N'��֯����', NULL, 6, N'treeSelect', NULL, 1, 0, NULL, 0, 1, 0, 2000, N'��������Ա', CAST(0x0000B00100AA4FD0 AS DateTime), 1, 7800, NULL, NULL, NULL, N'cascader', 0, N'Sys_User', 6)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (961, NULL, NULL, NULL, NULL, N'��ǰ��˽ڵ�����', N'StepName', N'string', 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 500, N'��������Ա', CAST(0x0000B00100D62CCA AS DateTime), 1, 955, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTable', 88)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (962, NULL, NULL, NULL, NULL, N'Ȩ��(��ͬ����Ȩ�ش������ƥ��)', N'Weight', N'int', 100, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B00101195932 AS DateTime), 1, 1011, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlow', 85)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (963, NULL, NULL, NULL, NULL, N'Ȩ��(��ͬ����Ȩ�ش������ƥ��)', N'Weight', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112B96A AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowStep', 87)
GO
INSERT [dbo].[Sys_TableColumn] ([ColumnId], [ApiInPut], [ApiIsNull], [ApiOutPut], [ColSize], [ColumnCNName], [ColumnName], [ColumnType], [ColumnWidth], [Columnformat], [CreateDate], [CreateID], [Creator], [DropNo], [EditColNo], [EditRowNo], [EditType], [Enable], [IsColumnData], [IsDisplay], [IsImage], [IsKey], [IsNull], [IsReadDataset], [Maxlength], [Modifier], [ModifyDate], [ModifyID], [OrderNo], [Script], [SearchColNo], [SearchRowNo], [SearchType], [Sortable], [TableName], [Table_Id]) VALUES (964, NULL, NULL, NULL, NULL, N'', N'Weight', N'int', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 4, N'��������Ա', CAST(0x0000B0010112CC3C AS DateTime), 1, 0, NULL, NULL, NULL, NULL, 0, N'Sys_WorkFlowTableStep', 89)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableColumn] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] ON 

GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (2, N'��ɫ����', N'��ɫ����', NULL, NULL, NULL, NULL, NULL, 0, N'RoleName', N'System', N'VOL.System', NULL, 8, NULL, NULL, N'Sys_Role', N'Sys_Role', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (3, N'�ֵ�����', N'�ֵ�����', NULL, NULL, N'�ֵ���ϸ', N'Sys_DictionaryList', NULL, 0, N'DicName', N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_Dictionary', N'Sys_Dictionary', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (4, N'�ֵ���ϸ', N'�ֵ���ϸ', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 11, NULL, NULL, N'Sys_DictionaryList', N'Sys_DictionaryList', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (5, N'ϵͳ��־', N'ϵͳ��־', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 10, NULL, NULL, N'Sys_Log', N'Sys_Log', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (6, NULL, N'�û�����', NULL, NULL, NULL, NULL, NULL, 0, N'UserName', N'System', N'VOL.System', NULL, 8, NULL, N'', N'Sys_User', N'Sys_User', N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (8, N'�û�������Ϣ', N'�û�����', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', 200, 0, NULL, NULL, N'��', N'��', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (10, N'��־����', N'��־����', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'170', N'��־����', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (11, N'���ù���', N'���ù���', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'System', N'VOL.System', NULL, 0, NULL, N'250', N'���ù���', N'���ù���', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (15, N'�ɽ�����', N'�Զ���������', NULL, NULL, NULL, NULL, NULL, 0, N'AvgPrice', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_TransactionAvgPrice', N'App_TransactionAvgPrice', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (16, NULL, N'�Զ���ʵ��һ�Զ�', NULL, NULL, NULL, NULL, NULL, 0, N'Price', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_ReportPrice', N'App_ReportPrice', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (19, NULL, N'���뵼��', NULL, NULL, NULL, NULL, NULL, 0, N'PhoneNo', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Transaction', N'App_Transaction', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (20, NULL, N'����ͼƬ֧��', NULL, NULL, NULL, NULL, NULL, 0, N'ExpertName', N'App', N'VOL.AppManager', NULL, 79, NULL, NULL, N'App_Expert', N'App_Expert', N'HeadImageUrl', 1)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (27, N' ��Ѷ', N'��̬ҳ�淢��', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'News', N'VOL.AppManager', NULL, 0, NULL, NULL, N' ��Ѷ', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (28, NULL, N'�����б�', NULL, NULL, NULL, NULL, NULL, 0, N'Title', N'News', N'VOL.AppManager', NULL, 27, N'Content', N'CreateDate', N'App_News', N'App_News', N'ImageUrl', 3)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (76, N'��������', N'��������ʾ��', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'��������', N'VOL.Order', NULL, 0, NULL, NULL, N'��������', N'��������', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (77, N'���۶���', N'���۶���', NULL, NULL, N'������ϸ', N'SellOrderList', NULL, 0, N'TranNo', N'Sell', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrder', N'SellOrder', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (78, N'������ϸ', N'������ϸ', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'Order', N'VOL.Order', NULL, 76, NULL, N'CreateDate', N'SellOrderList', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (79, N'Table ��������', N'Table+��������', NULL, NULL, NULL, NULL, NULL, 0, NULL, N'Order', N'VOL.Order', NULL, 0, NULL, NULL, N'Table+��������', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (80, N'��������ѯ', N'������+�༭ֻ��', NULL, NULL, NULL, NULL, NULL, 0, N'Name', N'Appointment', N'VOL.Order', NULL, 79, NULL, N'CreateDate', N'App_Appointment', N'App_Appointment', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (81, N'�����', N'�����', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'form', N'VOL.System', NULL, 0, NULL, NULL, N'0', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (82, N'�����', N'�����', NULL, NULL, NULL, NULL, NULL, 1, N'Title', N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormDesignOptions', N'FormDesignOptions', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (83, N'���ݲɼ�', N'���ݲɼ�', NULL, NULL, NULL, N'', NULL, 1, NULL, N'form', N'VOL.System', NULL, 81, NULL, N'CreateDate', N'FormCollectionObject', N'FormCollectionObject', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (84, N'��������', N'��������', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'flow', N'VOL.System', NULL, 0, NULL, NULL, N'��������', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (85, N'��������', N'������������', NULL, NULL, N'��������', N'Sys_WorkFlowStep', NULL, 1, N'WorkName', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlow', N'Sys_WorkFlow', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (87, N'�����ڵ�', N'�����ڵ�����', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowStep', N'Sys_WorkFlowStep', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (88, N'��������', N'��������', NULL, NULL, N'�����ڵ�', N'Sys_WorkFlowTableStep', NULL, 1, N'', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowTable', N'Sys_WorkFlowTable', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (89, N'�����ڵ�', N'�����ڵ�', NULL, NULL, NULL, NULL, NULL, 1, N'', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowTableStep', N'Sys_WorkFlowTableStep', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (90, N'��ʱ����', N'��ʱ����', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'��ʱ����', N'VOL.System', NULL, 0, NULL, NULL, N'��ʱ����', NULL, NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (91, N'��ʱ����', N'��ʱ����', NULL, NULL, NULL, NULL, NULL, 1, N'TaskName', N'Quartz', N'VOL.System', NULL, 90, NULL, N'TaskName', N'Sys_QuartzOptions', N'Sys_QuartzOptions', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (93, N'ִ�м�¼', N'ִ�м�¼', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'Quartz', N'VOL.System', NULL, 90, NULL, N'StratDate', N'Sys_QuartzLog', N'Sys_QuartzLog', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (94, N'������¼', N'������¼', NULL, NULL, NULL, NULL, NULL, 1, N'', N'flow', N'VOL.System', NULL, 84, NULL, N'CreateDate', N'Sys_WorkFlowTableAuditLog', N'Sys_WorkFlowTableAuditLog', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (95, N'��֯�ܹ�', N'��֯�ܹ�', NULL, NULL, NULL, NULL, NULL, 1, N'DepartmentName', N'System', N'VOL.System', NULL, 8, NULL, N'CreateDate', N'Sys_Department', N'Sys_Department', NULL, NULL)
GO
INSERT [dbo].[Sys_TableInfo] ([Table_Id], [CnName], [ColumnCNName], [DBServer], [DataTableType], [DetailCnName], [DetailName], [EditorType], [Enable], [ExpressField], [FolderName], [Namespace], [OrderNo], [ParentId], [RichText], [SortName], [TableName], [TableTrueName], [UploadField], [UploadMaxCount]) VALUES (96, N'�û�����', N'�û�������֯', NULL, NULL, NULL, NULL, NULL, 1, NULL, N'System', N'VOL.System', NULL, 8, NULL, N'CreateDate', N'Sys_UserDepartment', N'Sys_UserDepartment', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sys_TableInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_User] ON 

GO
INSERT [dbo].[Sys_User] ([User_Id], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [OrderNo], [Token], [CreateID], [CreateDate], [Creator], [Mobile], [Modifier], [ModifyDate], [ModifyID], [DeptIds]) VALUES (1, 1, N'��', N'13888888888', N'~��û���...', NULL, N'admin', N'j79rYYvCz4vdhcboB1Ausg==', N'��������Ա', NULL, 0, N'283591387@qq.com', 1, 1, N'Upload/Tables/Sys_User/202305131010574561/wechat.jpg', 0, CAST(0x0000A7DD00A47F54 AS DateTime), CAST(0x0000AB2300FB2443 AS DateTime), N'������������', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'��������Ա', 0, N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIxIiwiaWF0IjoiMTY4Mzk3NDQyNSIsIm5iZiI6IjE2ODM5NzQ0MjUiLCJleHAiOiIxNjgzOTgxNjI1IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.MhQ8t--gVyQ9IG-OpAIZPdBGrV_JuHh4RxR4r1Rx53k', NULL, CAST(0x0000A06C00B808E4 AS DateTime), NULL, NULL, N'��������Ա', CAST(0x0000B00100A7CE98 AS DateTime), 1, NULL)
GO
INSERT [dbo].[Sys_User] ([User_Id], [Role_Id], [RoleName], [PhoneNo], [Remark], [Tel], [UserName], [UserPwd], [UserTrueName], [DeptName], [Dept_Id], [Email], [Enable], [Gender], [HeadImageUrl], [IsRegregisterPhone], [LastLoginDate], [LastModifyPwdDate], [Address], [AppType], [AuditDate], [AuditStatus], [Auditor], [OrderNo], [Token], [CreateID], [CreateDate], [Creator], [Mobile], [Modifier], [ModifyDate], [ModifyID], [DeptIds]) VALUES (3362, 2, N'��', NULL, N'����', NULL, N'admin666', N'j79rYYvCz4vdhcboB1Ausg==', N'Admin����', NULL, NULL, NULL, 1, 0, N'Upload/Tables/Sys_User/202305131011047216/wechat.jpg', 1, NULL, CAST(0x0000AAD0017C018A AS DateTime), N'�����л�ûע��', 1, CAST(0x0000AAAD000EDBE8 AS DateTime), 1, N'��������Ա', NULL, N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzMzYyIiwiaWF0IjoiMTY4Mzk2OTQ4NCIsIm5iZiI6IjE2ODM5Njk0ODQiLCJleHAiOiIxNjgzOTc2Njg0IiwiaXNzIjoidm9sLmNvcmUub3duZXIiLCJhdWQiOiJ2b2wuY29yZSJ9.AusSAJoTD3Bk90PFCmhNj7Mrlv06IA3XM2mubfwBJu0', NULL, CAST(0x0000AAA800ED6DA4 AS DateTime), NULL, N'01012345678', N'��������Ա', CAST(0x0000B001011ACF9C AS DateTime), 1, N'e5d8e8af-3659-454c-aa8e-c201c7edbcfb,ec238385-f907-44de-b99b-0eddcffa6750')
GO
SET IDENTITY_INSERT [dbo].[Sys_User] OFF
GO
INSERT [dbo].[Sys_WorkFlow] ([WorkFlow_Id], [WorkName], [WorkTable], [WorkTableName], [NodeConfig], [LineConfig], [Remark], [Weight], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [AuditingEdit]) VALUES (N'be42a851-147a-493a-b42f-3dc7d3061e32', N'�˻�������>10����', N'SellOrder', N'���۶���', N'[{"id":"18umlmt5a","name":"qty<10","type":"node","left":"186px","top":"181px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"10","filterType":"<","data":null}],"auditType":1,"userId":3362},{"id":"qq4qwkz9il","name":"���̽���","type":"end","left":"241px","top":"400px","ico":"el-icon-switch-button","state":"success","filters":[]},{"id":"yuo5z0v07p","name":"���̿�ʼ","type":"start","left":"343px","top":"59px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["2"],"filterType":"=","data":[{"value":"1","label":"����","key":"1"},{"value":"2","label":"�˻�","key":"2"},{"value":"3","label":"����","key":"3"}]}]},{"id":"xebxs78ls","name":"qty>10","type":"node","left":"501px","top":"175px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"10","filterType":">=","data":null}],"auditType":1,"userId":3362},{"id":"xk0xirr5zf","name":">=20","type":"node","left":"479px","top":"299px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"20","filterType":">=","data":null}],"auditType":2,"roleId":2}]', N'[{"from":"yuo5z0v07p","to":"18umlmt5a","label":"x"},{"from":"yuo5z0v07p","to":"xebxs78ls","label":"x"},{"from":"18umlmt5a","to":"qq4qwkz9il","label":"x"},{"from":"xebxs78ls","to":"xk0xirr5zf","label":"x"},{"from":"xk0xirr5zf","to":"qq4qwkz9il","label":"x"}]', NULL, 50, CAST(0x0000AFFA014913DD AS DateTime), 1, N'��������Ա', 1, N'��������Ա', CAST(0x0000B00101191452 AS DateTime), 1, 1)
GO
INSERT [dbo].[Sys_WorkFlow] ([WorkFlow_Id], [WorkName], [WorkTable], [WorkTableName], [NodeConfig], [LineConfig], [Remark], [Weight], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [AuditingEdit]) VALUES (N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'����+��ɫ���������', N'SellOrder', N'��������', N'[{"id":"iyzakw0c8","name":"������������","type":"start","left":"325px","top":"16px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["1"],"filterType":"=","data":[{"value":"1","label":"����","key":"1"},{"value":"2","label":"�˻�","key":"2"},{"value":"3","label":"����","key":"3"}]}]},{"id":"jkqinw0zc","name":"�û�����>=5000","type":"node","left":"56px","top":"92px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"5000","filterType":">=","data":null}],"auditType":1,"userId":1,"auditRefuse":1,"auditBack":2,"sendMail":1},{"id":"5zfqhzz198","name":"���̽���","type":"end","left":"322px","top":"530px","ico":"el-icon-switch-button","state":"success","filters":[]},{"id":"bth346cr4d","name":"�������Թ���Ա����","type":"node","left":"574px","top":"152px","ico":"el-icon-news","state":"success","filters":[],"auditType":1,"userId":3362,"auditRefuse":1,"auditBack":1},{"id":"b9cv1h35jg","name":"��Ʒ��>=7000����","type":"node","left":"327px","top":"225px","ico":"el-icon-news","state":"success","filters":[],"auditType":3,"deptId":"ec238385-f907-44de-b99b-0eddcffa6750"},{"id":"mcpdtusm42","name":"���Թ���Ա<5500����","type":"node","left":"14px","top":"234px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"5500","filterType":"<","data":null}],"auditType":2,"roleId":2},{"id":"hnoj7gaczc","name":"��������Ա����","type":"node","left":"173px","top":"429px","ico":"el-icon-news","state":"success","filters":[],"auditType":1,"userId":1}]', N'[{"from":"iyzakw0c8","to":"jkqinw0zc","label":"x"},{"from":"iyzakw0c8","to":"bth346cr4d","label":"x"},{"from":"bth346cr4d","to":"5zfqhzz198","label":"x"},{"from":"jkqinw0zc","to":"mcpdtusm42","label":"x"},{"from":"jkqinw0zc","to":"b9cv1h35jg","label":"x"},{"from":"mcpdtusm42","to":"hnoj7gaczc","label":"x"},{"from":"hnoj7gaczc","to":"5zfqhzz198","label":"x"},{"from":"b9cv1h35jg","to":"hnoj7gaczc","label":"x"}]', N'���š���ɫ������ͬʱ����', 100, CAST(0x0000B001011060E9 AS DateTime), 1, N'��������Ա', 1, N'��������Ա', CAST(0x0000B00101153395 AS DateTime), 1, 0)
GO
INSERT [dbo].[Sys_WorkFlow] ([WorkFlow_Id], [WorkName], [WorkTable], [WorkTableName], [NodeConfig], [LineConfig], [Remark], [Weight], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [AuditingEdit]) VALUES (N'25f1b307-4562-4d0b-9acc-73fce3c57eb8', N'��������', N'SellOrder', N'���۶���', N'[{"id":"folpb3e1qe","name":"���̿�ʼ","type":"start","left":"296px","top":"16px","ico":"el-icon-time","state":"success","filters":[{"field":"OrderType","value":["1"],"filterType":"=","data":[{"value":"1","label":"����","key":"1"},{"value":"2","label":"�˻�","key":"2"},{"value":"3","label":"����","key":"3"}]}]},{"id":"3nfhu1i4","name":"<=100","type":"node","left":"52px","top":"190px","ico":"el-icon-news","state":"success","auditType":1,"userId":3362,"filters":[{"field":"Qty","value":"100","filterType":"<=","data":null}]},{"id":"eah755bg8","name":"���̽���","type":"end","left":"302.2px","top":"346.7px","ico":"el-icon-switch-button","state":"success"},{"id":"mtisrzm4x","name":">=200","type":"node","left":"446px","top":"182px","ico":"el-icon-news","state":"success","filters":[{"field":"Qty","value":"200","filterType":">=","data":null}],"auditType":1,"userId":1}]', N'[{"from":"folpb3e1qe","to":"3nfhu1i4","label":"x"},{"from":"3nfhu1i4","to":"eah755bg8","label":"x"},{"from":"folpb3e1qe","to":"mtisrzm4x","label":"x"},{"from":"mtisrzm4x","to":"eah755bg8","label":"x"}]', NULL, 50, CAST(0x0000AFFA01100CEC AS DateTime), 1, N'��������Ա', 1, N'��������Ա', CAST(0x0000B001011969E7 AS DateTime), 1, 0)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'ac58fe6a-b5dc-4a1f-b5e2-08db4e0c2701', N'25f1b307-4562-4d0b-9acc-73fce3c57eb8', N'folpb3e1qe', N'���̿�ʼ', NULL, NULL, 0, NULL, CAST(0x0000AFFA01100D01 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011969E7 AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"field":"OrderType","filterType":"=","value":"1"}]', N'start', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'4d7781b0-fead-4267-b5e3-08db4e0c2701', N'25f1b307-4562-4d0b-9acc-73fce3c57eb8', N'3nfhu1i4', N'<=100', 1, N'3362', 1, NULL, CAST(0x0000AFFA01100D03 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011969E7 AS DateTime), 1, NULL, N'folpb3e1qe', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":"<=","value":"100"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'549425ad-43a9-450c-b5e4-08db4e0c2701', N'25f1b307-4562-4d0b-9acc-73fce3c57eb8', N'eah755bg8', N'���̽���', NULL, NULL, 3, NULL, CAST(0x0000AFFA01100D03 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011969E7 AS DateTime), 1, NULL, N'3nfhu1i4,mtisrzm4x', NULL, NULL, NULL, 0, NULL, N'end', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'0d89e5ad-40e4-4b1a-e6eb-08db4e292860', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'yuo5z0v07p', N'���̿�ʼ', NULL, NULL, 0, NULL, CAST(0x0000AFFA014913E1 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B00101191461 AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"field":"OrderType","filterType":"=","value":"2"}]', N'start', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'717567ab-19cb-46fb-e6ec-08db4e292860', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'18umlmt5a', N'qty<10', 1, N'3362', 1, NULL, CAST(0x0000AFFA014913E3 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B00101191465 AS DateTime), 1, NULL, N'yuo5z0v07p', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":"<","value":"10"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'34611b20-83ea-4166-2ae8-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'iyzakw0c8', N'������������', NULL, NULL, 0, NULL, CAST(0x0000B0010110610F AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A5 AS DateTime), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"field":"OrderType","filterType":"=","value":"1"}]', N'start', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'1ce1abdb-5fba-44a8-2ae9-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'jkqinw0zc', N'�û�����>=5000', 1, N'1', 1, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'iyzakw0c8', 1, 2, NULL, 0, N'[{"field":"Qty","filterType":">=","value":"5000"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'b25c3bf2-8878-4283-2aea-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'bth346cr4d', N'�������Թ���Ա����', 1, N'3362', 2, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'iyzakw0c8', 1, 1, NULL, 0, NULL, N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'5fe5984e-3bb8-4a5d-2aeb-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'mcpdtusm42', N'���Թ���Ա<5500����', 2, N'2', 3, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'jkqinw0zc', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":"<","value":"5500"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'a490b734-a54d-411e-2aec-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'b9cv1h35jg', N'��Ʒ��>=7000����', 3, N'ec238385-f907-44de-b99b-0eddcffa6750', 4, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'jkqinw0zc', NULL, NULL, NULL, 0, NULL, N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'b95667c1-95dd-4370-2aed-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'5zfqhzz198', N'���̽���', NULL, NULL, 5, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'bth346cr4d,hnoj7gaczc', NULL, NULL, NULL, 0, NULL, N'end', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'beb46da8-ef43-4844-2aee-08db538c7aa7', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'hnoj7gaczc', N'��������Ա����', 1, N'1', 6, NULL, CAST(0x0000B00101106115 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011533A8 AS DateTime), 1, NULL, N'mcpdtusm42,b9cv1h35jg', NULL, NULL, NULL, 0, NULL, N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'e63d434b-a434-44c1-93c2-8a8493c78ed2', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xk0xirr5zf', N'>=20', 2, N'2', 4, NULL, CAST(0x0000AFFA0149F919 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B00101191465 AS DateTime), 1, NULL, N'xebxs78ls', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":">=","value":"20"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'9babc207-2159-42c1-92aa-960f689a6aad', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'qq4qwkz9il', N'���̽���', NULL, NULL, 3, NULL, CAST(0x0000AFFA0149F919 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B00101191465 AS DateTime), 1, NULL, N'18umlmt5a,xk0xirr5zf', NULL, NULL, NULL, 0, NULL, N'end', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'342e50a6-92f3-4a05-bb7f-a025e3fa0da7', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xebxs78ls', N'qty>10', 1, N'3362', 2, NULL, CAST(0x0000AFFA0149F919 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B00101191465 AS DateTime), 1, NULL, N'yuo5z0v07p', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":">=","value":"10"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowStep] ([WorkStepFlow_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [NextStepIds], [ParentId], [AuditRefuse], [AuditBack], [AuditMethod], [SendMail], [Filters], [StepAttrType], [Weight]) VALUES (N'bcd55dbe-f145-4532-bc0c-ba876b4b48d3', N'25f1b307-4562-4d0b-9acc-73fce3c57eb8', N'mtisrzm4x', N'>=200', 1, N'1', 2, NULL, CAST(0x0000AFFA0148A9A1 AS DateTime), 1, N'��������Ա', NULL, N'��������Ա', CAST(0x0000B001011969E7 AS DateTime), 1, NULL, N'folpb3e1qe', NULL, NULL, NULL, 0, N'[{"field":"Qty","filterType":">=","value":"200"}]', N'node', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [CurrentStepId], [StepName]) VALUES (N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'�˻�������>10����', N'55ae8c6c-6a11-4765-952a-7b4a3adece04', N'SellOrder', N'��������', NULL, 2, CAST(0x0000B0010104BBE5 AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'xk0xirr5zf', N'qty>10')
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [CurrentStepId], [StepName]) VALUES (N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'����+��ɫ���������', N'323ab96f-49c1-4100-9d08-17db9f209df7', N'SellOrder', N'��������', NULL, 2, CAST(0x0000B001011D092F AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'b9cv1h35jg', N'�û�����>=5000')
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [CurrentStepId], [StepName]) VALUES (N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'����+��ɫ���������', N'b1db23bd-ed48-4459-b9ed-355d97a7e16e', N'SellOrder', N'��������', NULL, 1, CAST(0x0000B001011A3E35 AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'������', N'�û�����>=5000')
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [CurrentStepId], [StepName]) VALUES (N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'�˻�������>10����', N'b67b7ec0-136c-4439-a530-cd6dd4d69a9c', N'SellOrder', N'��������', NULL, 1, CAST(0x0000B0010107514C AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'������', N'qty>10')
GO
INSERT [dbo].[Sys_WorkFlowTable] ([WorkFlowTable_Id], [WorkFlow_Id], [WorkName], [WorkTableKey], [WorkTable], [WorkTableName], [CurrentOrderId], [AuditStatus], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [CurrentStepId], [StepName]) VALUES (N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'����+��ɫ���������', N'81d5db86-c85a-4b06-bc3a-08142811c522', N'SellOrder', N'��������', NULL, 0, CAST(0x0000B001011D663D AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'jkqinw0zc', N'�û�����>=5000')
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'673b5f2a-d798-4120-8bce-077dc208a047', N'c46e07fc-6141-4de8-947c-85d312f1972f', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100EBA3EA AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'42637473-018e-482e-b952-07e2c4afc0cc', N'cc35e127-2740-40f0-ad5a-6007cf92367e', N'3e190afd-64b3-42fa-8c53-db6670d65a9d', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 1, NULL, CAST(0x0000B00100D5937F AS DateTime), NULL, CAST(0x0000B00100D5938C AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'6d9ae3c7-f802-4e31-ba8e-0a27acf3951d', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'4ed73980-2e6e-4052-9722-695375d93303', N'xk0xirr5zf', N'>=20', 3362, N'Admin����', 1, N'ͨ������������', CAST(0x0000B001010BC69D AS DateTime), N'ͨ������������', CAST(0x0000B001010BC69D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'088bdab5-4bcf-4f12-a5c1-0f2e642ec66c', N'7db5447a-7a78-40d8-9585-0aab9375b61f', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B0010104BBE6 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'033009cd-4227-4088-a7f4-0fe956717005', N'f00bf32c-7d32-45b7-ac3e-4e223a6e2dd6', N'0f7c0a3c-a0fa-4fb4-9d4d-fbcd441fa449', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100DA9CEE AS DateTime), NULL, CAST(0x0000B00100DA9CEE AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'1a21cc26-eb65-4a68-bcea-116f08b43882', N'89f87fd9-b1fb-435b-8c92-7870d74214dd', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC00161D53 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e68f23c0-fa88-4290-b975-11e044a7b7e8', N'7f13eaab-f51c-4534-b839-2410501c6693', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC010E30E2 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'032a246a-3d95-45ae-a02f-15397fe959a4', N'38417b03-d70b-436b-8d24-f60ed5373dc6', N'eee0b9ef-eb93-4680-8dca-658b73c5d797', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000AFFC0114EE4D AS DateTime), NULL, CAST(0x0000AFFC0114EE4D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e4ed2781-4d7c-4e87-81ae-16d86538bdf3', N'f00bf32c-7d32-45b7-ac3e-4e223a6e2dd6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100DA9CD4 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'59dd8bcd-eddf-4882-a0e0-247844dec5e7', N'b58589a0-04a1-432e-accb-76c9c22c8bc9', N'fa069866-db1f-47f9-bb88-0132e42f7b4f', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100C9C27C AS DateTime), NULL, CAST(0x0000B00100C9C27C AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'ef617f6b-3af3-4fa3-9c4d-27c7db775a74', N'83005898-c7dc-4c3a-8519-69be2debe83d', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100E4AE49 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'267c2e5b-4b55-4f5d-8a43-2920a08b89fb', N'56a6d0fc-5b0d-4748-b436-1868865277c3', N'89329eb5-620e-477a-80c5-9261dc1f6c60', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100E328F3 AS DateTime), NULL, CAST(0x0000B00100E328F9 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'b8473b4d-c6fc-49c8-be4f-2e8c8c181f24', N'ed175615-9853-469f-9bee-dac37d4cfe49', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC01102A8F AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'df004942-44bd-4be2-ac42-316e562eeaeb', N'38417b03-d70b-436b-8d24-f60ed5373dc6', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC0114EE36 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'86c3310d-af70-45e1-8156-3259aea24c6b', N'b58589a0-04a1-432e-accb-76c9c22c8bc9', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100C9C279 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'fbf482e7-a0ff-4842-9e37-34bf672e64f3', N'2cd8ce25-650c-49ea-abb0-82aa8c6bdf72', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC001AD5A3 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'08e13a05-901d-456a-9e96-39abd8054d22', N'827ce743-8340-4643-8512-de6b8b998b9c', N'4f5a3717-ea97-4e45-bb77-12e95a25523b', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000AFFC0111C0EC AS DateTime), NULL, CAST(0x0000AFFC0111C0ED AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'fa4c6ef4-82d8-455c-8166-3d86da68b09b', N'd5f96ffd-d50b-4581-847c-feee264243da', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC01108B85 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'576493c9-c755-4ef5-98c4-401d5bafc5a2', N'cc35e127-2740-40f0-ad5a-6007cf92367e', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100D53F24 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'4aa1c64b-10b7-4f9e-83f4-4e9b7db22878', N'9fda3a1e-1486-4bf5-bfc4-a217951a7a6a', N'94407d86-77a3-4a6b-8cb5-abfa31ac3b0c', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100D0A6B2 AS DateTime), NULL, CAST(0x0000B00100D0A6B2 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e0a80ad6-25be-49ee-b802-4f517991fc0a', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'a2035fc1-334b-4b54-abc9-caaf5c8c7b6d', N'hnoj7gaczc', N'��������Ա����', 1, N'��������Ա', 1, N'��������Աͬ�⡣��', CAST(0x0000B001011B819F AS DateTime), N'��������Աͬ�⡣��', CAST(0x0000B001011B819F AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'367ae81d-3be4-4fa3-a5ee-555330b87fbe', N'd82f4733-9916-4714-bf35-900ceaa049c1', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B001011A3E36 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'987de71a-afcd-4fad-99df-57b4c50192e5', N'd1cd7028-132c-4b97-aec3-071f0ba7da0e', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100C77F92 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'c251c391-3f13-4d05-91c1-591f0ca737d5', N'cc35e127-2740-40f0-ad5a-6007cf92367e', N'3e190afd-64b3-42fa-8c53-db6670d65a9d', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100D53F31 AS DateTime), NULL, CAST(0x0000B00100D53F31 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'50d2f620-6fe3-4663-9e78-5cadced87a7f', N'ca8025cd-4b66-4127-b9d6-d9ead3d23705', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC001B7436 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'a21b38be-c2df-4edd-8efb-5f2e8e216ec4', N'98590873-049b-45c1-8f75-ff7ab22ae0dd', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100E6BFD8 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'94d7b7ae-e6e1-44f9-b5f0-66f37eb740c2', N'1b92e493-11f0-462b-971b-c91ffbe82b42', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100C26F80 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'85401ee1-c772-4610-b958-6d8c8c3307a7', N'0134c7b2-8931-4477-9743-7adda9a4d6df', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B0010102BB62 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'744382f3-0ae7-48e5-9f97-71908863f7b9', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'4fc4aca8-e0f6-4b57-b66a-4a1bf8dc3f85', N'jkqinw0zc', N'�û�����>=5000', 1, N'��������Ա', 1, N'ͬ�⡣����', CAST(0x0000B001011D17AE AS DateTime), N'ͬ�⡣����', CAST(0x0000B001011D17AE AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'c4cf806a-7b5c-49a2-b4a9-721ca3bd4868', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'8486b561-6403-4d1c-af33-dd635bf63b8c', N'jkqinw0zc', N'�û�����>=5000', 1, N'��������Ա', 1, NULL, CAST(0x0000B001011B220F AS DateTime), NULL, CAST(0x0000B001011B221E AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'd3fbf10d-db09-4a6b-be8e-76d1506ddcd9', N'ddd6ea0c-e3db-49ad-8dfe-bb995c23bcf3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B0010101493D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'860fa141-5321-45b1-8148-7b707f02c8a7', N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'032eb689-c842-4ebf-b072-6062864b300d', N'xebxs78ls', N'qty>10', 3362, N'Admin����', 1, N'ͬ�⡣������', CAST(0x0000B0010106D3DE AS DateTime), N'ͬ�⡣������', CAST(0x0000B0010106D3DE AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'45938d60-e6de-4172-92ef-7f685e0f44e1', N'c46e07fc-6141-4de8-947c-85d312f1972f', N'937eb1aa-4c9f-401a-a8e3-cc267a6ab2bc', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 3, NULL, CAST(0x0000B00101010CD7 AS DateTime), NULL, CAST(0x0000B00101010CD7 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'77c48d16-1d3e-4ec9-bb50-81308e51c6b1', N'e7e6a63f-3ca0-4d63-a323-790d4680d8c0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100DBDA5D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'69bfbd14-cdc2-4d70-8625-819490946116', N'2d019ae7-22bb-4d25-8d06-2b4444c22c6f', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100D837FB AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'9f5c12b1-ce50-4f90-b40a-833279872b0a', N'9fda3a1e-1486-4bf5-bfc4-a217951a7a6a', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100D0A69A AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'47f08e68-5ae1-467b-81f3-8a55072e9794', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B001011D0930 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'9053b951-f2fd-40df-8baf-8f267d6126ce', N'e7e6a63f-3ca0-4d63-a323-790d4680d8c0', N'4fd17d32-518a-4f9c-80c5-738374f5a846', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100DBED38 AS DateTime), NULL, CAST(0x0000B00100DBED48 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'dcf07982-9eda-4a19-be7e-8f4c33fb32cf', N'2d019ae7-22bb-4d25-8d06-2b4444c22c6f', N'ab5de430-5007-4027-b58b-c5eb9b0bfeb8', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100D84522 AS DateTime), NULL, CAST(0x0000B00100D84522 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'f4dd3674-9f9f-40d7-bcdb-92d35a89f89b', N'75d7fb3f-049e-4103-8f6a-9f3e0d3ebb3a', N'e3ec2568-a952-4ae3-a269-67663e39bdf0', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100E35E96 AS DateTime), NULL, CAST(0x0000B00100E35E96 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'9cb27636-cef5-4fa0-8ae0-940a759425f2', N'2c0d573d-f81f-4d98-89ff-75804b8bc877', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100C7DE56 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'0760aaf1-644f-4ae8-a28c-959583420365', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'de5133df-9ff7-494d-bb76-c9e457dfebad', N'b9cv1h35jg', N'��Ʒ��>=7000����', 3362, N'Admin����', 1, N'Admin���Թ���Աͬ�⡣��', CAST(0x0000B001011B63B7 AS DateTime), N'Admin���Թ���Աͬ�⡣��', CAST(0x0000B001011B63B7 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'09087f8c-4edb-4fbf-bf04-97610d2ee880', N'56a6d0fc-5b0d-4748-b436-1868865277c3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100E2F8E9 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'3abfda8b-c565-47cd-b965-9d49bf50f902', N'0cd2d3ac-a4b3-42dc-be9b-3f3057b1ac61', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC000F0FEB AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'9b2c29a0-8c8f-4cde-87c7-a6290a93ed03', N'1b92e493-11f0-462b-971b-c91ffbe82b42', N'839a2de4-e5be-4fcf-9ad5-8b3b26d791dc', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100C26F96 AS DateTime), NULL, CAST(0x0000B00100C26F96 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'04f7dbbd-d36d-4fc0-9222-a87b8475e9f1', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be1dc0bf-96f0-46db-8a02-90362b1b0b38', N'xebxs78ls', N'qty>10', 3362, N'Admin����', 1, N'ͬ�⡣������', CAST(0x0000B00101087C6A AS DateTime), N'ͬ�⡣������', CAST(0x0000B00101087C6A AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'6e3e6f00-3dbb-4887-b453-a9fb54fffb5c', N'646d440f-2447-44b7-bd35-3690e7d1e5e8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100E3C4FC AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'1b780830-da10-47cf-aa55-b6049cf1bc6b', N'2c0d573d-f81f-4d98-89ff-75804b8bc877', N'd1e0d9f4-2476-43e5-ba73-9a3b6d3431f2', N'3nfhu1i4', N'<=100', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100C7DE74 AS DateTime), NULL, CAST(0x0000B00100C7DE74 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'ef0a21c8-5896-4919-a075-bb3a46d4387c', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B0010107514D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e1c9e5b3-a11e-478c-8169-c39032846c35', N'147e53c5-231f-43cc-bba0-ab906a59b6ca', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC00152957 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'0404929a-1b62-4015-905f-c47b8488c0b5', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be1dc0bf-96f0-46db-8a02-90362b1b0b38', N'xebxs78ls', N'qty>10', 3362, N'Admin����', 1, N'............', CAST(0x0000B001010AFA27 AS DateTime), N'............', CAST(0x0000B001010AFA34 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'f744c9ed-132f-4294-bc7b-c762201cb1b1', N'9768e54c-d8d0-49ee-b943-2416f990c1df', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC011056C9 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'6306b03c-7c1f-4912-9b44-ceffcc609267', N'75d7fb3f-049e-4103-8f6a-9f3e0d3ebb3a', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B00100E3382C AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e8fdd20e-21f5-4eff-9cbf-cf810ed95692', N'bff474a1-52e2-498b-8557-f7322bf34834', N'7413de5d-100c-4c83-ad91-8e808e6c41f6', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 2, NULL, CAST(0x0000AFFC01119282 AS DateTime), NULL, CAST(0x0000AFFC01119282 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'e2a55cbf-e68e-4f99-9715-d2dd27ccafe7', N'62c8999f-f07e-4d47-827c-b1c4e63af323', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B001011D663D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'2ba41a15-768d-49db-80f4-d6b9ff2da546', N'eef3ff36-111e-4398-be9c-7c69e5d2b4c5', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC001A167D AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'5ff227a0-5138-4145-ae8d-e03ea3a55cc3', N'8e60e09e-cda6-4baa-b452-370dea64ada4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000B0010110F0C8 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'37ca151d-b43d-4364-aa6b-e2df02720c07', N'bff474a1-52e2-498b-8557-f7322bf34834', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC0111926C AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'c0b40ad7-1c64-4c0a-b9d0-ea7074075583', N'581940d5-848f-4493-9c66-42add81f301c', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC001D0703 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'685b461f-1a68-4498-87c1-f00ee5d2f0b3', N'9fda3a1e-1486-4bf5-bfc4-a217951a7a6a', N'94407d86-77a3-4a6b-8cb5-abfa31ac3b0c', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 1, NULL, CAST(0x0000B00100D4B762 AS DateTime), NULL, CAST(0x0000B00100D4B762 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'a4337440-a79e-4c46-bcdd-f279ebc6ab29', N'827ce743-8340-4643-8512-de6b8b998b9c', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC0111C0D9 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'c6ab40f6-7a16-4e69-a7c6-f5af695ab473', N'646d440f-2447-44b7-bd35-3690e7d1e5e8', N'0ad966a6-a5af-4e1b-8764-29a120431351', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 1, NULL, CAST(0x0000B00100E3EB46 AS DateTime), NULL, CAST(0x0000B00100E3EB57 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'f2e57dea-d98b-45fb-bb88-fa4f187f8c8a', N'385f83bd-5518-488d-a335-e9ecff0318c0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, N'[��������Ա]�ύ������', CAST(0x0000AFFC001E15DA AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'71e15ed0-cbcc-4fea-a45e-faaf58758b18', N'd1cd7028-132c-4b97-aec3-071f0ba7da0e', N'2ac1ddb2-19b7-412f-8c93-6f70228e5863', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 0, NULL, CAST(0x0000B00100C77FAA AS DateTime), NULL, CAST(0x0000B00100C77FAA AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'3a54ffcb-c687-41b3-a59c-fe287cb0ba38', N'ddd6ea0c-e3db-49ad-8dfe-bb995c23bcf3', N'd6366d71-7fe1-480d-882c-d1b9a8419210', N'mtisrzm4x', N'>=200', 1, N'��������Ա', 3, N'ԭ��������', CAST(0x0000B00101016421 AS DateTime), N'ԭ��������', CAST(0x0000B00101016421 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableAuditLog] ([Id], [WorkFlowTable_Id], [WorkFlowTableStep_Id], [StepId], [StepName], [AuditId], [Auditor], [AuditStatus], [AuditResult], [AuditDate], [Remark], [CreateDate]) VALUES (N'b9d955f1-05b2-4c16-b877-ff700b2954a7', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be1dc0bf-96f0-46db-8a02-90362b1b0b38', N'xebxs78ls', N'qty>10', 3362, N'Admin����', 1, N'ͬ�⡣��������', CAST(0x0000B001010BB765 AS DateTime), N'ͬ�⡣��������', CAST(0x0000B001010BB765 AS DateTime))
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'bacdbb3c-d50d-4082-83e1-0e932b9f7d0f', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'yuo5z0v07p', N'���̿�ʼ', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, CAST(0x0000B0010107514D AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'start', NULL, N'xebxs78ls', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'03e1881f-6a73-4e4c-a3ae-148a7d47e8d5', N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'qq4qwkz9il', N'���̽���', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, CAST(0x0000B0010104BBE6 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'end', N'xk0xirr5zf', NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'53dd80a6-dd77-4c98-8531-1d648c5773e8', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'iyzakw0c8', N'���̿�ʼ', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D092F AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'start', NULL, N'jkqinw0zc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'8676db90-4a31-4670-b3f8-24d7c752071e', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'b9cv1h35jg', N'��Ʒ��>=7000����', 3, N'ec238385-f907-44de-b99b-0eddcffa6750', 2, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D0930 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'jkqinw0zc', N'hnoj7gaczc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'6f7b76c5-82ea-49e5-9878-3965792d8988', N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'b9cv1h35jg', N'��Ʒ��>=7000����', 3, N'ec238385-f907-44de-b99b-0eddcffa6750', 2, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D663D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'jkqinw0zc', N'hnoj7gaczc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'3021e4e6-ec9b-43ae-a7d2-443f1cb7ba44', N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'iyzakw0c8', N'���̿�ʼ', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D663D AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'start', NULL, N'jkqinw0zc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'4fc4aca8-e0f6-4b57-b66a-4a1bf8dc3f85', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'jkqinw0zc', N'�û�����>=5000', 1, N'1', 1, 1, N'��������Ա', 1, CAST(0x0000B001011D17AE AS DateTime), N'ͬ�⡣����', CAST(0x0000B001011D0930 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'iyzakw0c8', N'b9cv1h35jg', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'f5cea9d2-c567-497a-ad6c-4b483a198aa4', N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'jkqinw0zc', N'�û�����>=5000', 1, N'1', 1, 1, NULL, NULL, NULL, NULL, CAST(0x0000B001011D663D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'iyzakw0c8', N'b9cv1h35jg', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'032eb689-c842-4ebf-b072-6062864b300d', N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xebxs78ls', N'qty>10', 1, N'3362', 1, 3362, N'Admin����', 0, CAST(0x0000B0010106D3DE AS DateTime), N'ͬ�⡣������', CAST(0x0000B0010104BBE6 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'yuo5z0v07p', N'xk0xirr5zf', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'0284ca27-cd47-48b2-9228-6731d86091ce', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'qq4qwkz9il', N'���̽���', NULL, NULL, 3, NULL, NULL, 0, NULL, NULL, CAST(0x0000B0010107514D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'end', N'xk0xirr5zf', NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'4ed73980-2e6e-4052-9722-695375d93303', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xk0xirr5zf', N'>=20', 2, N'2', 2, 3362, N'Admin����', 1, CAST(0x0000B001010BC69D AS DateTime), N'ͨ������������', CAST(0x0000B0010107514D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'xebxs78ls', N'qq4qwkz9il', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'3c690619-948a-484e-88cd-6ad17371eafd', N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'hnoj7gaczc', N'��������Ա����', 1, N'1', 3, 1, NULL, NULL, NULL, NULL, CAST(0x0000B001011D663D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'b9cv1h35jg', N'5zfqhzz198', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'af2ef5d3-a9a3-4403-99ad-77a19ac79262', N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'yuo5z0v07p', N'���̿�ʼ', NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, CAST(0x0000B0010104BBE5 AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'start', NULL, N'xebxs78ls', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'79dc0faa-4e29-47f4-bf8b-7be72244d848', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'hnoj7gaczc', N'��������Ա����', 1, N'1', 3, 1, NULL, NULL, NULL, NULL, CAST(0x0000B001011D0930 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'b9cv1h35jg', N'5zfqhzz198', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'3e9ff38c-dadc-4af4-8771-8c30791b0669', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'5zfqhzz198', N'���̽���', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011A3E36 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'end', N'hnoj7gaczc', NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'be1dc0bf-96f0-46db-8a02-90362b1b0b38', N'a8a9cd0d-c885-434c-8adc-b0347e05b08a', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xebxs78ls', N'qty>10', 1, N'3362', 1, 3362, N'Admin����', 1, CAST(0x0000B001010BB765 AS DateTime), N'ͬ�⡣��������', CAST(0x0000B0010107514D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'yuo5z0v07p', N'xk0xirr5zf', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'2a273253-bc06-4721-91fa-996c72c85858', N'60baff11-492d-4e74-8e38-7f2fed2fec8c', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'5zfqhzz198', N'���̽���', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D0930 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'end', N'hnoj7gaczc', NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'ba1a3451-535f-4831-8208-af87a880c7bf', N'7db5447a-7a78-40d8-9585-0aab9375b61f', N'be42a851-147a-493a-b42f-3dc7d3061e32', N'xk0xirr5zf', N'>=20', 2, N'2', 2, 3362, N'Admin����', 0, CAST(0x0000B0010106D3E2 AS DateTime), N'ͬ�⡣������', CAST(0x0000B0010104BBE6 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'xebxs78ls', N'qq4qwkz9il', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'c0a682a2-6043-492a-a15d-becb374353bd', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'iyzakw0c8', N'���̿�ʼ', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011A3E36 AS DateTime), 1, N'��������Ա', 1, NULL, NULL, NULL, N'start', NULL, N'jkqinw0zc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'de5133df-9ff7-494d-bb76-c9e457dfebad', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'b9cv1h35jg', N'��Ʒ��>=7000����', 3, N'ec238385-f907-44de-b99b-0eddcffa6750', 2, 3362, N'Admin����', 1, CAST(0x0000B001011B63B7 AS DateTime), N'Admin���Թ���Աͬ�⡣��', CAST(0x0000B001011A3E36 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'jkqinw0zc', N'hnoj7gaczc', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'a2035fc1-334b-4b54-abc9-caaf5c8c7b6d', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'hnoj7gaczc', N'��������Ա����', 1, N'1', 3, 1, N'��������Ա', 1, CAST(0x0000B001011B819F AS DateTime), N'��������Աͬ�⡣��', CAST(0x0000B001011A3E36 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'b9cv1h35jg', N'5zfqhzz198', NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'8f3a845e-6c12-4ba7-a24c-cf04884c9981', N'62c8999f-f07e-4d47-827c-b1c4e63af323', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'5zfqhzz198', N'���̽���', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, CAST(0x0000B001011D663D AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'end', N'hnoj7gaczc', NULL, NULL)
GO
INSERT [dbo].[Sys_WorkFlowTableStep] ([Sys_WorkFlowTableStep_Id], [WorkFlowTable_Id], [WorkFlow_Id], [StepId], [StepName], [StepType], [StepValue], [OrderId], [AuditId], [Auditor], [AuditStatus], [AuditDate], [Remark], [CreateDate], [CreateID], [Creator], [Enable], [Modifier], [ModifyDate], [ModifyID], [StepAttrType], [ParentId], [NextStepId], [Weight]) VALUES (N'8486b561-6403-4d1c-af33-dd635bf63b8c', N'd82f4733-9916-4714-bf35-900ceaa049c1', N'aa7099a6-cfee-4845-ba95-56e425a11ace', N'jkqinw0zc', N'�û�����>=5000', 1, N'1', 1, 1, N'��������Ա', 1, CAST(0x0000B001011B2BB1 AS DateTime), NULL, CAST(0x0000B001011A3E36 AS DateTime), NULL, NULL, 1, NULL, NULL, NULL, N'node', N'iyzakw0c8', N'b9cv1h35jg', NULL)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'TaskName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱ(��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'ElapsedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'StratDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ִ�н��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzLog', @level2type=N'COLUMN',@level2name=N'ResponseContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'TaskName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'GroupName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Corn���ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'CronExpression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'Method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Url��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'ApiUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'Describe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ִ��ִ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'LastRunTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'post����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'PostData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʱʱ��(��)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'TimeOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_QuartzOptions', @level2type=N'COLUMN',@level2name=N'ModifyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ܲ˵�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'WorkTableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڵ���Ϣ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'NodeConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'LineConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlow', @level2type=N'COLUMN',@level2name=N'Weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'WorkFlow_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���̽ڵ�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڵ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ڵ�����(1=���û�����,2=����ɫ����)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�id���ɫid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'StepValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowStep', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTableKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTable', @level2type=N'COLUMN',@level2name=N'WorkTableName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'AuditId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'Auditor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_WorkFlowTableStep', @level2type=N'COLUMN',@level2name=N'AuditStatus'
GO
USE [master]
GO
ALTER DATABASE [netcoredev_mbd] SET  READ_WRITE 
GO
