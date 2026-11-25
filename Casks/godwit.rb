cask "godwit" do
  version "1.40.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.40.1-arm64.dmg"
    sha256 "5267c1c5b8a10f8e07128cc23e4b028ff125b25598ec5daa814c883ee2d90d11"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.40.1-amd64.dmg"
    sha256 "3d035b61ca09f8bdeabcf137af4fe752c3738f279269f7d644eb69f2f334611d"
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
