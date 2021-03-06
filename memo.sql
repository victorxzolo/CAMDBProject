USE [Memo]
GO
/****** Object:  Table [dbo].[tb_T_ActivityLog]    Script Date: 6/4/2021 2:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_T_ActivityLog](
	[ID] [uniqueidentifier] NOT NULL,
	[MemoID] [nvarchar](100) NULL,
	[ActivityName] [nvarchar](50) NULL,
	[ActionByName] [nvarchar](50) NULL,
	[ActionByEmail] [nvarchar](50) NULL,
	[ActionByTitle] [nvarchar](50) NULL,
	[ActionName] [nvarchar](50) NULL,
	[ActionRole] [nvarchar](50) NULL,
	[ActionDate] [datetime] NULL,
	[WorkflowID] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[ActionByEmployeeID] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_T_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_T_MemoAcknowledge]    Script Date: 6/4/2021 2:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_T_MemoAcknowledge](
	[ID] [uniqueidentifier] NOT NULL,
	[MemoID] [nvarchar](100) NULL,
	[Acknowledge] [nvarchar](100) NULL,
	[AcknowledgeEmail] [nvarchar](100) NULL,
 CONSTRAINT [PK_tb_T_MemoAcknowledge] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_T_Memorandum]    Script Date: 6/4/2021 2:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_T_Memorandum](
	[MemoID] [uniqueidentifier] NOT NULL,
	[MemoNo] [nvarchar](50) NULL,
	[ProposedBy] [nvarchar](100) NULL,
	[Abb] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[Subject] [nvarchar](500) NULL,
	[MemoDetail] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[WorkflowID] [int] NULL,
	[InternalDepartment] [bit] NULL,
	[RelatedDepartment] [bit] NULL,
	[InterDeptRev1] [nvarchar](100) NULL,
	[InterDeptRev2] [nvarchar](100) NULL,
	[InterDeptRev3] [nvarchar](100) NULL,
	[InterDeptRev4] [nvarchar](100) NULL,
	[InterDeptRev5] [nvarchar](100) NULL,
	[InterDeptRev6] [nvarchar](100) NULL,
	[InterDeptRev7] [nvarchar](100) NULL,
	[InterDeptRev8] [nvarchar](100) NULL,
	[InterDeptRev9] [nvarchar](100) NULL,
	[InterDeptRev10] [nvarchar](100) NULL,
	[InterDeptRev11] [nvarchar](100) NULL,
	[InterDeptRev12] [nvarchar](100) NULL,
	[InterDeptRev13] [nvarchar](100) NULL,
	[InterDeptRev14] [nvarchar](100) NULL,
	[InterDeptRev15] [nvarchar](100) NULL,
	[InterDeptRev16] [nvarchar](100) NULL,
	[InterDeptRev17] [nvarchar](100) NULL,
	[InterDeptRev18] [nvarchar](100) NULL,
	[RelatedDeptRev1] [nvarchar](100) NULL,
	[RelatedDeptRev2] [nvarchar](100) NULL,
	[RelatedDeptRev3] [nvarchar](100) NULL,
	[RelatedDeptRev4] [nvarchar](100) NULL,
	[RelatedDeptRev5] [nvarchar](100) NULL,
	[RelatedDeptRev6] [nvarchar](100) NULL,
	[RelatedDeptRev7] [nvarchar](100) NULL,
	[RelatedDeptRev8] [nvarchar](100) NULL,
	[RelatedDeptRev9] [nvarchar](100) NULL,
	[RelatedDeptRev10] [nvarchar](100) NULL,
	[RelatedDeptRev11] [nvarchar](100) NULL,
	[RelatedDeptRev12] [nvarchar](100) NULL,
	[RelatedDeptRev13] [nvarchar](100) NULL,
	[RelatedDeptRev14] [nvarchar](100) NULL,
	[RelatedDeptRev15] [nvarchar](100) NULL,
	[RelatedDeptRev16] [nvarchar](100) NULL,
	[RelatedDeptRev17] [nvarchar](100) NULL,
	[RelatedDeptRev18] [nvarchar](100) NULL,
	[Approver] [nvarchar](100) NULL,
	[FileAttachment1] [nvarchar](max) NULL,
	[FileAttachment2] [nvarchar](max) NULL,
	[FileAttachment3] [nvarchar](max) NULL,
	[FileAttachment4] [nvarchar](max) NULL,
	[FileAttachment5] [nvarchar](max) NULL,
	[FileAttachment6] [nvarchar](max) NULL,
	[InternalOrOther] [nvarchar](50) NULL,
	[ProposedByFQN] [nvarchar](100) NULL,
 CONSTRAINT [PK_tb_T_Memorandum] PRIMARY KEY CLUSTERED 
(
	[MemoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_T_MemoReviewer]    Script Date: 6/4/2021 2:09:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_T_MemoReviewer](
	[ID] [uniqueidentifier] NOT NULL,
	[EmployeeID] [nvarchar](100) NULL,
	[RoleReviewer] [nvarchar](100) NULL,
	[PriorityLevel] [int] NULL,
	[MemoID] [nvarchar](100) NULL,
 CONSTRAINT [PK_tb_T_MemoReviewer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_T_ActivityLog] ADD  CONSTRAINT [DF_tb_T_ActivityLog_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[tb_T_MemoAcknowledge] ADD  CONSTRAINT [DF_tb_T_MemoAcknowledge_ID]  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[tb_T_Memorandum] ADD  CONSTRAINT [DF_tb_T_Memorandum_MemoID]  DEFAULT (newid()) FOR [MemoID]
GO
ALTER TABLE [dbo].[tb_T_MemoReviewer] ADD  CONSTRAINT [DF_tb_T_MemoReviewer_ID]  DEFAULT (newid()) FOR [ID]
GO
