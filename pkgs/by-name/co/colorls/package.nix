{
  lib,
  bundlerApp,
  ruby_3_4,
  bundlerUpdateScript,
}:

(bundlerApp.override { ruby = ruby_3_4; }) {
  pname = "colorls";

  gemdir = ./.;
  exes = [ "colorls" ];

  passthru.updateScript = bundlerUpdateScript "colorls";

  meta = with lib; {
    description = "Prettified LS";
    homepage = "https://github.com/athityakumar/colorls";
    license = with licenses; mit;
    maintainers = with maintainers; [
      lukebfox
      nicknovitski
      cbley
    ];
    platforms = ruby_3_4.meta.platforms;
    mainProgram = "colorls";
  };
}
