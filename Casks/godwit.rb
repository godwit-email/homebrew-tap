cask "godwit" do
  version "1.26.2"

  on_arm do
    url "https://dl.godwit.email/godwit-1.26.2-arm64.dmg"
    sha256 "38d7785f65cbaa19d88edf2138b925b8799c78950fad10b964023c0503f2c2af"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.26.2-amd64.dmg"
    sha256 "d2d0160d3195b865f1afdcc7d69a718ff4745072314478a0ecae429f77be3636"
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
