Metacello new
  configuration: 'MooseAlgos';
  smalltalkhubUser: 'Moose' project: 'MooseAlgos';
  version: #development;
  load.
Gofer it
  smalltalkhubUser: 'GustavoSantos' project: 'Hapax';
  package: 'Hapax';
  package: 'Moose-Hapax-VectorSpace';
  load.
| corpus tdm documents |
corpus := MalCorpus new.
documents := 'Julie loves me more than Linda loves me 
Jane likes me more than Julie loves me'.
documents lines doWithIndex: [: doc : index |
  corpus
   addDocument: index asString
   with: (MalTerms new
      addString: doc
      using: MalCamelcaseScanner;
      yourself)].
corpus removeStopwords.
corpus stemAll.
tdm := HapTermDocumentMatrix on: corpus. 
tdm.
