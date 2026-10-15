cask "godwit" do
  version "1.2.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.2.0%20arm64.dmg"
    sha256 "4256852eae29b6c6ad1a66ca4ef2f283bad4349ab7d36650cc400d1fa15f1125"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.2.0%20amd64.dmg"
    sha256 "3c6c6107fef79b3ad0358603320ace578987b9cf504e7625d7798f22b0f408a7"
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
