USE [DB_Demo_API]
GO
/****** Object:  Table [dbo].[ms_storage_location]    Script Date: 24/04/2023 03:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ms_storage_location](
	[location_id] [varchar](10) NOT NULL,
	[location_name] [varchar](100) NULL,
 CONSTRAINT [PK_ms_storage_location] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tr_bpkb]    Script Date: 24/04/2023 03:16:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tr_bpkb](
	[agreement_number] [varchar](100) NOT NULL,
	[bpkb_no] [varchar](100) NULL,
	[branch_id] [varchar](10) NULL,
	[bpkb_date] [datetime] NULL,
	[faktur_no] [varchar](100) NULL,
	[faktur_date] [datetime] NULL,
	[location_id] [varchar](10) NULL,
	[police_no] [varchar](20) NULL,
	[bpkb_date_in] [datetime] NULL,
 CONSTRAINT [PK_tr_bpkb] PRIMARY KEY CLUSTERED 
(
	[agreement_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'Jkt001', N'Jakarta Timur')
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'Jkt002', N'Jakarta Selatan')
INSERT [dbo].[ms_storage_location] ([location_id], [location_name]) VALUES (N'Jkt003', N'Jakarta Utara')
GO
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in]) VALUES (N'0001', N'bpkb0001', N'Jakarta01', CAST(N'2023-04-24T13:32:00.000' AS DateTime), N'faktur0001', CAST(N'2023-04-24T13:32:00.000' AS DateTime), N'Jkt001', N'BB001002003SBB', CAST(N'2023-04-24T13:36:00.000' AS DateTime))
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in]) VALUES (N'0002', N'BPKB0002', N'0002', CAST(N'2023-04-24T14:28:00.000' AS DateTime), N'Faktur002', CAST(N'2023-04-24T14:28:00.000' AS DateTime), N'Jkt002', N'BB020202SBB', CAST(N'2023-04-24T14:27:00.000' AS DateTime))
INSERT [dbo].[tr_bpkb] ([agreement_number], [bpkb_no], [branch_id], [bpkb_date], [faktur_no], [faktur_date], [location_id], [police_no], [bpkb_date_in]) VALUES (N'0003', N'BPKB0003', N'Jakarta001', CAST(N'2023-04-24T14:40:00.000' AS DateTime), N'Faktur003', CAST(N'2023-04-24T14:40:00.000' AS DateTime), N'Jkt003', N'BB020203SBB', CAST(N'2023-04-24T14:40:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[tr_bpkb]  WITH CHECK ADD  CONSTRAINT [FK_tr_bpkb_ms_storage_location] FOREIGN KEY([location_id])
REFERENCES [dbo].[ms_storage_location] ([location_id])
GO
ALTER TABLE [dbo].[tr_bpkb] CHECK CONSTRAINT [FK_tr_bpkb_ms_storage_location]
GO
