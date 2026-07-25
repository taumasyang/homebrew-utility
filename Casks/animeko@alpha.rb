cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.0.0-beta01"
  sha256 arm:   "d42ae234d9e14b6617b37f3c493a4b15248367ba7374bad68d271515e1010b9f",
         intel: "9d1b08ca5c527436e050eda2e53169bcd03ecc6bcaf0aebf6cfa43af918a1e4e"

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
