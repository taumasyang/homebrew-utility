cask "yaagl-zzz-os" do
  version "0.3.15"
  sha256 "bd2b160bc5dde8f276f1600ef67779141381a97bc82ae51a765864d051d8de5f"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :catalina
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.ZZZ.OS.app.tar.gz"
  name "Yaagl ZZZ OS"
  desc "Yet another anime game launcher for ZZZ OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  livecheck do
    skip "In sync with Yaagl"
  end

  auto_updates true

  app "Yaagl ZZZ OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl ZZZ OS",
    "~/Library/Caches/com.3shain.yaagl.nap.os",
    "~/Library/WebKit/com.3shain.yaagl.nap.os",
  ]

  caveats do
    requires_rosetta
  end
end
