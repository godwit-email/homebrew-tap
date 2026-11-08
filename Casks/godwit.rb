cask "godwit" do
  version "1.30.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.30.0-arm64.dmg"
    sha256 "4076aeccb0fa4b5d1463096bb99f6726e7452308a51c509cea230d3240afc5ee"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.30.0-amd64.dmg"
    sha256 "a2f7ae22c76a3eb62b3643ee9d04724e45f226aa1d6e090c35b50d731d2616d2"
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
