cask "godwit" do
  version "1.37.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.37.0-arm64.dmg"
    sha256 "2c9318db94267a51111878ccfe45b9be921ff7c19dd60b58e217dbc5a10b3d32"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.37.0-amd64.dmg"
    sha256 "0d8e47c04c6283394bada9dff5913f3ce964e0135772b7f407bebe62a36d5b56"
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
