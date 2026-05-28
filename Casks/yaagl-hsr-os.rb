cask "yaagl-hsr-os" do
  version "0.3.15"
  sha256 "35e220393e5fb8c9705d46fac2d9641152ef1039f37f1774d3ea55a27f87fa6d"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.OS.app.tar.gz"
  name "Yaagl HSR OS"
  desc "Yet another anime game launcher for HSR OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true

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
