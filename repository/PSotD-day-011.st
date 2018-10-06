| newImgName imgFullName rotationFactor scaleFactor fFactor |
imgFullName := '9DB.png'.
rotationFactor := 10.
scaleFactor := 10.
fFactor := 0.1.
newImgName := (imgFullName copyUpTo: $.) , '_'.
{ #flipHorizontally . " #reverse ." #colorReduced . #fixAlpha . #asGrayScale . #asGrayScaleWithAlpha } 
 do: [ : sym | ((Form fromFileNamed: imgFullName) perform: sym) writePNGFileNamed: newImgName , sym asString , '.png' ].
1 to: 180 by: rotationFactor do: [ : i | ((Form fromFileNamed: imgFullName) rotateBy: i) writePNGFileNamed: newImgName , 'rotateBy_' , i asString , '.png' ].
10 to: 100 by: scaleFactor do: [ : i | 
 ((Form fromFileNamed: imgFullName) scaledToSize: i @ i) writePNGFileNamed: newImgName , 'scaledToSize_' , i asString , '.png'.
 ((Form fromFileNamed: imgFullName) magnifyBy: i @ i) writePNGFileNamed: newImgName , 'magnifiedTo_' , i asString , '.png'. ].
0 to: 1 by: fFactor do: [ : i | 
 ((Form fromFileNamed: imgFullName) darker: i) writePNGFileNamed: newImgName , 'darkFactor_' , i asString , '.png'.
 ((Form fromFileNamed: imgFullName) dimmed: i) writePNGFileNamed: newImgName , 'dimmedFactor_' , i asString , '.png'.
 ((Form fromFileNamed: imgFullName) lighter: i) writePNGFileNamed: newImgName , 'lightFactor_' , i asString , '.png'.
 ((Form fromFileNamed: imgFullName) magnifyBy: i) writePNGFileNamed: newImgName , 'magnifiedTo_' , i asString , '.png' ].
((Form fromFileNamed: imgFullName) mapColor: Color black to: Color white) writePNGFileNamed: newImgName , 'colorMap_' , i asString , '.png'.
