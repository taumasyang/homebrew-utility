cask "yaagl-hsr" do
  version "0.3.16"
  sha256 "766febe5ac9260d4f269041425b9cb7b773cfd28c304d5bca5e039b1efbe8533"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.app.tar.gz"
  name "Yaagl HSR"
  desc "Yet another anime game launcher for HSR"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true

  app "Yaagl HSR.app"

  zap trash: [
    "~/Library/Application Support/Yaagl HSR",
    "~/Library/Caches/com.3shain.yaagl.hkrpg.cn",
    "~/Library/WebKit/com.3shain.yaagl.hkrpg.cn",
  ]

  caveats do
    requires_rosetta
  end
end
