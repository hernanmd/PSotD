| rPath dlls |

Metacello new 
  baseline: 'OSWindows'; 
  repository: 'github://astares/Pharo-OS-Windows/src'; 
  load.
Gofer it 
    smalltalkhubUser: 'VincentBlondeau' project: 'RProjectConnector';
    configuration;
    loadStable.

(rPath := (WinRegistry
    queryValue: 'InstallPath'
    fromKey: (WinRegistryKey localMachine queryOpenSubkey: 'Software\\R-core\\R')) allButLast) notNil
        ifTrue: [
            dlls := (rPath asFileReference / 'bin' / 'i386') entries
                    select: [ : entry | entry  extension = 'dll' ]
                    thenDo: [ : dllEntry | 
                        dllEntry asFileReference
                            copyTo: Smalltalk vmDirectory asFileReference / dllEntry basename ] ]. 