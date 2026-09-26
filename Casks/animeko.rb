cask "animeko" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.2.0"
  sha256 arm:   "12ae3ffebe16f5be0241d731d2109d295ede26524f06b154cafc0f9bd9389c4c",
         intel: "269986d9769a5160c651782c521638f78ba996b4147d207ef6883b54d8492bce"

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
