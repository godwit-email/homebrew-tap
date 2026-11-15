cask "godwit" do
  version "1.38.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.38.0-arm64.dmg"
    sha256 "177cd55025a90421c2e39ad35caafbf5301cb86d61ee604a1871c53f4da673aa"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.38.0-amd64.dmg"
    sha256 "87cdefdf06fafdc415a066a546ddf93696e3eb660356f01ee202844d409692da"
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
