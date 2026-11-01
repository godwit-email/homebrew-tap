cask "godwit" do
  version "1.22.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.22.0-arm64.dmg"
    sha256 "23a1f8d862ec6757bb7e61524b6006b09b95f25ef59a21a99a6622df8cca9506"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.22.0-amd64.dmg"
    sha256 "88d2eabdb30770809d9b0c89dfbb031e28b8c67fdcb969e6b31d5e67946fc763"
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
