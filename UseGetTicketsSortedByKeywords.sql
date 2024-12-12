-- Créer une table de mots-clés
DECLARE @Keywords KeywordList;
INSERT INTO @Keywords VALUES ('utilisateurs');

-- Appeler la procédure stockée
EXEC GetTicketsSortedByKeywords @Keywords;
