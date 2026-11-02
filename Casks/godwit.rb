cask "godwit" do
  version "1.25.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.25.0-arm64.dmg"
    sha256 "a2c59900d314cc753cf9a2edaf13bcdc7f8267eec89933631a79fc05d43798a8"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.25.0-amd64.dmg"
    sha256 "685e94754c53479729bf6e6bfee099f9383c9262d9fba8bc40a641e68fae59db"
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
