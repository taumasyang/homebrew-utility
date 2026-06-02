cask "yaagl-zzz" do
  version "0.3.16"
  sha256 "9ab8a536cacdc07dd05974eb5c32c4a0dfe96f8f573d13552c1f1669e1759d33"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.app.tar.gz"
  name "Yaagl ZZZ"
  desc "Yet another anime game launcher for ZZZ"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true

  app "Yaagl ZZZ.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ",
    "~/Library/Caches/com.3shain.yaagl.nap.cn",
    "~/Library/WebKit/com.3shain.yaagl.nap.cn",
  ]

  caveats do
    requires_rosetta
  end
end
