cask "mxiris-lyricsx" do
  version "1.8.6,2921"
  sha256 "04a646d47c63ec1ef118ac01cf2cbf422eaf212faccb3e5cff2b2065b6369bb3"

  url "https://github.com/MxIris-LyricsX-Project/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.first}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/MxIris-LyricsX-Project/LyricsX"

  livecheck do
    url "https://mxiris-lyricsx-project.github.io/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "lyricsx"
  depends_on macos: :catalina

  app "LyricsX.app"

  zap trash: [
    "~/Library/Application Scripts/com.JH.LyricsX",
    "~/Library/Application Scripts/com.JH.LyricsXHelper",
    "~/Library/Application Scripts/D5Q73692VW.group.com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsX",
    "~/Library/Containers/com.JH.LyricsXHelper",
    "~/Library/Group Containers/D5Q73692VW.group.com.JH.LyricsX",
  ]
end
