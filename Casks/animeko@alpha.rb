cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.2.0-beta01"
  sha256 arm:   "6705c0badf40abcf1461515cffd46f1a8ed81d23324b9558e76ac77b3fd3c04e",
         intel: "784c9bbb7ba65a240cac152ed6ae6a5a5644539ce11cea745c0a79dfafa73411"

  url "https://d2.myani.org/v#{version}/ani-#{version}-macos-#{arch}.#{extension}"
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
