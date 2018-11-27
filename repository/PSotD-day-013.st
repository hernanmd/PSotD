| text attributes |
text := ((BioSequence forAlphabet: BioDNAAlphabet) randomLength: 6000) sequence asText.
attributes := Array new: text size.
1 to: text size do: [ : index |
  attributes at: index put: { 
  (TextColor color: (BioDNAAlphabet colorMap at: (text at: index))) }  ].
text runs: (RunArray newFrom: attributes).
text.