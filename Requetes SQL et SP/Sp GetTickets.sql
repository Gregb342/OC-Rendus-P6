USE [NexaWorks_Ticketting]
GO
/****** Object:  StoredProcedure [dbo].[GetTickets]    Script Date: 18/12/2024 16:27:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bouteillier Gregoire
-- Create date: 04/12/2024
-- Description:	Procédure générique pour obtenir des tickets, avec parametres optionnels.
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[GetTickets] 
	-- Add the parameters for the stored procedure here
	@productId int = NULL, 
	@versionId int = NULL,
	@statusId int = NULL,
	@creationDateFirstValue date = null,
	@creationDateSecondValue date = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.Tickets 
	WHERE (@productId IS NULL OR productId = @productId)
	AND (@versionId IS NULL OR versionId = @versionId)
	AND (@StatusId IS NULL OR statusId = @StatusId)
	AND ((@creationDateFirstValue IS NULL AND @creationDateSecondValue IS NULL) 
		OR (creationDate BETWEEN ISNULL(@creationDateFirstValue, '1900-01-01') 
		AND ISNULL(@creationDateSecondValue, '9999-12-31'))
		);
END
