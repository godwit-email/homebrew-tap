cask "godwit" do
  version "0.2.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%200.2.0%20arm64.dmg"
    sha256 "1293c918b86fe6108e3b2a327661c9cfb1b3309a8c282d5acbd74a3c9bd1edd5"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%200.2.0%20amd64.dmg"
    sha256 "50e1c6a7987dd2a37e7870eb914fc12f45b70dc771eeebf770b24544bf421c5c"
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
