| ids |
ids := #('GO:0005623' 'GO:0017071' 'GO:0030680').
(ImageReadWriter formFromStream: (ZnClient new
 accept: ZnMimeType imagePng;
 url: 'http://www.ebi.ac.uk/QuickGO/services/ontology/go/terms/' , (ids joinUsing: ',') , '/chart';
 get) readStream) asMorph openInWindow.