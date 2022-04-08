USE [UNIVER]
GO
/****** Object:  StoredProcedure [dbo].[PSUBJECT]    Script Date: 06.04.2022 16:18:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[PSUBJECT] @param varchar(20), @cout int output AS
BEGIN
	DECLARE @count int;
	SELECT * FROM dbo.SUBJECT_T WHERE SUBJECT_T.PULPIT = @param;
	SET @count = (SELECT COUNT(*) FROM SUBJECT_T WHERE SUBJECT_T.PULPIT = @param);

	PRINT 'Params: @p = ' + @param + ' @c = ' + CAST(@cout as varchar(5));

	RETURN @count;
END;