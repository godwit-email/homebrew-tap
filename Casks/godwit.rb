cask "godwit" do
  version "1.13.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.13.0%20arm64.dmg"
    sha256 "19b4e5cd3fcc10341fd954a25f1110d591ddd8ce41a78f9745f1a08432bb4a9f"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.13.0%20amd64.dmg"
    sha256 "42e3491ddc510b2586f8d652304b0c59c9454b0e3a0aa52541955ab46ca475cb"
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
