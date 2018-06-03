CREATE TABLE [dbo].[News] (
    [News_ID]        INT             IDENTITY (1, 1) NOT NULL,
    [News_Title]     NVARCHAR (50)   NOT NULL,
    [News_Time]      DATETIME        NOT NULL,
    [News_Conentent] NVARCHAR (4000) NOT NULL,
    [News_Img]       NCHAR (50)      NULL,
    [News_Num]       INT             CONSTRAINT [DF_News_News_Num] DEFAULT ((1)) NOT NULL,
    [News_Class]     NVARCHAR (50)   NULL,
    [News_Img2]      NCHAR (50)      NULL,
    [News_Img3]      NCHAR (50)      NULL,
    CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED ([News_ID] ASC)
);

