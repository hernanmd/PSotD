| pkgPrefix newClassPrefix env model |
pkgPrefix := ''.
newClassPrefix := 'NP'.
env := RBBrowserEnvironment new forPackageNames: (RPackage organizer packageNames select: [ : pkgName | (pkgName beginsWith: pkgPrefix) ]).
model := (RBClassModelFactory rbNamespace onEnvironment: env) name: 'ModelName'; yourself.
RBClassRegexRefactoring new
  model: model;
  renameClasses;
  replace: '^(.*)$' with: newClassPrefix , '$1';
  execute.