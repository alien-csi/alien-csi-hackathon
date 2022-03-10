# Profiling collectors from Cayman islands and Montserat

Source of this document: https://hackmd.io/pd4_VuJkSOOgZSE673tHlQ

Source data: https://docs.google.com/spreadsheets/d/1Q3ZNklndNRrA2s2X9NEd4P36LCnKDjgLnm86T2cnJAo/edit?usp=sharing

## Workflow
### Extract the properties and identifiers from wikidata
The workflow is created and documented in a [jupyter notebook](wd_collector_profiles.ipynb)

### Results
There were 224 properties extracted from [wikidata](https://www.wikidata.org). 

These are:
|index|property|propertyLabel|propertyType|
|---|---|---|---|
|0|http://www\.wikidata.org/entity/P18|image|http://wikiba\.se/ontology#CommonsMedia|
|1|http://www\.wikidata.org/entity/P109|signature|http://wikiba\.se/ontology#CommonsMedia|
|2|http://www\.wikidata.org/entity/P213|ISNI|http://wikiba\.se/ontology#ExternalId|
|3|http://www\.wikidata.org/entity/P214|VIAF ID|http://wikiba\.se/ontology#ExternalId|
|4|http://www\.wikidata.org/entity/P227|GND ID|http://wikiba\.se/ontology#ExternalId|
|5|http://www\.wikidata.org/entity/P244|Library of Congress authority ID|http://wikiba\.se/ontology#ExternalId|
|6|http://www\.wikidata.org/entity/P245|Union List of Artist Names ID|http://wikiba\.se/ontology#ExternalId|
|7|http://www\.wikidata.org/entity/P268|Bibliothèque nationale de France ID|http://wikiba\.se/ontology#ExternalId|
|8|http://www\.wikidata.org/entity/P269|IdRef ID|http://wikiba\.se/ontology#ExternalId|
|9|http://www\.wikidata.org/entity/P271|CiNii author ID \(books)|http://wikiba\.se/ontology#ExternalId|
|10|http://www\.wikidata.org/entity/P345|IMDb ID|http://wikiba\.se/ontology#ExternalId|
|11|http://www\.wikidata.org/entity/P349|National Diet Library ID|http://wikiba\.se/ontology#ExternalId|
|12|http://www\.wikidata.org/entity/P396|SBN author ID|http://wikiba\.se/ontology#ExternalId|
|13|http://www\.wikidata.org/entity/P409|Libraries Australia ID|http://wikiba\.se/ontology#ExternalId|
|14|http://www\.wikidata.org/entity/P428|botanist author abbreviation|http://wikiba\.se/ontology#ExternalId|
|15|http://www\.wikidata.org/entity/P434|MusicBrainz artist ID|http://wikiba\.se/ontology#ExternalId|
|16|http://www\.wikidata.org/entity/P496|ORCID iD|http://wikiba\.se/ontology#ExternalId|
|17|http://www\.wikidata.org/entity/P535|Find a Grave memorial ID|http://wikiba\.se/ontology#ExternalId|
|18|http://www\.wikidata.org/entity/P586|IPNI author ID|http://wikiba\.se/ontology#ExternalId|
|19|http://www\.wikidata.org/entity/P640|Léonore ID|http://wikiba\.se/ontology#ExternalId|
|20|http://www\.wikidata.org/entity/P646|Freebase ID|http://wikiba\.se/ontology#ExternalId|
|21|http://www\.wikidata.org/entity/P648|Open Library ID|http://wikiba\.se/ontology#ExternalId|
|22|http://www\.wikidata.org/entity/P650|RKDartists ID|http://wikiba\.se/ontology#ExternalId|
|23|http://www\.wikidata.org/entity/P691|NKCR AUT ID|http://wikiba\.se/ontology#ExternalId|
|24|http://www\.wikidata.org/entity/P902|HDS ID|http://wikiba\.se/ontology#ExternalId|
|25|http://www\.wikidata.org/entity/P906|SELIBR ID|http://wikiba\.se/ontology#ExternalId|
|26|http://www\.wikidata.org/entity/P949|National Library of Israel ID|http://wikiba\.se/ontology#ExternalId|
|27|http://www\.wikidata.org/entity/P950|Biblioteca Nacional de España ID|http://wikiba\.se/ontology#ExternalId|
|28|http://www\.wikidata.org/entity/P1005|Portuguese National Library ID|http://wikiba\.se/ontology#ExternalId|
|29|http://www\.wikidata.org/entity/P1006|Nationale Thesaurus voor Auteurs ID|http://wikiba\.se/ontology#ExternalId|
|30|http://www\.wikidata.org/entity/P1015|NORAF ID|http://wikiba\.se/ontology#ExternalId|
|31|http://www\.wikidata.org/entity/P1017|Vatican Library ID \(former scheme)|http://wikiba\.se/ontology#ExternalId|
|32|http://www\.wikidata.org/entity/P1053|ResearcherID|http://wikiba\.se/ontology#ExternalId|
|33|http://www\.wikidata.org/entity/P1153|Scopus author ID|http://wikiba\.se/ontology#ExternalId|
|34|http://www\.wikidata.org/entity/P1207|NUKAT ID|http://wikiba\.se/ontology#ExternalId|
|35|http://www\.wikidata.org/entity/P1225|U\.S. National Archives Identifier|http://wikiba\.se/ontology#ExternalId|
|36|http://www\.wikidata.org/entity/P1233|Internet Speculative Fiction Database author ID|http://wikiba\.se/ontology#ExternalId|
|37|http://www\.wikidata.org/entity/P1273|CANTIC ID \(old)|http://wikiba\.se/ontology#ExternalId|
|38|http://www\.wikidata.org/entity/P1280|CONOR\.SI ID|http://wikiba\.se/ontology#ExternalId|
|39|http://www\.wikidata.org/entity/P1296|Gran Enciclopèdia Catalana ID|http://wikiba\.se/ontology#ExternalId|
|40|http://www\.wikidata.org/entity/P1315|NLA Trove people ID|http://wikiba\.se/ontology#ExternalId|
|41|http://www\.wikidata.org/entity/P1375|NSK ID|http://wikiba\.se/ontology#ExternalId|
|42|http://www\.wikidata.org/entity/P1415|Oxford Dictionary of National Biography ID|http://wikiba\.se/ontology#ExternalId|
|43|http://www\.wikidata.org/entity/P1417|Encyclopædia Britannica Online ID|http://wikiba\.se/ontology#ExternalId|
|44|http://www\.wikidata.org/entity/P7859|WorldCat Identities ID|http://wikiba\.se/ontology#ExternalId|
|45|http://www\.wikidata.org/entity/P7902|Deutsche Biographie \(GND) ID|http://wikiba\.se/ontology#ExternalId|
|46|http://www\.wikidata.org/entity/P7929|Roglo person ID|http://wikiba\.se/ontology#ExternalId|
|47|http://www\.wikidata.org/entity/P8034|Vatican Library VcBA ID|http://wikiba\.se/ontology#ExternalId|
|48|http://www\.wikidata.org/entity/P8179|Canadiana Name Authority ID|http://wikiba\.se/ontology#ExternalId|
|49|http://www\.wikidata.org/entity/P8189|National Library of Israel J9U ID|http://wikiba\.se/ontology#ExternalId|
|50|http://www\.wikidata.org/entity/P8219|ASUT ID|http://wikiba\.se/ontology#ExternalId|
|51|http://www\.wikidata.org/entity/P8286|Olympedia people ID|http://wikiba\.se/ontology#ExternalId|
|52|http://www\.wikidata.org/entity/P8341|Dansk Biografisk Leksikon ID|http://wikiba\.se/ontology#ExternalId|
|53|http://www\.wikidata.org/entity/P8826|edition humboldt digital ID|http://wikiba\.se/ontology#ExternalId|
|54|http://www\.wikidata.org/entity/P8902|Archives at Yale names ID|http://wikiba\.se/ontology#ExternalId|
|55|http://www\.wikidata.org/entity/P8914|ZOBODAT person ID|http://wikiba\.se/ontology#ExternalId|
|56|http://www\.wikidata.org/entity/P8947|Museo Galileo authority ID|http://wikiba\.se/ontology#ExternalId|
|57|http://www\.wikidata.org/entity/P9097|American Academy in Rome ID|http://wikiba\.se/ontology#ExternalId|
|58|http://www\.wikidata.org/entity/P9307|Fancyclopedia 3 ID|http://wikiba\.se/ontology#ExternalId|
|59|http://www\.wikidata.org/entity/P9720|fotoCH photographer ID|http://wikiba\.se/ontology#ExternalId|
|60|http://www\.wikidata.org/entity/P9984|CANTIC ID|http://wikiba\.se/ontology#ExternalId|
|61|http://www\.wikidata.org/entity/P10018|George Eastman Museum people ID|http://wikiba\.se/ontology#ExternalId|
|62|http://www\.wikidata.org/entity/P10168|Zürich Herbaria collector ID|http://wikiba\.se/ontology#ExternalId|
|63|http://www\.wikidata.org/entity/P10227|National Library of Ireland ID|http://wikiba\.se/ontology#ExternalId|
|64|http://www\.wikidata.org/entity/P10297|Google Arts & Culture entity ID|http://wikiba\.se/ontology#ExternalId|
|65|http://www\.wikidata.org/entity/P1447|Sports-Reference\.com Olympic athlete ID (archived)|http://wikiba\.se/ontology#ExternalId|
|66|http://www\.wikidata.org/entity/P1695|NLP ID \(unique)|http://wikiba\.se/ontology#ExternalId|
|67|http://www\.wikidata.org/entity/P1711|British Museum person or institution ID|http://wikiba\.se/ontology#ExternalId|
|68|http://www\.wikidata.org/entity/P1816|National Portrait Gallery \(London) person ID|http://wikiba\.se/ontology#ExternalId|
|69|http://www\.wikidata.org/entity/P1819|genealogics\.org person ID|http://wikiba\.se/ontology#ExternalId|
|70|http://www\.wikidata.org/entity/P1871|CERL Thesaurus ID|http://wikiba\.se/ontology#ExternalId|
|71|http://www\.wikidata.org/entity/P1899|LibriVox author ID|http://wikiba\.se/ontology#ExternalId|
|72|http://www\.wikidata.org/entity/P1938|Project Gutenberg author ID|http://wikiba\.se/ontology#ExternalId|
|73|http://www\.wikidata.org/entity/P1960|Google Scholar author ID|http://wikiba\.se/ontology#ExternalId|
|74|http://www\.wikidata.org/entity/P2002|Twitter username|http://wikiba\.se/ontology#ExternalId|
|75|http://www\.wikidata.org/entity/P2006|ZooBank author ID|http://wikiba\.se/ontology#ExternalId|
|76|http://www\.wikidata.org/entity/P2013|Facebook ID|http://wikiba\.se/ontology#ExternalId|
|77|http://www\.wikidata.org/entity/P2019|AllMovie person ID|http://wikiba\.se/ontology#ExternalId|
|78|http://www\.wikidata.org/entity/P2038|ResearchGate profile ID|http://wikiba\.se/ontology#ExternalId|
|79|http://www\.wikidata.org/entity/P2089|Library of Congress JukeBox ID \(former scheme)|http://wikiba\.se/ontology#ExternalId|
|80|http://www\.wikidata.org/entity/P2163|FAST ID|http://wikiba\.se/ontology#ExternalId|
|81|http://www\.wikidata.org/entity/P2174|Museum of Modern Art artist ID|http://wikiba\.se/ontology#ExternalId|
|82|http://www\.wikidata.org/entity/P2191|Vegetti Catalog of Fantastic Literature NILF ID|http://wikiba\.se/ontology#ExternalId|
|83|http://www\.wikidata.org/entity/P2349|Stuttgart Database of Scientific Illustrators ID|http://wikiba\.se/ontology#ExternalId|
|84|http://www\.wikidata.org/entity/P2381|Academic Tree ID|http://wikiba\.se/ontology#ExternalId|
|85|http://www\.wikidata.org/entity/P2383|CTHS person ID|http://wikiba\.se/ontology#ExternalId|
|86|http://www\.wikidata.org/entity/P2397|YouTube channel ID|http://wikiba\.se/ontology#ExternalId|
|87|http://www\.wikidata.org/entity/P2538|Nationalmuseum Sweden actor ID|http://wikiba\.se/ontology#ExternalId|
|88|http://www\.wikidata.org/entity/P2600|Geni\.com profile ID|http://wikiba\.se/ontology#ExternalId|
|89|http://www\.wikidata.org/entity/P2604|Kinopoisk person ID|http://wikiba\.se/ontology#ExternalId|
|90|http://www\.wikidata.org/entity/P2671|Google Knowledge Graph ID|http://wikiba\.se/ontology#ExternalId|
|91|http://www\.wikidata.org/entity/P2732|Persée author ID|http://wikiba\.se/ontology#ExternalId|
|92|http://www\.wikidata.org/entity/P2734|Unz Review author ID|http://wikiba\.se/ontology#ExternalId|
|93|http://www\.wikidata.org/entity/P2750|Photographers' Identities Catalog ID|http://wikiba\.se/ontology#ExternalId|
|94|http://www\.wikidata.org/entity/P2886|Shakeosphere person ID|http://wikiba\.se/ontology#ExternalId|
|95|http://www\.wikidata.org/entity/P2889|FamilySearch person ID|http://wikiba\.se/ontology#ExternalId|
|96|http://www\.wikidata.org/entity/P2949|WikiTree person ID|http://wikiba\.se/ontology#ExternalId|
|97|http://www\.wikidata.org/entity/P2977|LBT person ID|http://wikiba\.se/ontology#ExternalId|
|98|http://www\.wikidata.org/entity/P3029|UK National Archives ID|http://wikiba\.se/ontology#ExternalId|
|99|http://www\.wikidata.org/entity/P3065|RERO ID|http://wikiba\.se/ontology#ExternalId|
|100|http://www\.wikidata.org/entity/P3074|Grace's Guide ID|http://wikiba\.se/ontology#ExternalId|
|101|http://www\.wikidata.org/entity/P3154|Runeberg author ID|http://wikiba\.se/ontology#ExternalId|
|102|http://www\.wikidata.org/entity/P3217|Dictionary of Swedish National Biography ID|http://wikiba\.se/ontology#ExternalId|
|103|http://www\.wikidata.org/entity/P3222|NE\.se ID|http://wikiba\.se/ontology#ExternalId|
|104|http://www\.wikidata.org/entity/P3348|National Library of Greece ID|http://wikiba\.se/ontology#ExternalId|
|105|http://www\.wikidata.org/entity/P3365|Treccani ID|http://wikiba\.se/ontology#ExternalId|
|106|http://www\.wikidata.org/entity/P3368|Prabook ID|http://wikiba\.se/ontology#ExternalId|
|107|http://www\.wikidata.org/entity/P3413|Leopoldina member ID|http://wikiba\.se/ontology#ExternalId|
|108|http://www\.wikidata.org/entity/P3430|SNAC ARK ID|http://wikiba\.se/ontology#ExternalId|
|109|http://www\.wikidata.org/entity/P3544|Te Papa agent ID|http://wikiba\.se/ontology#ExternalId|
|110|http://www\.wikidata.org/entity/P3630|Babelio author ID|http://wikiba\.se/ontology#ExternalId|
|111|http://www\.wikidata.org/entity/P3762|openMLOL author ID|http://wikiba\.se/ontology#ExternalId|
|112|http://www\.wikidata.org/entity/P3782|Artnet artist ID|http://wikiba\.se/ontology#ExternalId|
|113|http://www\.wikidata.org/entity/P3807|S2A3 Biographical Database ID|http://wikiba\.se/ontology#ExternalId|
|114|http://www\.wikidata.org/entity/P3829|Publons author ID|http://wikiba\.se/ontology#ExternalId|
|115|http://www\.wikidata.org/entity/P3987|SHARE Catalogue author ID|http://wikiba\.se/ontology#ExternalId|
|116|http://www\.wikidata.org/entity/P4012|Semantic Scholar author ID|http://wikiba\.se/ontology#ExternalId|
|117|http://www\.wikidata.org/entity/P4081|BHL creator ID|http://wikiba\.se/ontology#ExternalId|
|118|http://www\.wikidata.org/entity/P4104|Carnegie Hall agent ID|http://wikiba\.se/ontology#ExternalId|
|119|http://www\.wikidata.org/entity/P4159|WeRelate person ID|http://wikiba\.se/ontology#ExternalId|
|120|http://www\.wikidata.org/entity/P4342|Store norske leksikon ID|http://wikiba\.se/ontology#ExternalId|
|121|http://www\.wikidata.org/entity/P4457|DAHR artist ID|http://wikiba\.se/ontology#ExternalId|
|122|http://www\.wikidata.org/entity/P4589|Dreadnought Project page|http://wikiba\.se/ontology#ExternalId|
|123|http://www\.wikidata.org/entity/P4629|Online Books Page author ID|http://wikiba\.se/ontology#ExternalId|
|124|http://www\.wikidata.org/entity/P4638|The Peerage person ID|http://wikiba\.se/ontology#ExternalId|
|125|http://www\.wikidata.org/entity/P4823|American National Biography ID|http://wikiba\.se/ontology#ExternalId|
|126|http://www\.wikidata.org/entity/P4890|EPHE ID|http://wikiba\.se/ontology#ExternalId|
|127|http://www\.wikidata.org/entity/P4985|TMDb person ID|http://wikiba\.se/ontology#ExternalId|
|128|http://www\.wikidata.org/entity/P5034|National Library of Korea ID|http://wikiba\.se/ontology#ExternalId|
|129|http://www\.wikidata.org/entity/P5340|American Film Institute person ID|http://wikiba\.se/ontology#ExternalId|
|130|http://www\.wikidata.org/entity/P5357|The Encyclopedia of Science Fiction ID|http://wikiba\.se/ontology#ExternalId|
|131|http://www\.wikidata.org/entity/P5361|BNB person ID|http://wikiba\.se/ontology#ExternalId|
|132|http://www\.wikidata.org/entity/P5370|Entomologists of the World ID|http://wikiba\.se/ontology#ExternalId|
|133|http://www\.wikidata.org/entity/P5375|BIU Santé person ID|http://wikiba\.se/ontology#ExternalId|
|134|http://www\.wikidata.org/entity/P5380|National Academy of Sciences member ID|http://wikiba\.se/ontology#ExternalId|
|135|http://www\.wikidata.org/entity/P5587|Libris-URI|http://wikiba\.se/ontology#ExternalId|
|136|http://www\.wikidata.org/entity/P5632|Persons of Indian Studies ID|http://wikiba\.se/ontology#ExternalId|
|137|http://www\.wikidata.org/entity/P6015|Handbook of Texas ID|http://wikiba\.se/ontology#ExternalId|
|138|http://www\.wikidata.org/entity/P6023|ResearchGate contributions ID|http://wikiba\.se/ontology#ExternalId|
|139|http://www\.wikidata.org/entity/P6178|Dimensions author ID|http://wikiba\.se/ontology#ExternalId|
|140|http://www\.wikidata.org/entity/P6264|Harvard Index of Botanists ID|http://wikiba\.se/ontology#ExternalId|
|141|http://www\.wikidata.org/entity/P6594|Guggenheim fellows ID|http://wikiba\.se/ontology#ExternalId|
|142|http://www\.wikidata.org/entity/P6605|Plant Illustrations artist ID|http://wikiba\.se/ontology#ExternalId|
|143|http://www\.wikidata.org/entity/P6734|Archaeology Data Service person ID|http://wikiba\.se/ontology#ExternalId|
|144|http://www\.wikidata.org/entity/P6812|AntWiki article ID|http://wikiba\.se/ontology#ExternalId|
|145|http://www\.wikidata.org/entity/P6821|Uppsala University Alvin ID|http://wikiba\.se/ontology#ExternalId|
|146|http://www\.wikidata.org/entity/P6944|Bionomia ID|http://wikiba\.se/ontology#ExternalId|
|147|http://www\.wikidata.org/entity/P7293|PLWABN ID|http://wikiba\.se/ontology#ExternalId|
|148|http://www\.wikidata.org/entity/P7298|Auckland Museum ID|http://wikiba\.se/ontology#ExternalId|
|149|http://www\.wikidata.org/entity/P7369|National Library of Chile ID|http://wikiba\.se/ontology#ExternalId|
|150|http://www\.wikidata.org/entity/P7695|e-WV: The West Virginia Encyclopedia ID|http://wikiba\.se/ontology#ExternalId|
|151|http://www\.wikidata.org/entity/P7699|National Library of Lithuania ID|http://wikiba\.se/ontology#ExternalId|
|152|http://www\.wikidata.org/entity/P7704|Europeana entity|http://wikiba\.se/ontology#ExternalId|
|153|http://www\.wikidata.org/entity/P1449|nickname|http://wikiba\.se/ontology#Monolingualtext|
|154|http://www\.wikidata.org/entity/P1559|name in native language|http://wikiba\.se/ontology#Monolingualtext|
|155|http://www\.wikidata.org/entity/P8687|social media followers|http://wikiba\.se/ontology#Quantity|
|156|http://www\.wikidata.org/entity/P1971|number of children|http://wikiba\.se/ontology#Quantity|
|157|http://www\.wikidata.org/entity/P373|Commons category|http://wikiba\.se/ontology#String|
|158|http://www\.wikidata.org/entity/P835|author citation \(zoology)|http://wikiba\.se/ontology#String|
|159|http://www\.wikidata.org/entity/P935|Commons gallery|http://wikiba\.se/ontology#String|
|160|http://www\.wikidata.org/entity/P1472|Commons Creator page|http://wikiba\.se/ontology#String|
|161|http://www\.wikidata.org/entity/P569|date of birth|http://wikiba\.se/ontology#Time|
|162|http://www\.wikidata.org/entity/P570|date of death|http://wikiba\.se/ontology#Time|
|163|http://www\.wikidata.org/entity/P1317|floruit|http://wikiba\.se/ontology#Time|
|164|http://www\.wikidata.org/entity/P2031|work period \(start)|http://wikiba\.se/ontology#Time|
|165|http://www\.wikidata.org/entity/P2032|work period \(end)|http://wikiba\.se/ontology#Time|
|166|http://www\.wikidata.org/entity/P973|described at URL|http://wikiba\.se/ontology#Url|
|167|http://www\.wikidata.org/entity/P8214|curriculum vitae|http://wikiba\.se/ontology#Url|
|168|http://www\.wikidata.org/entity/P2888|exact match|http://wikiba\.se/ontology#Url|
|169|http://www\.wikidata.org/entity/P8017|generational suffix|http://wikiba\.se/ontology#WikibaseForm|
|170|http://www\.wikidata.org/entity/P19|place of birth|http://wikiba\.se/ontology#WikibaseItem|
|171|http://www\.wikidata.org/entity/P20|place of death|http://wikiba\.se/ontology#WikibaseItem|
|172|http://www\.wikidata.org/entity/P21|sex or gender|http://wikiba\.se/ontology#WikibaseItem|
|173|http://www\.wikidata.org/entity/P22|father|http://wikiba\.se/ontology#WikibaseItem|
|174|http://www\.wikidata.org/entity/P25|mother|http://wikiba\.se/ontology#WikibaseItem|
|175|http://www\.wikidata.org/entity/P26|spouse|http://wikiba\.se/ontology#WikibaseItem|
|176|http://www\.wikidata.org/entity/P27|country of citizenship|http://wikiba\.se/ontology#WikibaseItem|
|177|http://www\.wikidata.org/entity/P39|position held|http://wikiba\.se/ontology#WikibaseItem|
|178|http://www\.wikidata.org/entity/P40|child|http://wikiba\.se/ontology#WikibaseItem|
|179|http://www\.wikidata.org/entity/P69|educated at|http://wikiba\.se/ontology#WikibaseItem|
|180|http://www\.wikidata.org/entity/P101|field of work|http://wikiba\.se/ontology#WikibaseItem|
|181|http://www\.wikidata.org/entity/P103|native language|http://wikiba\.se/ontology#WikibaseItem|
|182|http://www\.wikidata.org/entity/P106|occupation|http://wikiba\.se/ontology#WikibaseItem|
|183|http://www\.wikidata.org/entity/P108|employer|http://wikiba\.se/ontology#WikibaseItem|
|184|http://www\.wikidata.org/entity/P119|place of burial|http://wikiba\.se/ontology#WikibaseItem|
|185|http://www\.wikidata.org/entity/P140|religion or world view|http://wikiba\.se/ontology#WikibaseItem|
|186|http://www\.wikidata.org/entity/P166|award received|http://wikiba\.se/ontology#WikibaseItem|
|187|http://www\.wikidata.org/entity/P184|doctoral advisor|http://wikiba\.se/ontology#WikibaseItem|
|188|http://www\.wikidata.org/entity/P185|doctoral student|http://wikiba\.se/ontology#WikibaseItem|
|189|http://www\.wikidata.org/entity/P241|military branch|http://wikiba\.se/ontology#WikibaseItem|
|190|http://www\.wikidata.org/entity/P410|military rank|http://wikiba\.se/ontology#WikibaseItem|
|191|http://www\.wikidata.org/entity/P463|member of|http://wikiba\.se/ontology#WikibaseItem|
|192|http://www\.wikidata.org/entity/P485|archives at|http://wikiba\.se/ontology#WikibaseItem|
|193|http://www\.wikidata.org/entity/P509|cause of death|http://wikiba\.se/ontology#WikibaseItem|
|194|http://www\.wikidata.org/entity/P512|academic degree|http://wikiba\.se/ontology#WikibaseItem|
|195|http://www\.wikidata.org/entity/P551|residence|http://wikiba\.se/ontology#WikibaseItem|
|196|http://www\.wikidata.org/entity/P607|conflict|http://wikiba\.se/ontology#WikibaseItem|
|197|http://www\.wikidata.org/entity/P611|religious order|http://wikiba\.se/ontology#WikibaseItem|
|198|http://www\.wikidata.org/entity/P641|sport|http://wikiba\.se/ontology#WikibaseItem|
|199|http://www\.wikidata.org/entity/P734|family name|http://wikiba\.se/ontology#WikibaseItem|
|200|http://www\.wikidata.org/entity/P735|given name|http://wikiba\.se/ontology#WikibaseItem|
|201|http://www\.wikidata.org/entity/P800|notable work|http://wikiba\.se/ontology#WikibaseItem|
|202|http://www\.wikidata.org/entity/P802|student|http://wikiba\.se/ontology#WikibaseItem|
|203|http://www\.wikidata.org/entity/P910|topic's main category|http://wikiba\.se/ontology#WikibaseItem|
|204|http://www\.wikidata.org/entity/P937|work location|http://wikiba\.se/ontology#WikibaseItem|
|205|http://www\.wikidata.org/entity/P1050|medical condition|http://wikiba\.se/ontology#WikibaseItem|
|206|http://www\.wikidata.org/entity/P1066|student of|http://wikiba\.se/ontology#WikibaseItem|
|207|http://www\.wikidata.org/entity/P1196|manner of death|http://wikiba\.se/ontology#WikibaseItem|
|208|http://www\.wikidata.org/entity/P1327|partner in business or sport|http://wikiba\.se/ontology#WikibaseItem|
|209|http://www\.wikidata.org/entity/P1343|described by source|http://wikiba\.se/ontology#WikibaseItem|
|210|http://www\.wikidata.org/entity/P1344|participant in|http://wikiba\.se/ontology#WikibaseItem|
|211|http://www\.wikidata.org/entity/P1399|convicted of|http://wikiba\.se/ontology#WikibaseItem|
|212|http://www\.wikidata.org/entity/P1412|languages spoken, written or signed|http://wikiba\.se/ontology#WikibaseItem|
|213|http://www\.wikidata.org/entity/P7763|copyright status as a creator|http://wikiba\.se/ontology#WikibaseItem|
|214|http://www\.wikidata.org/entity/P8047|country of registry|http://wikiba\.se/ontology#WikibaseItem|
|215|http://www\.wikidata.org/entity/P9493|artist files at|http://wikiba\.se/ontology#WikibaseItem|
|216|http://www\.wikidata.org/entity/P1532|country for sport|http://wikiba\.se/ontology#WikibaseItem|
|217|http://www\.wikidata.org/entity/P1889|different from|http://wikiba\.se/ontology#WikibaseItem|
|218|http://www\.wikidata.org/entity/P2650|interested in|http://wikiba\.se/ontology#WikibaseItem|
|219|http://www\.wikidata.org/entity/P3342|significant person|http://wikiba\.se/ontology#WikibaseItem|
|220|http://www\.wikidata.org/entity/P3373|sibling|http://wikiba\.se/ontology#WikibaseItem|
|221|http://www\.wikidata.org/entity/P5008|on focus list of Wikimedia project|http://wikiba\.se/ontology#WikibaseItem|
|222|http://www\.wikidata.org/entity/P6379|has works in the collection|http://wikiba\.se/ontology#WikibaseItem|
|223|http://www\.wikidata.org/entity/P6872|has written for|http://wikiba\.se/ontology#WikibaseItem|
|224|http://www\.wikidata.org/entity/P6886|writing language|http://wikiba\.se/ontology#WikibaseItem|

Of these 224, 150 are external identifiers pointing to other databases where these collectors are known. These are

|index|property|propertyLabel|
|---|---|---|
|0|http://www\.wikidata.org/entity/P7859|WorldCat Identities ID|
|1|http://www\.wikidata.org/entity/P7902|Deutsche Biographie \(GND) ID|
|2|http://www\.wikidata.org/entity/P7929|Roglo person ID|
|3|http://www\.wikidata.org/entity/P8034|Vatican Library VcBA ID|
|4|http://www\.wikidata.org/entity/P8179|Canadiana Name Authority ID|
|5|http://www\.wikidata.org/entity/P8189|National Library of Israel J9U ID|
|6|http://www\.wikidata.org/entity/P8219|ASUT ID|
|7|http://www\.wikidata.org/entity/P8286|Olympedia people ID|
|8|http://www\.wikidata.org/entity/P8341|Dansk Biografisk Leksikon ID|
|9|http://www\.wikidata.org/entity/P8826|edition humboldt digital ID|
|10|http://www\.wikidata.org/entity/P8902|Archives at Yale names ID|
|11|http://www\.wikidata.org/entity/P8914|ZOBODAT person ID|
|12|http://www\.wikidata.org/entity/P8947|Museo Galileo authority ID|
|13|http://www\.wikidata.org/entity/P9097|American Academy in Rome ID|
|14|http://www\.wikidata.org/entity/P9307|Fancyclopedia 3 ID|
|15|http://www\.wikidata.org/entity/P9720|fotoCH photographer ID|
|16|http://www\.wikidata.org/entity/P9984|CANTIC ID|
|17|http://www\.wikidata.org/entity/P10018|George Eastman Museum people ID|
|18|http://www\.wikidata.org/entity/P10168|Zürich Herbaria collector ID|
|19|http://www\.wikidata.org/entity/P10227|National Library of Ireland ID|
|20|http://www\.wikidata.org/entity/P10297|Google Arts & Culture entity ID|
|21|http://www\.wikidata.org/entity/P213|ISNI|
|22|http://www\.wikidata.org/entity/P214|VIAF ID|
|23|http://www\.wikidata.org/entity/P227|GND ID|
|24|http://www\.wikidata.org/entity/P244|Library of Congress authority ID|
|25|http://www\.wikidata.org/entity/P245|Union List of Artist Names ID|
|26|http://www\.wikidata.org/entity/P268|Bibliothèque nationale de France ID|
|27|http://www\.wikidata.org/entity/P269|IdRef ID|
|28|http://www\.wikidata.org/entity/P271|CiNii author ID \(books)|
|29|http://www\.wikidata.org/entity/P345|IMDb ID|
|30|http://www\.wikidata.org/entity/P349|National Diet Library ID|
|31|http://www\.wikidata.org/entity/P396|SBN author ID|
|32|http://www\.wikidata.org/entity/P409|Libraries Australia ID|
|33|http://www\.wikidata.org/entity/P428|botanist author abbreviation|
|34|http://www\.wikidata.org/entity/P434|MusicBrainz artist ID|
|35|http://www\.wikidata.org/entity/P496|ORCID iD|
|36|http://www\.wikidata.org/entity/P535|Find a Grave memorial ID|
|37|http://www\.wikidata.org/entity/P586|IPNI author ID|
|38|http://www\.wikidata.org/entity/P640|Léonore ID|
|39|http://www\.wikidata.org/entity/P646|Freebase ID|
|40|http://www\.wikidata.org/entity/P648|Open Library ID|
|41|http://www\.wikidata.org/entity/P650|RKDartists ID|
|42|http://www\.wikidata.org/entity/P691|NKCR AUT ID|
|43|http://www\.wikidata.org/entity/P902|HDS ID|
|44|http://www\.wikidata.org/entity/P906|SELIBR ID|
|45|http://www\.wikidata.org/entity/P949|National Library of Israel ID|
|46|http://www\.wikidata.org/entity/P950|Biblioteca Nacional de España ID|
|47|http://www\.wikidata.org/entity/P1005|Portuguese National Library ID|
|48|http://www\.wikidata.org/entity/P1006|Nationale Thesaurus voor Auteurs ID|
|49|http://www\.wikidata.org/entity/P1015|NORAF ID|
|50|http://www\.wikidata.org/entity/P1017|Vatican Library ID \(former scheme)|
|51|http://www\.wikidata.org/entity/P1053|ResearcherID|
|52|http://www\.wikidata.org/entity/P1153|Scopus author ID|
|53|http://www\.wikidata.org/entity/P1207|NUKAT ID|
|54|http://www\.wikidata.org/entity/P1225|U\.S. National Archives Identifier|
|55|http://www\.wikidata.org/entity/P1233|Internet Speculative Fiction Database author ID|
|56|http://www\.wikidata.org/entity/P1273|CANTIC ID \(old)|
|57|http://www\.wikidata.org/entity/P1280|CONOR\.SI ID|
|58|http://www\.wikidata.org/entity/P1296|Gran Enciclopèdia Catalana ID|
|59|http://www\.wikidata.org/entity/P1315|NLA Trove people ID|
|60|http://www\.wikidata.org/entity/P1375|NSK ID|
|61|http://www\.wikidata.org/entity/P1415|Oxford Dictionary of National Biography ID|
|62|http://www\.wikidata.org/entity/P1417|Encyclopædia Britannica Online ID|
|63|http://www\.wikidata.org/entity/P1447|Sports-Reference\.com Olympic athlete ID (archived)|
|64|http://www\.wikidata.org/entity/P1695|NLP ID \(unique)|
|65|http://www\.wikidata.org/entity/P1711|British Museum person or institution ID|
|66|http://www\.wikidata.org/entity/P1816|National Portrait Gallery \(London) person ID|
|67|http://www\.wikidata.org/entity/P1819|genealogics\.org person ID|
|68|http://www\.wikidata.org/entity/P1871|CERL Thesaurus ID|
|69|http://www\.wikidata.org/entity/P1899|LibriVox author ID|
|70|http://www\.wikidata.org/entity/P1938|Project Gutenberg author ID|
|71|http://www\.wikidata.org/entity/P1960|Google Scholar author ID|
|72|http://www\.wikidata.org/entity/P2002|Twitter username|
|73|http://www\.wikidata.org/entity/P2006|ZooBank author ID|
|74|http://www\.wikidata.org/entity/P2013|Facebook ID|
|75|http://www\.wikidata.org/entity/P2019|AllMovie person ID|
|76|http://www\.wikidata.org/entity/P2038|ResearchGate profile ID|
|77|http://www\.wikidata.org/entity/P2089|Library of Congress JukeBox ID \(former scheme)|
|78|http://www\.wikidata.org/entity/P2163|FAST ID|
|79|http://www\.wikidata.org/entity/P2174|Museum of Modern Art artist ID|
|80|http://www\.wikidata.org/entity/P2191|Vegetti Catalog of Fantastic Literature NILF ID|
|81|http://www\.wikidata.org/entity/P2349|Stuttgart Database of Scientific Illustrators ID|
|82|http://www\.wikidata.org/entity/P2381|Academic Tree ID|
|83|http://www\.wikidata.org/entity/P2383|CTHS person ID|
|84|http://www\.wikidata.org/entity/P2397|YouTube channel ID|
|85|http://www\.wikidata.org/entity/P2538|Nationalmuseum Sweden actor ID|
|86|http://www\.wikidata.org/entity/P2600|Geni\.com profile ID|
|87|http://www\.wikidata.org/entity/P2604|Kinopoisk person ID|
|88|http://www\.wikidata.org/entity/P2671|Google Knowledge Graph ID|
|89|http://www\.wikidata.org/entity/P2732|Persée author ID|
|90|http://www\.wikidata.org/entity/P2734|Unz Review author ID|
|91|http://www\.wikidata.org/entity/P2750|Photographers' Identities Catalog ID|
|92|http://www\.wikidata.org/entity/P2886|Shakeosphere person ID|
|93|http://www\.wikidata.org/entity/P2889|FamilySearch person ID|
|94|http://www\.wikidata.org/entity/P2949|WikiTree person ID|
|95|http://www\.wikidata.org/entity/P2977|LBT person ID|
|96|http://www\.wikidata.org/entity/P3029|UK National Archives ID|
|97|http://www\.wikidata.org/entity/P3065|RERO ID|
|98|http://www\.wikidata.org/entity/P3074|Grace's Guide ID|
|99|http://www\.wikidata.org/entity/P3154|Runeberg author ID|
|100|http://www\.wikidata.org/entity/P3217|Dictionary of Swedish National Biography ID|
|101|http://www\.wikidata.org/entity/P3222|NE\.se ID|
|102|http://www\.wikidata.org/entity/P3348|National Library of Greece ID|
|103|http://www\.wikidata.org/entity/P3365|Treccani ID|
|104|http://www\.wikidata.org/entity/P3368|Prabook ID|
|105|http://www\.wikidata.org/entity/P3413|Leopoldina member ID|
|106|http://www\.wikidata.org/entity/P3430|SNAC ARK ID|
|107|http://www\.wikidata.org/entity/P3544|Te Papa agent ID|
|108|http://www\.wikidata.org/entity/P3630|Babelio author ID|
|109|http://www\.wikidata.org/entity/P3762|openMLOL author ID|
|110|http://www\.wikidata.org/entity/P3782|Artnet artist ID|
|111|http://www\.wikidata.org/entity/P3807|S2A3 Biographical Database ID|
|112|http://www\.wikidata.org/entity/P3829|Publons author ID|
|113|http://www\.wikidata.org/entity/P3987|SHARE Catalogue author ID|
|114|http://www\.wikidata.org/entity/P4012|Semantic Scholar author ID|
|115|http://www\.wikidata.org/entity/P4081|BHL creator ID|
|116|http://www\.wikidata.org/entity/P4104|Carnegie Hall agent ID|
|117|http://www\.wikidata.org/entity/P4159|WeRelate person ID|
|118|http://www\.wikidata.org/entity/P4342|Store norske leksikon ID|
|119|http://www\.wikidata.org/entity/P4457|DAHR artist ID|
|120|http://www\.wikidata.org/entity/P4589|Dreadnought Project page|
|121|http://www\.wikidata.org/entity/P4629|Online Books Page author ID|
|122|http://www\.wikidata.org/entity/P4638|The Peerage person ID|
|123|http://www\.wikidata.org/entity/P4823|American National Biography ID|
|124|http://www\.wikidata.org/entity/P4890|EPHE ID|
|125|http://www\.wikidata.org/entity/P4985|TMDb person ID|
|126|http://www\.wikidata.org/entity/P5034|National Library of Korea ID|
|127|http://www\.wikidata.org/entity/P5340|American Film Institute person ID|
|128|http://www\.wikidata.org/entity/P5357|The Encyclopedia of Science Fiction ID|
|129|http://www\.wikidata.org/entity/P5361|BNB person ID|
|130|http://www\.wikidata.org/entity/P5370|Entomologists of the World ID|
|131|http://www\.wikidata.org/entity/P5375|BIU Santé person ID|
|132|http://www\.wikidata.org/entity/P5380|National Academy of Sciences member ID|
|133|http://www\.wikidata.org/entity/P5587|Libris-URI|
|134|http://www\.wikidata.org/entity/P5632|Persons of Indian Studies ID|
|135|http://www\.wikidata.org/entity/P6015|Handbook of Texas ID|
|136|http://www\.wikidata.org/entity/P6023|ResearchGate contributions ID|
|137|http://www\.wikidata.org/entity/P6178|Dimensions author ID|
|138|http://www\.wikidata.org/entity/P6264|Harvard Index of Botanists ID|
|139|http://www\.wikidata.org/entity/P6594|Guggenheim fellows ID|
|140|http://www\.wikidata.org/entity/P6605|Plant Illustrations artist ID|
|141|http://www\.wikidata.org/entity/P6734|Archaeology Data Service person ID|
|142|http://www\.wikidata.org/entity/P6812|AntWiki article ID|
|143|http://www\.wikidata.org/entity/P6821|Uppsala University Alvin ID|
|144|http://www\.wikidata.org/entity/P6944|Bionomia ID|
|145|http://www\.wikidata.org/entity/P7293|PLWABN ID|
|146|http://www\.wikidata.org/entity/P7298|Auckland Museum ID|
|147|http://www\.wikidata.org/entity/P7369|National Library of Chile ID|
|148|http://www\.wikidata.org/entity/P7695|e-WV: The West Virginia Encyclopedia ID|
|149|http://www\.wikidata.org/entity/P7699|National Library of Lithuania ID|
|150|http://www\.wikidata.org/entity/P7704|Europeana entity|
