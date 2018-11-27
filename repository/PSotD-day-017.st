| outStream |
outStream := FileStream newFileNamed: 'unary_sends.txt'.
Smalltalk allClasses 
 reject: [ : cls | (cls basicCategory = #'Kernel-Processes') or: [ cls = HashedCollection ] ]
 thenDo: [ : cls | 
  cls class methodDictionary 
   select: [: sel | sel selector isUnary ]
   thenCollect: [ : cm | 
    | result |
    result := [ cls perform: cm selector ]
     on: Error
     do: [ :ex | (ex messageText includes: 'overridden') ifTrue: [ ex pass ] ].
    [ result asString ]
    on: Error
    do: [ : ex2 | result := ex2 messageText ].   
    outStream nextPutAll: cls asString;
     nextPutAll: '>>';
     nextPutAll: cm selector asString;
     tab;
     nextPutAll: result asString; cr. ] ] .
outStream close. 