cask "godwit" do
  version "1.28.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.28.0-arm64.dmg"
    sha256 "b24cb0da52e03d57ce636c570ca176367be42ec3daa3cbe55213f65a90cf0b52"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.28.0-amd64.dmg"
    sha256 "27cecb4c03a7ae2eaf35d54dffde3b386c9a4ccbf494180d4c6ba8d40d2e15eb"
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
