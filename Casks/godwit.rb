cask "godwit" do
  version "1.3.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.3.0%20arm64.dmg"
    sha256 "11d44bb38877dbf8cf1ffad3b458f1404c0acd54fb13dc635b16fa3243b06536"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.3.0%20amd64.dmg"
    sha256 "6755e5ba6c6fc2fc10d64d2870a93f35d64729b8a0818e605b781ad54e9ba429"
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
