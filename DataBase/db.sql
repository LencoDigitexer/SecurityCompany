USE [SecurityCompany]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventName] [nvarchar](max) NULL,
	[date] [nvarchar](max) NULL,
	[days] [nvarchar](max) NULL,
	[city_id] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivitiesEventType]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivitiesEventType](
	[event_type_id] [int] NOT NULL,
	[activities_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[event_type_id] ASC,
	[activities_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
 CONSTRAINT [PK__Events__3213E83FA9049D85] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.05.2023 19:45:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[lastname] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[birth] [nvarchar](max) NULL,
	[role_id] [int] NULL,
	[country_id] [int] NULL,
	[phone] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[PhotoPath] [nvarchar](max) NULL,
	[gender_id] [int] NULL,
	[direction_id] [int] NULL,
	[event_id] [int] NULL,
 CONSTRAINT [PK__Users__3213E83F71BD710F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activities] ON 

INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (1, N'Выставка / Платное', N'28.11.2022', N'1', 23)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (2, N'Выставка-форум «Передовые Технологии Автоматизации. ПТА - Санкт-Петербург » ', N'01.04.2022', N'2', 4)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (3, N'Высшая школа трафика ', N'05.04.2022', N'1', 5)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (4, N'Высшее образование в Шотландии. Семинар Glasgow Caledonian University: New Computer Science subjects ', N'21.07.2023', N'2', 6)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (5, N'Выход на ИТ рынок Израиля ', N'17.12.2023', N'1', 7)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (6, N'Гейзенбаг Piter — конференция по тестированию ', N'26.08.2022', N'3', 8)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (7, N'Гейм-джем Инди-батл «Гиперказуальные игры» ', N'08.11.2023', N'1', 45)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (8, N'Готовим компанию к привлечению инвестиций. Due diligence ', N'06.09.2022', N'1', 23)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (9, N'Делаем маркетинг лучше ', N'28.02.2022', N'1', 67)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (10, N'День Встраиваемых Технологий ', N'15.01.2022', N'3', 7)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (11, N'День интернет-рекламы, Санкт-Петербург ', N'14.09.2023', N'1', 78)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (12, N'День открытых дверей в IT ', N'07.10.2023', N'3', 78)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (13, N'День открытых дверей ФРИИ ', N'26.09.2022', N'1', 78)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (14, N'Как IT-специалисту открыть свой учебный центр? ', N'14.04.2023', N'2', 78)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (15, N'Диалоги с Андреем Кощеевым: Стартапы и любовь - почему у них так много общего ', N'22.10.2022', N'2', 56)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (16, N'Договориться с собственником: как стать влияющим hr-специалистом ', N'20.12.2022', N'3', 45)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (17, N'Занятие по ООП ', N'16.11.2023', N'2', 56)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (18, N'Занятие по программированию ', N'13.05.2022', N'3', 34)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (19, N'UUG SPb meetup #17 ', N'15.04.2023', N'1', 23)
INSERT [dbo].[Activities] ([id], [eventName], [date], [days], [city_id]) VALUES (20, N'Занятие по LAMP ', N'03.09.2022', N'2', 54)
SET IDENTITY_INSERT [dbo].[Activities] OFF
GO
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (1, 6)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (1, 14)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (1, 16)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (2, 10)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (2, 17)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (2, 18)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (2, 19)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 1)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 2)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 4)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 5)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 7)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 8)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 9)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 11)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 12)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 13)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (3, 20)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (4, 3)
INSERT [dbo].[ActivitiesEventType] ([event_type_id], [activities_id]) VALUES (4, 15)
GO
SET IDENTITY_INSERT [dbo].[Direction] ON 

