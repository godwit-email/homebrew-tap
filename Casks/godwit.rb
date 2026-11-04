cask "godwit" do
  version "1.26.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.26.0-arm64.dmg"
    sha256 "018de4321f75ba7b4540301ce1dd31c3d00ea2535de50798a049e82a6e69caec"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.26.0-amd64.dmg"
    sha256 "ba80d632d236d04d0fb87a348c75fb900a87d79609aed0c68ff87e57095710d3"
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
