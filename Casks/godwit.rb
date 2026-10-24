cask "godwit" do
  version "1.14.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.14.0%20arm64.dmg"
    sha256 "eee55caf311edf19c92ae4b801aea8991e38dd127891612383139b75d7391237"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.14.0%20amd64.dmg"
    sha256 "cd06f09435aa593f46d90b85a59374f7a49d63fb3469939e9ee6452507796357"
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
