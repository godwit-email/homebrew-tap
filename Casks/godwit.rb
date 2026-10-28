cask "godwit" do
  version "1.18.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.18.0%20arm64.dmg"
    sha256 "11c994a13a5acf71e3af57a907d9fd6bffe41e24c0e13aec73565275526075c5"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.18.0%20amd64.dmg"
    sha256 "34b3c45861e6cc2a71485933edafda9c58597bc481ec1b7815636dfd4d674015"
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
