cask "godwit" do
  version "1.19.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.19.0-arm64.dmg"
    sha256 "e9a43d6e75967cca0b3e38ff0435c43f8f3cc53bd624db4b4b7165458c0163b6"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.19.0-amd64.dmg"
    sha256 "50405ce909e8607c55d905be30f11e34f34222254ccbd8ee323af71ed28f31f1"
  end

  name "Godwit"
  desc "AI-native email client"
  homepage "https://godwit.email"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Godwit.app"

  zap trash: [
    "~/Library/Application Support/Godwit",
    "~/Library/Preferences/email.godwit.app.plist",
  ]
end
