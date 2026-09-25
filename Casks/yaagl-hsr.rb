cask "yaagl-hsr" do
  version "0.3.20"
  sha256 "98868417e895aa26cfa46a84648c1ddcaddd0f9652c73d4aefae175ce29df8ba"

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
