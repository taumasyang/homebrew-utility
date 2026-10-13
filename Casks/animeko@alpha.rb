cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.3.0"
  sha256 arm:   "a848920dfa1a193eacbf253b41ada9e723054798c31df17c74efa29575a3864a",
         intel: "8c703ad2e9bd3ee5a823a1e1903ce136725bb71145aa965aecb4b4dd5d15d0f8"

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
