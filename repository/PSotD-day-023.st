(FileSystem disk workingDirectory filesMatching: '*.png') do: [ : pngFile |
 pngFile asFileReference binaryReadStreamDo: [ : stream |
  PluginBasedJPEGReadWriter
   putForm: (PNGReadWriter formFromStream: stream) 
   onFileNamed: pngFile withoutExtension , 'jpg' ] ]
 displayingProgress: 'Converting images to JPG...'.