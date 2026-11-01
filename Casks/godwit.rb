cask "godwit" do
  version "1.23.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.23.0-arm64.dmg"
    sha256 "0218c81d2ef8a2da9f257e11f201397759bc19cab88f6a62af7ee40a5e72468d"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.23.0-amd64.dmg"
    sha256 "d3f16eae666f36705c4849e4262815485080445de75e1cf9d20064df6d1a17e2"
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
