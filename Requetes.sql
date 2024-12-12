USE NexaWorks_Ticketting;

-- Requêtes
--Obtenir tous les problèmes en cours (tous les produits)
SELECT * FROM dbo.Tickets;

-- Obtenir tous les problèmes en cours pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productID = 3;

-- Obtenir tous les problèmes en cours pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productID = 3 
AND versionId = 1;

-- Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets
WHERE productID = 3 
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit (une seule version)
SELECT * FROM dbo.Tickets
WHERE productID = 3 
AND creationDate BETWEEN '2023-01-01' AND '2023-09-01'
AND versionId = 1;

-- Obtenir tous les problèmes en cours contenant une liste de mots-clés (tous les produits)
SELECT * FROM dbo.Tickets 
WHERE problem LIKE '%application%' AND
problem LIKE '%interface%';

-- Obtenir tous les problèmes en cours pour un produit contenant une liste de mots-clés (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%interface%';

-- Obtenir tous les problèmes en cours pour un produit contenant une liste de mots-clés (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit contenant une liste de mots-clés (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%message%'
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit contenant une liste de mots-clés (une seule version)
SELECT * FROM dbo.Tickets 
WHERE productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%'
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les problèmes résolus (tous les produits)
SELECT * FROM dbo.Tickets
WHERE statusId = 1;

-- Obtenir tous les problèmes résolus pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2;

-- Obtenir tous les problèmes résolus pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1;

-- Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01';

-- Obtenir tous les problèmes résolus contenant une liste de mots-clés (tous les produits)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les problèmes résolus pour un produit contenant une liste de mots-clés (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les problèmes résolus pour un produit contenant une liste de mots-clés (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit contenant une liste de mots-clés (toutes les versions)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01'
AND problem LIKE '%application%' 
AND problem LIKE '%message%';

-- Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit contenant une liste de mots-clés (une seule version)
SELECT * FROM dbo.Tickets 
WHERE statusId = 1
AND productId = 2
AND versionId = 1
AND creationDate BETWEEN '2023-01-01' AND '2023-08-01'
AND problem LIKE '%application%' 
AND problem LIKE '%message%'

-- création d'un type table utilisateur pour gérer la liste des mots clés 
CREATE TYPE KeywordList AS TABLE (
    Keyword NVARCHAR(255) NOT NULL
);
GO

