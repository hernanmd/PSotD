(NeoJSONReader on: (ZnClient new
 accept: ZnMimeType applicationJson;
 url: 'http://www.ebi.ac.uk/QuickGO/services/ontology/go/terms/GO:0005623,GO:0017071,GO:0030680';
 get) readStream) next at: 'results'.