SystemNavigation default allMethods 
 collect: [ : m | m -> m linesOfCode ]
 into: (SortedCollection sortBlock: [ : a : b | a value < b value ])