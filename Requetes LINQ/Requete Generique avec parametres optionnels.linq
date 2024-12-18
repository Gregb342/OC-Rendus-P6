<Query Kind="Statements" />

// logique pour requete Linq avec parametre optionnels. 
int? versionId = 6; 
int? statusId = 1 ; 
DateOnly? startDate = new DateOnly(2023, 1, 1);
DateOnly? endDate = new DateOnly(2023, 8, 1);

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