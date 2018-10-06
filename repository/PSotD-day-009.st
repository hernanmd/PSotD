StandardWindow new
 addMorph: (
  RubScrolledTextMorph new 
   withLineNumbers;
   appendText: '/path/to/file' asFileReference contents)
 fullFrame: (0@0 corner: 1@1) asLayoutFrame;
 openInWorld.