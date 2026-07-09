cask "animeko" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "5.7.1"
  sha256 arm:   "3225bfed03c9e2d4912d3e8ba0fb408fe85f2f843c6b5f46c636c44b13649b3a",
         intel: "bf3a8e8340a9d84bd2d81cac9ec0d3e0b6926663933707abf651be0f2feefa10"

  url "https://d2.myani.org/v#{version}/ani-#{version}-macos-#{arch}.#{extension}",
      verified: "d2.myani.org"
  name "Animeko"
  desc "一站式在线弹幕追番平台"
  homepage "https://animeko.org/"

  livecheck do
    url "https://danmaku-cn.myani.org/v1/updates/latest?releaseClass=stable"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Ani.app"

  zap trash: [
    "~/Library/Application Support/me.Him188.Ani",
    "~/Library/Caches/me.Him188.Ani",
    "~/Library/Preferences/me.him188.ani.app.desktop.plist",
  ]
end
