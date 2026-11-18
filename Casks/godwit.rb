cask "godwit" do
  version "1.39.3"

  on_arm do
    url "https://dl.godwit.email/godwit-1.39.3-arm64.dmg"
    sha256 "0e627c7d45d17f3ea4cedc6196bd1525fbd147b9c479d56062c5ce56a9c403b6"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.39.3-amd64.dmg"
    sha256 "a64bf8332fd6ad3c0528fe2a231791bcbdc08d22a7de959d82e6c0de36fe51b4"
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
