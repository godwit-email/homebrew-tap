cask "godwit" do
  version "1.21.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.21.0-arm64.dmg"
    sha256 "696e3692d23bc5e9256e3f4c365edacf47829bb977c0530eeff66624d0a077e5"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.21.0-amd64.dmg"
    sha256 "a13abfcf228804f476300d007c77035aaa5938f63a0201089337fa8c1883faed"
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
