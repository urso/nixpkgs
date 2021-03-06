{ cabal, base64Bytestring, blazeBuilder, filepath, hspec, random
, text
}:

cabal.mkDerivation (self: {
  pname = "mime-mail";
  version = "0.4.4";
  sha256 = "1y0fss53z1mvykpfkp28zwic2mb7zhf02lwxdr22n34hjzk34g9b";
  buildDepends = [
    base64Bytestring blazeBuilder filepath random text
  ];
  testDepends = [ blazeBuilder hspec text ];
  meta = {
    homepage = "http://github.com/snoyberg/mime-mail";
    description = "Compose MIME email messages";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
