cask "yaagl-hsr-os" do
  version "0.3.20"
  sha256 "e215c9c3d2f22ace2db3371d35a0be27ef7cf0684a251d44b34e3522d663373b"

  on_arm do
    depends_on macos: :sequoia
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR OS"
  desc "Yet another anime game launcher for HSR OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true
  depends_on :macos

  app "Yaagl HSR OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR OS",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.os",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.os",
  ]

  caveats do
    requires_rosetta
  end
end
