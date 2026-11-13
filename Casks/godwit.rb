cask "godwit" do
  version "1.36.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.36.0-arm64.dmg"
    sha256 "9a046aca7e6e83104168aa3cdfced6cf0e03215db1dc01e2ecb5f5308c3dec29"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.36.0-amd64.dmg"
    sha256 "5e959d898f4cccb728167f5c04cd870ce8e486ff26977c37772008bc84dd19a4"
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