INSERT [dbo].[Direction] ([id], [name]) VALUES (1, N'ИТ
')
INSERT [dbo].[Direction] ([id], [name]) VALUES (2, N'Биг Дата
')
INSERT [dbo].[Direction] ([id], [name]) VALUES (3, N'Дизайн
')
INSERT [dbo].[Direction] ([id], [name]) VALUES (4, N'Аналитика
')
INSERT [dbo].[Direction] ([id], [name]) VALUES (5, N'Информационная безопасность
')
SET IDENTITY_INSERT [dbo].[Direction] OFF
GO
INSERT [dbo].[EventType] ([id], [name]) VALUES (1, N'IT в бизнесе
')
INSERT [dbo].[EventType] ([id], [name]) VALUES (2, N'Разработка приложений
')
INSERT [dbo].[EventType] ([id], [name]) VALUES (3, N'IT-инфраструктура
')
INSERT [dbo].[EventType] ([id], [name]) VALUES (4, N'Стартапы
')
INSERT [dbo].[EventType] ([id], [name]) VALUES (5, N'Информационная безопасность
')
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([id], [name]) VALUES (1, N'Мужской')
INSERT [dbo].[Gender] ([id], [name]) VALUES (2, N'Женский')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'Участники')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'Организаторы')
INSERT [dbo].[Role] ([id], [name]) VALUES (3, N'Модераторы')
INSERT [dbo].[Role] ([id], [name]) VALUES (4, N'Жюри')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (1, N'Соколов', N'Кирилл', N'Сергеевич', N'u07h5cod48sg@outlook.com', N'04.12.1989', 1, 10, N'7(005)110-60-20', N'9uPi5Es56C', N'foto1.jpg', 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (2, N'Сазонов', N'Максим', N'Львович', N'r7y1duqg3pfk@outlook.com', N'13.12.1988', 1, 44, N'7(021)374-43-69', N'RNscA88p98', N'foto2.jpg', 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (3, N'Кузнецова', N'Варвара', N'Святославовна', N'0p43oz8r1ydm@gmail.com', N'05.06.1988', 1, 6, N'7(892)191-70-64', N'ZY5385Agbs', N'foto3.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (4, N'Королева', N'Альфия', N'Данииловна', N'w3vy5eaihx86@tutanota.com', N'13.09.1982', 1, 72, N'7(844)869-37-25', N'9Lh64KxkX3', N'foto4.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (5, N'Агеев', N'Роман', N'Дмитриевич', N'd9w5fqty42jz@gmail.com', N'06.12.1994', 1, 97, N'7(529)880-68-27', N'43AehV8eN2', N'foto5.jpg', 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (6, N'Захарова', N'Александра', N'Николаевна', N'ugjd70qpic1a@gmail.com', N'28.01.1987', 1, 55, N'7(219)352-63-65', N'Kdx54C7sD2', N'foto6.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (7, N'Гаврилова', N'Арина', N'Петровна', N'svjkowrm4dfu@tutanota.com', N'03.12.1984', 1, 36, N'7(344)071-72-39', N'z5LA3t5U9t', N'foto7.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (8, N'Куликова', N'Анна', N'Сергеевна', N'zqpgykdl79va@tutanota.com', N'26.12.1999', 1, 22, N'7(947)948-21-85', N'Ty937UiT4h', N'foto8.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (9, N'Лебедев', N'Сергей', N'Семёнович', N'bpr4lq9x2ue5@tutanota.com', N'02.02.1980', 1, 3, N'7(648)859-40-18', N'69vkG47FHj', N'foto9.jpg', 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (10, N'Данилов', N'Макар', N'Даниилович', N'sr17ctjmio35@tutanota.com', N'21.09.1988', 1, 60, N'7(782)642-56-12', N'33CgRm62xT', N'foto10.jpg', 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (11, N'Быкова', N'Адель', N'Ростиславовна', N'lb29hedo61w5@outlook.com', N'22.05.1978', 2, 14, N'7(495)604-69-01', N'3nASCj', N'foto60.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (12, N'Брагина', N'Каторина', N'Аристарховна', N'c3rfbaekvuhj@gmail.com', N'29.03.1970', 2, 49, N'7(495)859-01-98', N'EY6CON', N'foto61.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (13, N'Юдина', N'Борислава', N'Христофоровна', N'1d6gfnu0tjq4@yahoo.com', N'04.09.1979', 2, 60, N'7(495)131-69-24', N'x2FCMA', N'foto62.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (14, N'Яковлева', N'Фия', N'Германовна', N'l5jesd3k2bq8@gmail.com', N'06.10.2001', 2, 36, N'7(495)852-22-37', N'6CmZnc', N'foto3.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (15, N'Белова', N'Беатриса', N'Валерьяновна', N'kzwqhmb03rc1@tutanota.com', N'10.06.2001', 2, 84, N'7(495)425-43-70', N'GKaQl2', N'foto4.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (16, N'Ситникова', N'Ярослава', N'Матвеевна', N'px62k7gz9ia1@gmail.com', N'10.01.1994', 2, 65, N'7(495)302-40-03', N'gn1zeJ', N'foto5.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (17, N'Щербакова', N'Фаня', N'Вениаминовна', N'rso7nk902ajx@tutanota.com', N'26.12.2003', 2, 70, N'7(495)359-37-34', N'D0LhIH', N'foto6.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (18, N'Никонова', N'Адельфина', N'Егоровна', N'h3siez45ao02@yahoo.com', N'04.07.1988', 2, 90, N'7(495)978-11-50', N'Tfyg8x', N'foto7.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (19, N'Евдокимова', N'Влада', N'Федосеевна', N'fq0yw3top7i1@outlook.com', N'28.08.1983', 2, 70, N'7(495)869-13-03', N'4AWcTT', N'foto8.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (20, N'Некрасова', N'Зара', N'Витальевна', N'q7bfyo3wujxm@yahoo.com', N'31.12.1978', 2, 59, N'7(495)151-16-44', N'd8WZW9', N'foto9.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (21, N'Константинова', N'Северина', N'Антониновна', N'iubqkxpm316j@outlook.com', N'13.01.1985', 2, 23, N'7(891)033-15-05', N'Kb6bL0', N'foto10.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (22, N'Самойлова', N'Светлана', N'Феликсовна', N'nbmazxdyr5te@gmail.com', N'09.04.2002', 2, 17, N'7(891)286-65-98', N'8JWuAh', N'foto11.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (23, N'Нестерова', N'Лия', N'Юлиановна', N'uls36ojkq8pf@yahoo.com', N'14.05.1973', 2, 98, N'7(891)995-54-91', N'eJe12A', N'foto12.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (24, N'Александрова', N'Владислава', N'Еремеевна', N'63cy7tvax54r@tutanota.com', N'01.05.1975', 2, 11, N'7(891)055-88-99', N'vYiS7w', N'foto13.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (25, N'Рожкова', N'Данна', N'Олеговна', N'2fxpeubkm84l@gmail.com', N'14.09.2000', 2, 32, N'7(891)229-83-53', N'VAgqXm', N'foto14.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (26, N'Прохорова', N'Марта', N'Ярославовна', N'8is1j6c0ofld@mail.com', N'19.03.1975', 2, 100, N'7(891)402-99-19', N'7usSPy', N'foto15.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (27, N'Капустина', N'Алира', N'Пётровна', N'o0t6mxl4jg8r@outlook.com', N'06.01.1976', 2, 60, N'7(891)155-54-69', N'jKXKG1', N'foto16.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (28, N'Кононова', N'Эрида', N'Константиновна', N'fp721k3qahuj@yahoo.com', N'28.06.1999', 2, 1, N'7(891)243-04-28', N'gnkPcG', N'foto17.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (29, N'Власова', N'Элоиза', N'Владиславовна', N'675dy8cftjxp@gmail.com', N'20.05.1977', 2, 86, N'7(891)584-93-85', N'nYc7At', N'foto18.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (30, N'Овчинникова', N'Ася', N'Руслановна', N'4n0pg7u8wte3@gmail.com', N'09.05.1971', 2, 92, N'7(891)887-89-77', N'CPzgMp', N'foto19.jpg', 2, NULL, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (52, N'Федотова', N'Варвара', N'Владимировна', N'79mo62va0nl8@tutanota.com', N'20.01.1961', 3, 22, N'7(161)236-96-68', N'9rm52KpS7C', N'foto9.jpg', 2, 1, 1)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (53, N'Горбунов', N'Георгий', N'Павлович', N'49qp76xvgrno@tutanota.com', N'18.07.1994', 3, 76, N'7(831)280-59-15', N'2Bm32Zs2Fk', N'foto10.jpg', 1, 1, 1)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (54, N'Сальников', N'Павел', N'Ильич', N'9lytseiqgw8v@gmail.com', N'30.06.1970', 3, 57, N'7(770)941-66-58', N'RaY449f9nV', N'foto8.jpg', 1, 2, 2)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (55, N'Егоров', N'Захар', N'Максимович', N'bl7nd3pu0hcf@mail.com', N'27.06.1983', 3, 32, N'7(157)269-34-11', N'7M7L9tdAi9', N'foto11.jpg', 1, 3, 3)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (56, N'Муратов', N'Марк', N'Захарович', N'9g71x0wfteoi@mail.com', N'16.10.1988', 3, 99, N'7(707)841-95-09', N'J8a2D94akG', N'foto12.jpg', 1, 2, 2)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (57, N'Герасимова', N'Елизавета', N'Николаевна', N'fxgzh37b0pe9@tutanota.com', N'05.09.1966', 3, 16, N'7(295)745-82-16', N'ZHp8248ufG', N'foto13.jpg', 2, 4, 4)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (58, N'Корнеев', N'Михаил', N'Даниэльевич', N'bkdcjrsfi5em@yahoo.com', N'21.06.1982', 3, 14, N'7(327)993-70-00', N'47kLp4S9Su', N'foto14.jpg', 1, 1, 1)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (59, N'Андреев', N'Артём', N'Егорович', N'm4zr5hqyi3nf@gmail.com', N'10.10.1967', 3, 27, N'7(410)804-36-17', N'7hb6JS86Vx', N'foto16.jpg', 1, 5, 5)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (60, N'Сотников', N'Дамир', N'Семёнович', N'ays9tniegwrq@mail.com', N'04.04.1953', 3, 37, N'7(050)677-95-47', N'84idXfL6C9', N'foto17.jpg', 1, 2, 2)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (61, N'Авдеев', N'Максим', N'Макарович', N'4d1x2r9aof8i@yahoo.com', N'23.06.1964', 3, 38, N'7(402)123-63-16', N'Hhg66Y56rR', N'foto18.jpg', 1, 4, 4)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (62, N'Григорьев', N'Владислав', N'Даниилович', N'fqshun5c9v4g@outlook.com', N'23.02.1992', 3, 19, N'7(069)311-51-19', N'Bm5SCx237i', N'foto19.jpg', 1, 4, 4)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (63, N'Николаев', N'Кирилл', N'Михайлович', N'2czfm70k35qs@outlook.com', N'11.03.1961', 3, 90, N'7(985)606-72-08', N'EDFk2i789j', N'foto20.jpg', 1, 5, 5)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (64, N'Морозов', N'Никита', N'Александрович', N'7edawv8g3ot6@mail.com', N'28.01.1984', 3, 16, N'7(348)145-84-91', N'8akRCn74P8', N'foto21.jpg', 1, 3, 3)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (65, N'Михеева', N'Елизавета', N'Матвеевна', N'npkmwxs246gz@yahoo.com', N'09.02.1991', 3, 56, N'7(067)662-34-75', N'G488yc6uJM', N'foto22.jpg', 2, 3, 3)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (66, N'Иванова', N'Алиса', N'Викторовна', N'7pkwlaqgo0hs@mail.com', N'09.06.1979', 3, 80, N'7(791)027-55-24', N'vn2S7Vu55P', N'foto23.jpg', 2, 3, 3)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (67, N'Масленникова', N'Милана', N'Никитична', N's45quhwda6fl@mail.com', N'20.11.1982', 3, 55, N'7(358)134-29-59', N'zDp38H27vG', N'foto24.jpg', 2, 5, 5)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (68, N'Шульгина', N'Анастасия', N'Матвеевна', N'f4u5rjgowiem@tutanota.com', N'17.03.1954', 3, 18, N'7(850)884-96-67', N'cs2FE34f8J', N'foto25.jpg', 2, 5, 5)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (69, N'Безрукова', N'Наталья', N'Тимофеевна', N'x4k2tno0vs3a@tutanota.com', N'17.03.1976', 3, 29, N'7(824)641-40-28', N'3uU6Utk72P', N'foto26.jpg', 2, 2, 2)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (70, N'Власов', N'Илья', N'Львович', N'dn30s8ibum4p@gmail.com', N'02.10.1972', 3, 93, N'7(571)591-80-06', N'9F6CCxv5k7', N'foto27.jpg', 1, 4, 4)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (71, N'Зуева', N'Анна', N'Максимовна', N'gs679zhi3uy5@yahoo.com', N'17.05.1975', 3, 84, N'7(551)209-44-60', N't6yF276MMm', N'foto28.jpg', 2, 5, 5)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (72, N'Пантелеев', N'Богдан', N'Кириллович', N'xo1b08c2t5lh@yahoo.com', N'06.06.1970', 3, 87, N'7(700)561-72-66', N'p2MZ3j7H5m', N'foto29.jpg', 1, 2, 2)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (73, N'Волков', N'Платон', N'Дамирович', N'reinger.magdalen@gmail.com', N'06.22.1989', 4, 72, N'7(606)086-19-19', N'v2JOIc', N'foto8.jpg', 1, 4, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (74, N'Фомичёв', N'Аристарх', N'Тихонович', N'rhett.smitham@yahoo.com', N'12.28.1995', 4, 34, N'7(607)883-99-91', N'vgrGZP', N'foto9.jpg', 1, 5, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (75, N'Бурова', N'Сафина', N'Анатольевна', N'athena.hodkiewicz@mann.com', N'09.09.1965', 4, 64, N'7(155)941-05-77', N'PHlDV3', N'foto10.jpg', 2, 1, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (76, N'Мамонтова', N'Таира', N'Федотовна', N'sbrakus@bergstrom.info', N'10.29.1979', 4, 84, N'7(636)565-27-69', N'ZG2clQ', N'foto11.jpg', 2, 5, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (77, N'Исакова', N'Пелагея', N'Святославовна', N'walker.shaina@yahoo.com', N'09.24.1961', 4, 34, N'7(525)261-42-64', N'MKh7sD', N'foto12.jpg', 2, 5, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (78, N'Соболева', N'Луиза', N'Рудольфовна', N'mbergstrom@bosco.com', N'12.16.1974', 4, 84, N'7(745)716-48-11', N'YEcC5B', N'foto13.jpg', 2, 2, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (79, N'Кабанова', N'Раиса', N'Владимировна', N'charity.corwin@conn.com', N'05.27.1982', 4, 20, N'7(380)651-90-01', N'dMT5cJ', N'foto14.jpg', 2, 2, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (80, N'Мишин', N'Мечеслав', N'Адольфович', N'yessenia.kiehn@hotmail.com', N'08.28.1975', 4, 15, N'7(197)654-90-76', N'7fWj2t', N'foto15.jpg', 1, 1, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (81, N'Емельянов', N'Любовь', N'Даниилович', N'dietrich.dale@zboncak.com', N'09.06.1990', 4, 56, N'7(317)423-70-41', N'c8LE5Y', N'foto16.jpg', 1, 5, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (82, N'Васильев', N'Федор', N'Антонович', N'abigail21@yahoo.com', N'01.23.1992', 4, 24, N'7(061)884-48-25', N'MTlkMB', N'foto17.jpg', 1, 5, NULL)
INSERT [dbo].[Users] ([id], [surname], [name], [lastname], [email], [birth], [role_id], [country_id], [phone], [password], [PhotoPath], [gender_id], [direction_id], [event_id]) VALUES (83, N'Фамилия', N'Имя', N'Отчество', N'user@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ActivitiesEventType]  WITH CHECK ADD  CONSTRAINT [FK_EventTypeEvent_Event] FOREIGN KEY([activities_id])
REFERENCES [dbo].[Activities] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivitiesEventType] CHECK CONSTRAINT [FK_EventTypeEvent_Event]
GO
ALTER TABLE [dbo].[ActivitiesEventType]  WITH CHECK ADD  CONSTRAINT [FK_EventTypeEvent_EventType] FOREIGN KEY([event_type_id])
REFERENCES [dbo].[EventType] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActivitiesEventType] CHECK CONSTRAINT [FK_EventTypeEvent_EventType]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Direction] FOREIGN KEY([direction_id])
REFERENCES [dbo].[Direction] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Direction]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Events] FOREIGN KEY([event_id])
REFERENCES [dbo].[EventType] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Events]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[Gender] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Gender]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
