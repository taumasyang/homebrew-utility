cask "animeko" do
  arch arm: "aarch64", intel: "x86_64"
  extension = on_arch_conditional arm: "dmg", intel: "zip"

  version "5.7.0"
  sha256 arm:   "45641da20e284376c2bc805a5b806792f0e7acb0676491bfb31d823f330088de",
         intel: "18dacf63f03e06cdd2439e65dadc19582e3a1464e2a76b10325398ccd83218ba"

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
