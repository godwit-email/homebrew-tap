cask "godwit" do
  version "1.6.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.6.0%20arm64.dmg"
    sha256 "db8fdc7f234d6bbefa612234156b2baf052ce6ec6bad87c40c3a15c76a7fae97"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.6.0%20amd64.dmg"
    sha256 "5807ac7f66caf7ff18eea8b8af2a024fb3d60d64f7e9ebdeb2a15e8d10e6cc11"
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
