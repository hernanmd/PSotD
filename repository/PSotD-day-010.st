| pkgPrefix pkgSuite result |
pkgPrefix := ''.
pkgSuite := TestSuite named: 'MyApplication Tests'.
(RPackage organizer packageNames 
  select: [ : pkgName | pkgName beginsWith: pkgPrefix ]
  thenCollect: [ : pkgName | (RPackage organizer packageNamed: pkgName) definedClasses ]) flatten
    select: [ : c | (c includesBehavior: TestCase) and: [ c isAbstract not ] ]
    thenCollect: [ : c | TestCase addTestsFor: c name toSuite: pkgSuite ].
result := pkgSuite run.
result printString.
