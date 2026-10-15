cask "godwit" do
  version "1.1.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.1.0%20arm64.dmg"
    sha256 "537b98a6a60b99f3655a2199ce38148d24b82cef8978de0fe64573722c09857d"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.1.0%20amd64.dmg"
    sha256 "4263624bc91fada45c6bcc58ae30ba09ee3a64bbbc13d9136358e52638ba1959"
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
