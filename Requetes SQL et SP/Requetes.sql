USE NexaWorks_Ticketting;

-- Requ�tes
--Obtenir tous les probl�mes en cours (tous les produits)
SELECT * FROM dbo.Tickets;

-- Obtenir tous les probl�mes en cours pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productID = 3;

-- Obtenir tous les probl�mes en cours pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productID = 3 
AND versionId = 1;

-- Obtenir tous les probl�mes rencontr�s au cours d�une p�riode donn�e pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets
WHERE productID = 3 
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les probl�mes rencontr�s au cours d�une p�riode donn�e pour un produit (une seule version)
SELECT * FROM dbo.Tickets
WHERE productID = 3 
AND creationDate BETWEEN '2023-01-01' AND '2023-09-01'
AND versionId = 1;

-- Obtenir tous les probl�mes en cours contenant une liste de mots-cl�s (tous les produits)
SELECT * FROM dbo.Tickets 
WHERE problem LIKE '%application%' AND
problem LIKE '%interface%';

-- Obtenir tous les probl�mes en cours pour un produit contenant une liste de mots-cl�s (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%interface%';

-- Obtenir tous les probl�mes en cours pour un produit contenant une liste de mots-cl�s (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les probl�mes rencontr�s au cours d�une p�riode donn�e pour un produit contenant une liste de mots-cl�s (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%message%'
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les probl�mes rencontr�s au cours d�une p�riode donn�e pour un produit contenant une liste de mots-cl�s (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%'
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les probl�mes r�solus (tous les produits)
SELECT * FROM dbo.Tickets
WHERE statusId = 1;

-- Obtenir tous les probl�mes r�solus pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2;

-- Obtenir tous les probl�mes r�solus pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1;

-- Obtenir tous les probl�mes r�solus au cours d�une p�riode donn�e pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les probl�mes r�solus au cours d�une p�riode donn�e pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les probl�mes r�solus contenant une liste de mots-cl�s (tous les produits)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les probl�mes r�solus pour un produit contenant une liste de mots-cl�s (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les probl�mes r�solus pour un produit contenant une liste de mots-cl�s (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les probl�mes r�solus au cours d�une p�riode donn�e pour un produit contenant une liste de mots-cl�s (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01'
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les probl�mes r�solus au cours d�une p�riode donn�e pour un produit contenant une liste de mots-cl�s (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01'
AND problem LIKE '%application%' 
AND problem LIKE '%message%'

-- cr�ation d'un type table utilisateur pour g�rer la liste des mots cl�s 
CREATE TYPE KeywordList AS TABLE (
    Keyword NVARCHAR(255) NOT NULL
);
GO

