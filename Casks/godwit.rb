cask "godwit" do
  version "1.12.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.12.0%20arm64.dmg"
    sha256 "41611a29631dad60152bac2b2246ea1b156a13713b59950061f01949810f13da"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.12.0%20amd64.dmg"
    sha256 "6fc12c510e68e9b7db9a0f71935ddcf1f6ae08629fb8175cd115439263ad6b65"
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
