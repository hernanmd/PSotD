DBPediaSearch new
 setJsonFormat;
 timeout: 5000;
 query: 'PREFIX dbpedia-owl:  <http://dbpedia.org/ontology/>
 SELECT DISTINCT ?filmName WHERE {
  ?film foaf:name ?filmName .
  ?film dbpedia-owl:starring ?actress .
  ?actress foaf:name ?name.
  FILTER(contains(?name, "Natalie"))
  FILTER(contains(?name, "Portman"))
 }';
 execute.
((((NeoJSONReader fromString: jsonResults) at: #results) at: #bindings) collect: [ : entry | entry at: #filmName ]) 
  collect: [ : movie | movie at: #valu