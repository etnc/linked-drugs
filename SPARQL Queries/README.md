# SPARQL Queries for Extending and Interlinking the Linked Drug Dataset

### SPARQL Query for Adding Missing `drugbank:atcCode` Triples

A SPARQL query which detects brand-name drugs without an ATC code, finds the generic drug from DBpedia which the brand-name is linked to with the `rdfs:seeAlso` relation, gets the ATC code of the DBpedia generic drug and assigns it to the brand-name drug in question.

### SPARQL Query for Adding `schema:relatedDrug` Triples

A SPARQL query which detects related `schema:Drug` entities from the Linked Drug Data dataset and creates two RDF triples between the related drugs, for instance:

	@prefix rus: <http://www.vidal.ru/drugs/>
	@prefix mkd: <https://lekovi.zdravstvo.gov.mk/drugsregister/detailview/>

	rus:trombopol__22439 schema:relatedDrug mkd:51201 .
	mkd:51201 schema:relatedDrug rus:trombopol__22439 .
	