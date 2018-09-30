| winFS |
winFS := FileSystem allInstances detect: [ :fs | fs store isKindOf: WindowsStore ].
FileReference
 allInstancesDo: [ :f | 
  f setFileSystem: winFS path: (winFS workingDirectory / f basename) path ].