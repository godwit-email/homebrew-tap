cask "godwit" do
  version "1.11.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.11.0%20arm64.dmg"
    sha256 "5a4b6b9b5f19a49042433997c62966cbfc9720b4cec3191fce75103787892b3e"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.11.0%20amd64.dmg"
    sha256 "25fc7f6f1636480ff49417e4ecc213c4a9c9e7967370d2eec6fc3139650724cd"
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
