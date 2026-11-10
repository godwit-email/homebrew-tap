cask "godwit" do
  version "1.34.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.34.0-arm64.dmg"
    sha256 "48414e3676c6612091f60fb885dda949e43075f933bfee97f92755dc008e9b98"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.34.0-amd64.dmg"
    sha256 "e68d5ff8dc09902ad0ce15917ef04399f720dbf83152ead83dcd04f87f74da20"
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
