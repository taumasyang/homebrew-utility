cask "mxiris-lyricsx@beta" do
  version "1.9.0-beta.12,10900112"
  sha256 "5be697e212b8ddb6c521846173845514250e11ed385c0ee14ea7f07790c426d1"

  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.first}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url "https://mxiris-lyricsx-project.github.io/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "beta" }&.then { |item| "#{item.short_version},#{item.version}" }
    end
  end

  auto_updates true
  conflicts_with cask: [
    "lyricsx",
    "mxiris-lyricsx",
  ]
  depends_on macos: :monterey

  app "LyricsX.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/LyricsXHelper_*.plist",
    "~/Library/Caches/com.JH.LyricsX",
    "~/Library/HTTPStorages/com.JH.LyricsX*",
    "~/Library/Preferences/com.JH.LyricsX.plist",
    "~/Library/Preferences/com.JH.LyricsX.shared.plist",
    "~/Music/LyricsX",
  ]
end
