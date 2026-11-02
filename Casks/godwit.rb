cask "godwit" do
  version "1.25.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.25.0-arm64.dmg"
    sha256 "573ed479ff389d1000da2c1ea9b103e2d4c122104257324dce03a9a0a3243892"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.25.0-amd64.dmg"
    sha256 "c2ec7a33125eadad2290affbccbf32be88414983d9c3012d8ba6878557489ad5"
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
