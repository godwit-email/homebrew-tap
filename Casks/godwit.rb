cask "godwit" do
  version "1.32.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.32.0-arm64.dmg"
    sha256 "abb3344ab607b4e8d64e382700bedc3240f1d357641f0e485c63e608f47e8d1d"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.32.0-amd64.dmg"
    sha256 "ef740012c534fe84c2f47f56de339d7367f4e8cd87476ac84ab3d427623982da"
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
