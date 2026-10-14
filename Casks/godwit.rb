cask "godwit" do
  version "1.0.1"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.0.1%20arm64.dmg"
    sha256 "1e82bc69e028529e603a96df832fd0bfa250d96eafa87125feabdf91e6347b40"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.0.1%20amd64.dmg"
    sha256 "b1fd8478fa277717cbd9b8c13f4321c326c00b220e5e43eed9479b242221b0e6"
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
