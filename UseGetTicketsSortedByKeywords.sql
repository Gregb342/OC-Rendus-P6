-- Cr�er une table de mots-cl�s
DECLARE @Keywords KeywordList;
INSERT INTO @Keywords VALUES ('utilisateurs');

-- Appeler la proc�dure stock�e
EXEC GetTicketsSortedByKeywords @Keywords;
