cask "yaagl-hsr" do
  version "0.3.18"
  sha256 "a4ce81c0c9be99dde5b1a11a927d6a9458a6dc7675edb6749e768f38c7bcd235"

  on_arm do
    depends_on macos: :sequoia
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.HSR.app.tar.gz"
  name "Yaagl HSR"
  desc "Yet another anime game launcher for HSR"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true
  depends_on :macos

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
