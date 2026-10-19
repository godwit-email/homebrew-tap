cask "godwit" do
  version "1.7.1"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.7.1%20arm64.dmg"
    sha256 "b53fd696f4d7dfd86eb1351017b8a9453348f56ec659bed655fda11ab6fdd8c5"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.7.1%20amd64.dmg"
    sha256 "9365537ef66c57c01cabfb1e9556c353d594208cd13579c389569472da6399ba"
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
