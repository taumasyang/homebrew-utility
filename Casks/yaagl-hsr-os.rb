cask "yaagl-hsr-os" do
  version "0.3.16"
  sha256 "d5bbc7a975a7680baf6ed9dc96cc1258fec18c0ba804127ffd795aa9e4a0d3e9"

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
