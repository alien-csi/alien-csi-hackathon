## Nodes file format
`Id,Label,timeset,kingdom,gbifkey,occupancy,alien`

`LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS line
CREATE (:species {id:line.Id, alien: toBoolean(line.alien), kingdom:line.kingdom,occupancy:toInteger(line.occupancy),gbifkey:toInteger(line.gbifkey),latinname:line.Label})`

## Edges file format
`Source,Target,Type,Id,Label,timeset,Weight,interaction,citation,doi`
`Stenarella domator,Sceliphron caementarium,Directed,0,parasitoidOf,,1`

`LOAD CSV WITH HEADERS FROM "file:///edges.csv" AS row
WITH row
MERGE(node0:species {id : row.Source})
MERGE(node1:species {id : row.Target})
WITH node0, node1, row
CALL apoc.create.relationship(node0, row.Label, {doi:row.doi,citation:row.citation}, node1) YIELD rel
RETURN *`

##Adding a constraint also means there is an index created
`CREATE CONSTRAINT ON (n:species) ASSERT (n.id) IS UNIQUE

`MATCH (wasp:species {latinname: 'Sceliphron caementarium'})
RETURN wasp`

`MATCH (ee:Node) WHERE ee.id = 'Sceliphron caementarium' RETURN ee;`

## Harmonia+ questions

###  Section A4a - Impacts: environmental targets

### a13 The Organism has a(n) ... effect on native species, through predation, parasitism or herbivory:
`MATCH (hornet:species {latinname: 'Vespa velutina'})-[r:eats|hasHost|parasiteOf|parasitoidOf|preysOn]->(prey:species {alien:false})
RETURN hornet.latinname, type(r),prey.latinname, prey.kingdom, r.citation, r.doi`

### a14. The Organism has a (...) effect on native species, through competition:


### a15. The Organism has a(n) (...) effect on native species, through interbreeding:

### a16. The Organism has a (...) effect on native species, by hosting pathogens or parasites that are harmful to them.
`MATCH (p:species)-[r:hasHost|parasiteOf|parasitoidOf]->(nativehost:species {alien:false})
WHERE EXISTS {
  (p:species)-[:hasHost|parasiteOf|parasitoidOf]->(host:species {latinname: 'Quercus robur'})
}
RETURN p, r, nativehost`

## Section A4b - Impacts: plant targets

### a19. The Organism has a(n) (...) effect on plant targets, through herbivory or parasitism.
`MATCH (hornet:species {latinname: 'Vespa velutina', kingdom: 'Plantae'})-[:eats|hasHost|parasiteOf]->(prey:species {alien:false})
RETURN prey.latinname, prey.kingdom`

### a20. The Organism has a(n) (...) effect on plant targets, through competition.

### a21. The Organism has a(n) (...) effect on plant targets, by interbreeding with related organisms or with the target itself.

### a22. The Organism has a (...) effect on plant targets, by affecting the cultivation system’s integrity.

### a23. The Organism has a(n) (...) effect on plant targets, by hosting pathogens or parasites that are harmful to them:

## Section A4c - Impacts: animal targets

### a24. The Organism has a(n) (...) effect on individual animal health or animal production, through predation or parasitism.


### a25. The Organism has a (...) effect on individual animal health or animal production, by having properties that are hazardous upon contact.

### a26. The Organism has a(n) (...) effect on individual animal health or animal production, by hosting pathogens or parasites that are harmful to them.

## Section A4d - Impacts: human targets

### a27. The Organism has a(n) (...) effect on human health, through parasitism.

### a28. The Organism has a (...) effect on human health, by having properties that are hazardous upon contact.

### a29. The Organism has a(n) (...) effect on the health of human targets, by hosting pathogens or parasites that are harmful to them.

## Section A5a – Ecosystem services

### a31. The Organism has a (…) effect on provisioning services.
