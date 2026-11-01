cask "godwit" do
  version "1.23.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.23.1-arm64.dmg"
    sha256 "dae8bb0aa40e8d541843754c0caea4ae2671b668a1e7becca6ac35eadd6735bd"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.23.1-amd64.dmg"
    sha256 "615560601376545724c2636d9b4664ba19111bd9ee9f1ebd35010297ecc37be3"
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
