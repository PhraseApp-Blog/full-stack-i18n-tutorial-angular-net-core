USE [CarDB]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Car_ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [varchar](128) NOT NULL,
	[ImageURL] [varchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Translations](
	[Car_ID] [int] NOT NULL,
	[Culture] [varchar](6) NOT NULL,
	[ModelName] [nvarchar](200) NOT NULL,
	[CarDescription] [nvarchar](1024) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([Car_ID], [ModelName], [ImageURL]) VALUES (1, N'Mercedes-AMG A 45 S', N'https://assets.oneweb.mercedes-benz.com/bbd/images/v1/3679/e/51/5b48569fe4ee575565c7326a54904ce6217fc.png')
INSERT [dbo].[Car] ([Car_ID], [ModelName], [ImageURL]) VALUES (2, N'Mercedes C 300 Coupé', N'https://assets.oneweb.mercedes-benz.com/bbd/images/v1/3679/e/b3/f159c1ea41184f28be21161463f95d42bdb01.png')
INSERT [dbo].[Car] ([Car_ID], [ModelName], [ImageURL]) VALUES (3, N'Mercedes-AMG E 53', N'https://assets.oneweb.mercedes-benz.com/images/vmds/mvp/e-class_800_050_middle.png')
INSERT [dbo].[Car] ([Car_ID], [ModelName], [ImageURL]) VALUES (4, N'Mercedes-Benz GLC Coupé', N'https://assets.oneweb.mercedes-benz.com/bbd/images/v1/3679/0/b0/8f5be1660c2d3c0b2d7bf1da08eed0175ee84.png')
SET IDENTITY_INSERT [dbo].[Car] OFF
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (1, N'hi', N'मर्सिडीज-एएमजी ए 45 एस', N'भावनात्मक, चुस्त और डिजिटल: ए 35 4 मैटिक मर्सिडीज-एएमजी के साथ ड्राइविंग प्रदर्शन की दुनिया में पूरी तरह से एक नया प्रवेश स्तर का मॉडल पेश कर रहा है।')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (2, N'hi', N'मर्सिडीज सी 300 कूप', N'नई C 300 कूपे ड्राइविंग मस्ती और एक आकर्षक अपील के साथ बहुत प्रभावित करती है: उच्च अंत प्रौद्योगिकियों और दृष्टिकोण के साथ एक नई गतिशील स्पोर्ट्स कार।')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (3, N'hi', N'मर्सिडीज-एएमजी ई 53', N'मर्सिडीज-एएमजी व्यवस्थित रूप से अपनी ब्रांड पहचान को मजबूत करने के लिए जारी है: नए ई 53 4 एमएटीआईसी + कूपे और कैब्रियोलेट को अब ऊर्ध्वाधर एएमजी-विशिष्ट रेडिएटर ग्रिल के साथ ऊर्ध्वाधर लॉरेज भी दिया गया है। उनके ए-आकार के डिजाइन और चापलूसी वाले ऑल-एलईडी हेडलैम्प्स एक चौड़ाई-बल, शक्तिशाली प्रभाव पैदा करते हैं।')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (4, N'hi', N'मर्सिडीज-बेंज जीएलसी कूपे', N'ऐसे व्यक्तित्व हैं जिन्हें आप तुरंत नोटिस करते हैं। उनके रूप के कारण। उनका आत्म-आश्वासन। और उनका अनोखा चरित्र। नई जीएलसी कूपे एक एसयूवी और एक कूप की सबसे अच्छी विशेषताओं के संयोजन के समान है।')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (1, N'en', N'Mercedes-AMG A 45 S', N'Emotional, agile and digital: with the A 35 4MATIC Mercedes-AMG is presenting a completely new entry-level model in the world of driving performance.')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (2, N'en', N'Mercedes C 300 Coupé', N'The new C 300 Coupé impresses with plenty of driving fun and a beguiling appeal: a new dynamic sports car with high-end technologies and attitude.')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (3, N'en', N'Mercedes-AMG E 53', N'Mercedes-AMG systematically continues to strengthen its brand identity: the new E 53 4MATIC+ Coupé and Cabriolet have now also been given the characteristic AMG-specific radiator grille with vertical louvres. Their A-shaped design and the flatter all-LED headlamps create a width-emphasising, powerful impression.')
INSERT [dbo].[Car_Translations] ([Car_ID], [Culture], [ModelName], [CarDescription]) VALUES (4, N'en', N'Mercedes-Benz GLC Coupé', N'There are personalities you notice instantly. Due to their appearance. Their self-assurance. And their unique character. The new GLC Coupé is just like that, combining the best characteristics of an SUV and a coupé.')
