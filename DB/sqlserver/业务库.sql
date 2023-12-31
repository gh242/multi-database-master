
USE [netcoreserver_dev]
GO
/****** Object:  Table [dbo].[ServiceDbTest]    Script Date: 2021-11-04 16:14:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceDbTest](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[ServiceTranNo] [nvarchar](100) NOT NULL,
	[ServiceSellNo] [nvarchar](255) NOT NULL,
	[ServiceQty] [int] NOT NULL,
	[Remark] [nvarchar](1000) NULL,
	[CreateID] [int] NULL,
	[Creator] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifyID] [int] NULL,
	[Modifier] [nvarchar](255) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_SellOrder] PRIMARY KEY CLUSTERED 
(
	[Order_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ServiceDbTest] ([Order_Id], [ServiceTranNo], [ServiceSellNo], [ServiceQty], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'1dfceb82-0403-4451-b0f1-f8648621c276', N'業務庫测试1', N'業務庫测试1', 12300, N'業務庫测试1', 1, N'超级管理员', CAST(N'2021-11-04 16:11:16.000' AS DateTime), NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [netcoreserver_dev] SET  READ_WRITE 
GO
