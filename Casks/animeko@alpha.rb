cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.1.0-alpha03"
  sha256 arm:   "5768550bb2a8c8d610eeac14b0335c1066d424d3c983701d6a51b1070f9c906a",
         intel: "3664691cdbd1c255992523abc4484cbab4b0864d40352ba2c0e932a2ee90679f"

  url "https://d2.myani.org/v#{version}/ani-#{version}-macos-#{arch}.#{extension}",
      verified: "d2.myani.org"
  name "Animeko"
  desc "一站式在线弹幕追番平台"
  homepage "https://animeko.org/"

  livecheck do
    url "https://danmaku-cn.myani.org/v1/updates/latest?releaseClass=alpha"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "animeko"
  depends_on :macos

  app "Ani.app"

  zap trash: [
    "~/Library/Application Support/me.Him188.Ani",
    "~/Library/Caches/me.Him188.Ani",
    "~/Library/Preferences/me.him188.ani.app.desktop.plist",
  ]
end
