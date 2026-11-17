cask "godwit" do
  version "1.39.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.39.1-arm64.dmg"
    sha256 "14a15038645264edc5a8df39ad7c20b8e3e2b0a5833605fa1cae168cebef6347"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.39.1-amd64.dmg"
    sha256 "01e1cf4bd3c2c8460847028f36e6dee853028e082dec0552e10b0d9d140d441b"
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
