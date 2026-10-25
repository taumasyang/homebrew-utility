cask "animeko" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.4.0"
  sha256 arm:   "7786595edad99dc2f82d9de552d0b7151236a2a8a48f1aeeaa913b92f0fd8810",
         intel: "fb4805450305699088c7679bfc5c333289c78a8d5c1ccf2ada946ee3cc078f61"

  url "https://d2.myani.org/v#{version}/ani-#{version}-macos-#{arch}.#{extension}"
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
  conflicts_with cask: "animeko@alpha"
  depends_on :macos

  app "Ani.app"

  zap trash: [
    "~/Library/Application Support/me.Him188.Ani",
    "~/Library/Caches/me.Him188.Ani",
    "~/Library/Preferences/me.him188.ani.app.desktop.plist",
  ]
end
