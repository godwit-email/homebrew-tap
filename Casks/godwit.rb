cask "godwit" do
  version "1.39.2"

  on_arm do
    url "https://dl.godwit.email/godwit-1.39.2-arm64.dmg"
    sha256 "9e2717e293ad04c939d5bcb1461fafa563ec3a7bdf1a9d9d5317c6f4488ecad4"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.39.2-amd64.dmg"
    sha256 "90bbb4d9f50953e2bea89ec6abb0d566e8966520b5efcdd97de6a6faacd1818b"
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
