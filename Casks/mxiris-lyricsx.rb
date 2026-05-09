cask "mxiris-lyricsx" do
  version "1.8.2,2910"
  sha256 "2c9c7da2959337e0b2cec65c56b5278e426f3a32d8dafe672b2b8fa4ef8ed8fb"

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
  depends_on macos: ">= :big_sur"

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
