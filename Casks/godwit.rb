cask "godwit" do
  version "1.27.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.27.0-arm64.dmg"
    sha256 "81ec759dbba1747624ba38b77acdc8f84f83cba9b1ed16bd545cef586e5d94c8"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.27.0-amd64.dmg"
    sha256 "05c491e191058463b1ec8a93ffe7af1617d2589862a982e8d386807aefe49903"
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
