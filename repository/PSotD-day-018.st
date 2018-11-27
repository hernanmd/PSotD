| zipArchive fileRef |
zipArchive := ZipArchive new.
fileRef := 'myFile.zip' asFileReference.
[ zipArchive
  readFrom: fileRef fullName;
  extractAllTo: FileSystem workingDirectory ]
ensure: [ zipArchive close ].