cask "yaagl-zzz" do
  version "0.3.21"
  sha256 "08e486322e3dc99ed041e47f1afb72c68b0f9ba8f5981ce8632c83a59051cf36"

  on_arm do
    depends_on macos: :sequoia
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.app.tar.gz"
  name "Yaagl ZZZ"
  desc "Yet another anime game launcher for ZZZ"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  auto_updates true
  depends_on :macos

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
