cask "yaagl" do
  version "0.3.17"
  sha256 "22959bef1fa9382905abf5905bd7ff0061ffbcc31e27c965d1b28ee98d244233"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.app.tar.gz"
  name "Yaagl"
  desc "Yet another anime game launcher"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  auto_updates true

  app "Yaagl.app"

  zap trash: [
    "~/Library/Application Support/Yaagl",
    "~/Library/Caches/com.3shain.yaagl",
    "~/Library/WebKit/com.3shain.yaagl",
  ]

  caveats do
    requires_rosetta
  end
end
