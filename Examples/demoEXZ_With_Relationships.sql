USE [demo12ip192]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activitys]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activitys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[date_start] [nvarchar](max) NULL,
	[days] [nvarchar](max) NULL,
	[activity_id] [int] NULL,
	[day] [nvarchar](max) NULL,
	[time_start] [nvarchar](max) NULL,
	[moderator_id] [int] NULL,
	[jury_id] [int] NULL,
	[event_IT_id] [int] NULL,
 CONSTRAINT [PK_Activitys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Activitys] UNIQUE NONCLUSTERED 
(
	[moderator_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[urlPhoto] [nvarchar](max) NULL,
	[urlName] [nvarchar](max) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[A_name] [nvarchar](max) NULL,
	[kod] [nvarchar](max) NULL,
	[kod2] [nvarchar](max) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_IT]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_IT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[event] [nvarchar](max) NULL,
	[date] [nvarchar](max) NULL,
	[DAYS] [nvarchar](max) NULL,
	[city_id] [int] NULL,
	[event_id] [int] NULL,
 CONSTRAINT [PK_Event_IT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jury]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[patronymic] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[mail] [nvarchar](max) NULL,
	[birth] [nvarchar](max) NULL,
	[courty_id] [int] NULL,
	[phone] [nvarchar](max) NULL,
	[direction_id] [int] NULL,
	[password] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderator]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](max) NULL,
	[patronymic] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[mail] [nvarchar](max) NULL,
	[birth] [nvarchar](max) NULL,
	[country_id] [int] NULL,
	[phone] [nvarchar](max) NULL,
	[direction_id] [int] NULL,
	[event_id] [int] NULL,
	[password] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Moderator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizator]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[patronymic] [nvarchar](max) NULL,
	[mail] [nvarchar](max) NULL,
	[birth] [nvarchar](max) NULL,
	[country_id] [int] NULL,
	[phone] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
 CONSTRAINT [PK_Organizator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uchastnik]    Script Date: 26.05.2023 3:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uchastnik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[patronymic] [nvarchar](max) NULL,
	[mail] [nvarchar](max) NULL,
	[birth] [nvarchar](max) NULL,
	[coutry_id] [int] NULL,
	[phone] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[photo] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[event_IT_id] [int] NULL,
 CONSTRAINT [PK_Uchastnik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activitys]  WITH CHECK ADD  CONSTRAINT [FK_Activitys_Activity] FOREIGN KEY([activity_id])
REFERENCES [dbo].[Activity] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activitys] CHECK CONSTRAINT [FK_Activitys_Activity]
GO
ALTER TABLE [dbo].[Activitys]  WITH CHECK ADD  CONSTRAINT [FK_Activitys_Event_IT] FOREIGN KEY([event_IT_id])
REFERENCES [dbo].[Event_IT] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activitys] CHECK CONSTRAINT [FK_Activitys_Event_IT]
GO
ALTER TABLE [dbo].[Activitys]  WITH CHECK ADD  CONSTRAINT [FK_Activitys_Jury] FOREIGN KEY([jury_id])
REFERENCES [dbo].[Jury] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activitys] CHECK CONSTRAINT [FK_Activitys_Jury]
GO
ALTER TABLE [dbo].[Activitys]  WITH CHECK ADD  CONSTRAINT [FK_Activitys_Moderator] FOREIGN KEY([moderator_id])
REFERENCES [dbo].[Moderator] ([id])
GO
ALTER TABLE [dbo].[Activitys] CHECK CONSTRAINT [FK_Activitys_Moderator]
GO
ALTER TABLE [dbo].[Event_IT]  WITH CHECK ADD  CONSTRAINT [FK_Event_IT_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Event_IT] CHECK CONSTRAINT [FK_Event_IT_City]
GO
ALTER TABLE [dbo].[Event_IT]  WITH CHECK ADD  CONSTRAINT [FK_Event_IT_Event] FOREIGN KEY([event_id])
REFERENCES [dbo].[Event] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Event_IT] CHECK CONSTRAINT [FK_Event_IT_Event]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Country] FOREIGN KEY([courty_id])
REFERENCES [dbo].[Country] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Country]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Direction] FOREIGN KEY([direction_id])
REFERENCES [dbo].[Direction] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Direction]
GO
ALTER TABLE [dbo].[Jury]  WITH CHECK ADD  CONSTRAINT [FK_Jury_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Jury] CHECK CONSTRAINT [FK_Jury_Gender]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Country]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Direction] FOREIGN KEY([direction_id])
REFERENCES [dbo].[Direction] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Direction]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Event] FOREIGN KEY([event_id])
REFERENCES [dbo].[Event] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Event]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Gender]
GO
ALTER TABLE [dbo].[Organizator]  WITH CHECK ADD  CONSTRAINT [FK_Organizator_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Organizator] CHECK CONSTRAINT [FK_Organizator_Country]
GO
ALTER TABLE [dbo].[Organizator]  WITH CHECK ADD  CONSTRAINT [FK_Organizator_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Organizator] CHECK CONSTRAINT [FK_Organizator_Gender]
GO
ALTER TABLE [dbo].[Uchastnik]  WITH CHECK ADD  CONSTRAINT [FK_Uchastnik_Country] FOREIGN KEY([coutry_id])
REFERENCES [dbo].[Country] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Uchastnik] CHECK CONSTRAINT [FK_Uchastnik_Country]
GO
ALTER TABLE [dbo].[Uchastnik]  WITH CHECK ADD  CONSTRAINT [FK_Uchastnik_Event_IT] FOREIGN KEY([event_IT_id])
REFERENCES [dbo].[Event_IT] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Uchastnik] CHECK CONSTRAINT [FK_Uchastnik_Event_IT]
GO
ALTER TABLE [dbo].[Uchastnik]  WITH CHECK ADD  CONSTRAINT [FK_Uchastnik_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Uchastnik] CHECK CONSTRAINT [FK_Uchastnik_Gender]
GO
