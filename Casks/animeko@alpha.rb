cask "animeko@alpha" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "6.3.0-beta01"
  sha256 arm:   "615e1794dd001171bf5c19b2df79ce25f1e156dacbd412799bb5a5bf050cad09",
         intel: "48ce1e19425b0913a9540fcad418b7348624a1d4c26a3fef9e57c5b4797e6b4b"

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
