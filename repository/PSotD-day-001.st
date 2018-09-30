SortedCollection streamContents: [ : out |
 'myfile.txt' asFileReference readStreamDo: [ : in |
  (NeoCSVReader on: (ZnBufferedReadStream on: in)) in: [ : reader |
   reader 
    separator: $;;
    do: [ : each | out nextPut: each second ] ] ] ].