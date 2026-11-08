cask "godwit" do
  version "1.29.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.29.0-arm64.dmg"
    sha256 "ad6c99385cd2a608a0a4dcf5b1ddf7df27f0220e1da39fe74272f0123ad378f1"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.29.0-amd64.dmg"
    sha256 "b7479c69ee6f0f154c7bb485345f0a8a3ae6e0567f133066b94bc2046198208a"
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
