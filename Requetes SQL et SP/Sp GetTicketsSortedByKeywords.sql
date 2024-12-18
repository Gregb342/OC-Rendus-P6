USE [NexaWorks_Ticketting]
GO
/****** Object:  StoredProcedure [dbo].[GetTicketsSortedByKeywords]    Script Date: 18/12/2024 16:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bouteillier Gregoire
-- Create date: 11/12/2024
-- Description:	Procédure générique pour obtenir des tickets, tri par mots clés.
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[GetTicketsSortedByKeywords]
	-- Add the parameters for the stored procedure here
    @Keywords KeywordList READONLY
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM @Keywords)
    BEGIN
        PRINT 'Aucun mot-clé fourni';
        RETURN;
    END;

    DECLARE @SQL NVARCHAR(MAX);
    DECLARE @Condition NVARCHAR(MAX) = '';

    -- Insert statements for procedure here
    SELECT @Condition = @Condition + ' AND problem LIKE ''%' + Keyword + '%'''
    FROM @Keywords;

    SET @SQL = '
        SELECT * 
        FROM dbo.Tickets
        WHERE 1 = 1 ' + @Condition;

    EXEC sp_executesql @SQL;
END;
