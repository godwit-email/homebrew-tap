cask "godwit" do
  version "1.24.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.24.0-arm64.dmg"
    sha256 "d575227f153cddff26d4d066de2a6455dcd92427776cc0ccc80d0d9ffb373253"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.24.0-amd64.dmg"
    sha256 "6583c215e0c9abe5d246fc7ce2c974a36b8cdb55abe1493da3adf86311ad52a4"
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
