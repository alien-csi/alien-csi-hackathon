## Nodes file format
`id,label,kingdom,gbifkey,occupancy,alien`

`LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS line
CREATE (:species {id:line.id, alien: toBoolean(line.alien), kingdom:line.kingdom,occupancy:toInteger(line.occupancy),gbifkey:toInteger(line.gbifkey),latinname:line.label})`

## Edges file format
`Source,Target,Type,Id,Label,timeset,Weight,interaction,citation,doi`
`Stenarella domator,Sceliphron caementarium,Directed,0,parasitoidOf,,1`

`LOAD CSV WITH HEADERS FROM "file:///edges.csv" AS row
WITH row
MERGE(node0:species {id : row.source})
MERGE(node1:species {id : row.target})
WITH node0, node1, row
CALL apoc.create.relationship(node0, row.interaction, {doi:row.doi,citation:row.citation,reference:row.reference,referenceDOI:row.referenceDOI,referenceURL:row.referenceURL}, node1) YIELD rel
RETURN *'

## Adding a constraint also means there is an index created
`CREATE CONSTRAINT ON (n:species) ASSERT (n.id) IS UNIQUE`

`MATCH (wasp:species {latinname: 'Sceliphron caementarium'})
RETURN wasp`

`MATCH (ee:Node) WHERE ee.id = 'Sceliphron caementarium' RETURN ee;`

## Add a cultivated property to all species nodes
`MATCH (n:species)
SET n.cultivated = False
RETURN n`

## Add a cultivated property for crop plants and domestic farm animals 

`LOAD CSV FROM "file:///foodorganisms.txt" AS csvLine
MERGE (n:species {id:csvLine[0]})
ON MATCH SET n.cultivated = True`

## Harmonia+ questions

###  Section A4a - Impacts: environmental targets

#### a13 The Organism has a(n) ... effect on native species, through predation, parasitism or herbivory:
`MATCH (hornet:species {latinname: 'Vespa velutina'})-[r:eats|hasHost|parasiteOf|parasitoidOf|preysOn]->(prey:species {alien:false})
RETURN hornet.latinname, type(r),prey.latinname, prey.kingdom, r.reference, r.referenceDOI`

#### a14. The Organism has a (...) effect on native species, through competition:


#### a15. The Organism has a(n) (...) effect on native species, through interbreeding:

#### a16. The Organism has a (...) effect on native species, by hosting pathogens or parasites that are harmful to them.

`MATCH (p:species)-[r:hasHost|parasiteOf|parasitoidOf]->(nativehost:species {alien:false})`
`WHERE EXISTS {`
  `(p:species)-[:hasHost|parasiteOf|parasitoidOf]->(host:species {latinname: 'Quercus robur'})`
`}
RETURN p, r, nativehost`

### Section A4b - Impacts: plant targets

#### a19. The Organism has a(n) (...) effect on plant targets, through herbivory or parasitism.

`MATCH (hornet:species {latinname: 'Sceliphron caementarium'})-[:eats|hasHost|parasiteOf]->(prey:species {cultivated:true, kingdom: 'Plantae'})
RETURN prey.latinname, prey.kingdom`

#### a20. The Organism has a(n) (...) effect on plant targets, through competition.

#### a21. The Organism has a(n) (...) effect on plant targets, by interbreeding with related organisms or with the target itself.

#### a22. The Organism has a (...) effect on plant targets, by affecting the cultivation system’s integrity.

MATCH (source:species {latinname: 'Vespa velutina'})-[r]->(target:species {kingdom:"Plantae"})
WHERE (target.cultivated=true)
RETURN source.latinname,type(r),target.latinname, r.citation, r.doi, r.reference, r.referenceURL

#### a23. The Organism has a(n) (...) effect on plant targets, by hosting pathogens or parasites that are harmful to them:

'MATCH (p:species)-[r:hasHost|parasiteOf]->(nativehost:species {alien:false})
WHERE EXISTS {
    (p:species)-[:eats|hasHost|parasiteOf]->(host:species {latinname: 'Cirsium arvense'})
}
RETURN p, r, nativehost'

### Section A4c - Impacts: animal targets

#### a24. The Organism has a(n) (...) effect on individual animal health or animal production, through predation or parasitism.

'MATCH (source:species {latinname: 'Sceliphron caementarium'})-[r:eats|hasHost|parasiteOf|parasitoidOf]->(target:species {kingdom:"Animalia"})
WHERE (target.cultivated=true)
RETURN source.latinname,type(r),target.latinname, r.citation, r.doi, r.reference, r.referenceURL'

#### a25. The Organism has a (...) effect on individual animal health or animal production, by having properties that are hazardous upon contact.

'MATCH (source:species {latinname: 'Vespa velutina'})-[r]->(target:species {cultivated: true, kingdom: 'Animalia'})
RETURN source.latinname,type(r),target.latinname, r.citation, r.doi, r.reference, r.referenceURL'

#### a26. The Organism has a(n) (...) effect on individual animal health or animal production, by hosting pathogens or parasites that are harmful to them.

### Section A4d - Impacts: human targets

#### a27. The Organism has a(n) (...) effect on human health, through parasitism.

'MATCH (s:species {latinname:'Vespa velutina'})-[r:]->(prey:species {latinname:'Homo sapiens'})
RETURN s.latinname, type(r),prey.latinname, r.citation, r.doi, r.reference, r.referenceDOI, r.referenceURL'

#### a28. The Organism has a (...) effect on human health, by having properties that are hazardous upon contact.

#### a29. The Organism has a(n) (...) effect on the health of human targets, by hosting pathogens or parasites that are harmful to them.

### Section A5a – Ecosystem services

#### a31. The Organism has a (…) effect on provisioning services.
