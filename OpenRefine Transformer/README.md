# OpenRefine Transformation Script

A JSON file which contains a set of actions to be executed over the source drug data CSV file. The actions can be applied and executed in OpenRefine [1] + the RDF extension, or in LODRefine [2] and BatchRefine [3], which contain the extension by default.

It contains three actions:

* reconcile the columns `genericName1`, `genericName2`, ..., `genericName5` against DBpedia,
* reconcile the column `atcCode` against the DrugBank dataset, and
* create an RDF schema skeleton which complies to the predefined RDF schema.

---

[1] OpenRefine: http://openrefine.org/
[2] LODRefine: https://github.com/sparkica/LODRefine
[3] BatchRefine: https://github.com/fusepoolP3/p3-batchrefine
