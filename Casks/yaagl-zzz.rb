cask "yaagl-zzz" do
  version "0.3.15"
  sha256 "855a4a478cad9da81757cd144f31c28c05ee28102147af8a49aa7c38d45473eb"

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
