cask "godwit" do
  version "1.39.4"

  on_arm do
    url "https://dl.godwit.email/godwit-1.39.4-arm64.dmg"
    sha256 "ed64173a40770eceeae7446083ec57f040be18b2136fac7c56cba28d35a1a4b7"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.39.4-amd64.dmg"
    sha256 "7578d4ffe9492c00f3ea5502c9079a131c1bb28743844461bb5f008e53288697"
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
