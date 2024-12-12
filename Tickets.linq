<Query Kind="Statements">
  <Connection>
    <ID>f93ce4f5-6150-429b-bc17-c8705e11dd12</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>DESKTOP-F8GHEPE</Server>
    <AllowDateOnlyTimeOnly>true</AllowDateOnlyTimeOnly>
    <DeferDatabasePopulation>true</DeferDatabasePopulation>
    <Database>NexaWorks_Ticketting</Database>
    <DriverData>
      <LegacyMFA>false</LegacyMFA>
    </DriverData>
  </Connection>
</Query>

// logique pour requete Linq avec parametre optionnels. Creer une methode ?
int? productId = 1; 
int? versionId = 6; 
int? statusId = 1 ; 
DateOnly? startDate = new DateOnly(2023, 1, 1);
DateOnly? endDate = new DateOnly(2023, 8, 1);
List<string> keyWords = new List<string> { "utilisateur", "application" };
var query = Tickets.AsQueryable();

if (productId.HasValue)
{
    query = query.Where(t => t.ProductId == productId.Value);
}

if (versionId.HasValue)
{
    query = query.Where(t => t.VersionId == versionId.Value);
}

if (statusId.HasValue)
{
    query = query.Where(t => t.StatusId == statusId.Value);
}

if (startDate is not null & endDate is not null) 
{
	query.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate);
}

query.Dump();

query = query.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)));

//Requêtes
//Obtenir tous les problèmes en cours (tous les produits)
Tickets.Dump();
//Obtenir tous les problèmes en cours pour un produit (toutes les versions)
Tickets
.Where(p => p.ProductId == 1)
.Dump();
//Obtenir tous les problèmes en cours pour un produit (une seule version)
Tickets
.Where(p => p.ProductId == 1)
.Where(v => v.VersionId == 6)
.Dump();
//Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit
//(toutes les versions)

DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);

Tickets
.Where(p => p.ProductId == 2)
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit (une
//seule version)

DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);

Tickets
.Where(p => p.ProductId == 2)
.Where(v => v.VersionId == 2)
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();

//Obtenir tous les problèmes en cours contenant une liste de mots-clés (tous les produits)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();

//Obtenir tous les problèmes en cours pour un produit contenant une liste de mots-clés (toutes
//les versions)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();
//Obtenir tous les problèmes en cours pour un produit contenant une liste de mots-clés (une
//seule version)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(v => v.VersionId == 2)
.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();
//Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit
//contenant une liste de mots-clés (toutes les versions)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes rencontrés au cours d’une période donnée pour un produit
//contenant une liste de mots-clés (une seule version)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(v => v.VersionId == 2)
.Where(t => keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes résolus (tous les produits)
Tickets
.Where(s=> s.StatusId == 1)
.Dump();
//Obtenir tous les problèmes résolus pour un produit (toutes les versions)
Tickets
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Dump();
//Obtenir tous les problèmes résolus pour un produit (une seule version)
Tickets
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(v => v.VersionId == 2)
.Dump();
//Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit (toutes
//les versions)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);

Tickets
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit (une
//seule version)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);

Tickets
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(v => v.VersionId == 2)
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes résolus contenant une liste de mots-clés (tous les produits)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(s=> s.StatusId == 1)
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();
//Obtenir tous les problèmes résolus pour un produit contenant une liste de mots-clés (toutes
//les versions)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();
//Obtenir tous les problèmes résolus pour un produit contenant une liste de mots-clés (une
//seule version)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(v => v.VersionId == 2)
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();
//Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit
//contenant une liste de mots-clés (toutes les versions)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();
//Obtenir tous les problèmes résolus au cours d’une période donnée pour un produit
//contenant une liste de mots-clés (une seule version)
DateOnly startDate = new DateOnly(2023, 1, 1);
DateOnly endDate = new DateOnly(2023, 8, 1);
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(p => p.ProductId == 2)
.Where(s=> s.StatusId == 1)
.Where(v => v.VersionId == 2)
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Where(c => c.CreationDate >= startDate && c.CreationDate <= endDate)
.Dump();