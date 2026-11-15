cask "godwit" do
  version "1.39.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.39.0-arm64.dmg"
    sha256 "fffe751758b7680d38c7452daad709fafc3825017acacf846b223a85d7d4040d"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.39.0-amd64.dmg"
    sha256 "229bb27db4a84e2dca6b18e5d618a47e7f5abfdbb538f09b3e60c1dc4645e5ba"
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
