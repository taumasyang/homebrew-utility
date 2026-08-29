cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.1.0"
  sha256 arm:   "f25de8d929118f91ee7c480a7254f4f3955f347134aced08a14d0cf2d6f29f0c",
         intel: "9cc2f9abd11b402757045cfbb27f3c27cc48bdd32fc16784fab429d50dd8f98b"

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
