| hits n |
hits := 0.
n := 3.
n timesRepeat: [ 
 | mth cls i |
 cls := (Collection withAllSubclasses select: #hasMethods) atRandom.
 mth := cls methodDict atRandom.
 i := GTInspector openOn: mth sourceCode.
 ((self confirm: 'Method belongs to a Sequenceable Collection?') = (cls isKindOf: SequenceableCollection class))
  ifTrue: [ UITheme builder message: 'Good!'. hits := hits + 1 ]
  ifFalse: [ UITheme builder message: 'Method class is ' , cls asString , '. Class hierarchy: ' , (cls allSuperclassesExcluding: Object) asArray asString ].
 i close ].
UITheme builder message: 'Your score: ' , hits asString , ' / ' , n asString.