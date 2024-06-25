{ lib
, libadwaita
, xdg-desktop-portal
, xdelta
, libwebp
, p7zip
, git
, gtk4
, glibc
, fetchurl
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "an-anime-game-launcher";
  version = "3.10.0";

  src = fetchurl {
    url = "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/${version}/anime-game-launcher";
    sha256 = "c4a7446c6f76d2e0c6f747a2eaa04f8cdfd1b43738c1fde776b0bf64260ff8e3";
  };

  meta = with lib; {
    homepage = "https://github.com/an-anime-team/an-anime-game-launcher";
    description = "A Launcher for a specific anime game with auto-patching, discord rpc and time tracking";
    license = licenses.gpl3;
    platforms = platforms.linux;
    main-program = "an-anime-game-launcher";
    maintainers = with maintainers; [ R0dn3yS ];
  };
})

