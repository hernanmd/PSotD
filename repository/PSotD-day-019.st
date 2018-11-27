| xmlTree view |
view := RTView new.
xmlTree := (XMLDOMParser onURL: 'https://www.amcharts.com/lib/3/maps/svg/belgiumHigh.svg') parseDocument firstNode.
((xmlTree findElementNamed: 'g')
 nodesCollect: [ :node | | elem |
  [ elem := (RTSVGPath new
    path: (node attributeAt: 'd');
    fillColor: Color random;
    scale: 0.5) element ]
  on: Error
  do: [ : ex | 
   elem ifNotNil: [ 
    elem model: (node attributeAt: 'title').
    elem @ RTPopup.
    elem ] ]]) 
     reject: #isNil 
     thenDo: [ : e | view add: e ].
view open
