cask "godwit" do
  version "0.0.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%200.0.0%20arm64.dmg"
    sha256 "7c420715ff0e06bdb9eb28f67222af46e8f74772f4fb41c3974a4463c299ade5"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%200.0.0%20amd64.dmg"
    sha256 "351001247010eae397570ff4a8016f8b9423e73c96b63384b8bdbbfdfddc6df7"
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
