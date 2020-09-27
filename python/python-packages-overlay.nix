
self: super:
rec {
      python3 = super.python3.override {
            packageOverrides = selfPythonPackages: pythonPackages: {

              promnesia = super.callPackage ./promnesia {};
              HPI = super.callPackage ./HPI {};
              orgparse = super.callPackage ./orgparse {};

            };
      };
}
