<Query Kind="Statements" />

//Obtenir tous les problèmes contenant une liste de mots-clés (tous les produits)
List<string> keyWords = new List<string> { "utilisateur", "application" };

Tickets
.ToList()
.Where(t=>  keyWords.Any(keyword => t.Problem.Contains(keyword, StringComparison.OrdinalIgnoreCase)))
.Dump();