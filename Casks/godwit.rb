cask "godwit" do
  version "1.20.2"

  on_arm do
    url "https://dl.godwit.email/godwit-1.20.2-arm64.dmg"
    sha256 "393400ee8db7262ffb683bcb101f3453937209253bb823442cce4533a914d101"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.20.2-amd64.dmg"
    sha256 "fab7b958e9b2f77962dcc8d0a81971bf3e559d8ed2a7a07625a24954ecfe6630"
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
