
USE [netcoreserver_report]
GO
/****** Object:  Table [dbo].[ReportDbTest]    Script Date: 2021-11-04 16:15:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDbTest](
	[Order_Id] [uniqueidentifier] NOT NULL,
	[ReportTranNo] [nvarchar](100) NOT NULL,
	[ReportSellNo] [nvarchar](255) NOT NULL,
	[ReportQty] [int] NOT NULL,
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
INSERT [dbo].[ReportDbTest] ([Order_Id], [ReportTranNo], [ReportSellNo], [ReportQty], [Remark], [CreateID], [Creator], [CreateDate], [ModifyID], [Modifier], [ModifyDate]) VALUES (N'56644083-009d-4277-bc65-f383f4eb1ca6', N'報表庫测试1', N'報表庫测试1', 12000, N'報表庫测试1', 1, N'超级管理员', CAST(N'2021-11-04 16:11:28.000' AS DateTime), NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [netcoreserver_report] SET  READ_WRITE 
GO
