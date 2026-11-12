cask "godwit" do
  version "1.35.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.35.0-arm64.dmg"
    sha256 "0bbf47bfdf09264f189043635f3da76766e33f1626fa7cb65edc6d473ebe7ef0"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.35.0-amd64.dmg"
    sha256 "e82616bf91bb4c9830ebb949d3284af6337381924f0b922c08c276a711584fdf"
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
