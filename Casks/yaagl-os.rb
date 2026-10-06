cask "yaagl-os" do
  version "0.3.21"
  sha256 "8a3fcedc5eac8d4917c51d6f8c2ab54f90112dcdbb6ad401ee93567ae8a6ad01"

  on_arm do
    depends_on macos: :sequoia
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.OS.app.tar.gz"
  name "Yaagl OS"
  desc "Yet another anime game launcher OS Version"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher/"

  auto_updates true
  depends_on :macos

  app "Yaagl OS.app"

  zap trash: [
    "~/Library/Application Support/Yaagl OS",
    "~/Library/Caches/com.3shain.yaagl.os",
    "~/Library/WebKit/com.3shain.yaagl.os",
  ]

  caveats do
    requires_rosetta
  end
end
