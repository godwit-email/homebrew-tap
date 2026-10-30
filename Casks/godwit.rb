cask "godwit" do
  version "1.20.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.20.1-arm64.dmg"
    sha256 "4729914aa513033fc76a6b1a335c6372e9d9365be4e5ade835b649e5d8f363f8"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.20.1-amd64.dmg"
    sha256 "6c0fe620b3b0cb049f79408325ab14f1015d3ae25c6c042b0db30ddb01833f75"
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
