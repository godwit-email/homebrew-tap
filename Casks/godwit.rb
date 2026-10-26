cask "godwit" do
  version "1.16.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.16.0%20arm64.dmg"
    sha256 "1c43273c4eb3f9f8c68b17aa011202cf19be2925439e5c8790127171dc02787c"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.16.0%20amd64.dmg"
    sha256 "a678af0cf1372c0466c9e7c08be2fb536db1ed00e2095704c0104903abbe68d9"
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
