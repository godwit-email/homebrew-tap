cask "godwit" do
  version "1.8.1"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.8.1%20arm64.dmg"
    sha256 "bdcceb30393d139803ee84e594bd04e9395d8f3c791978340869e96f9f331f92"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.8.1%20amd64.dmg"
    sha256 "20fa7528c2e1b340c7fa03ea7ebeb2823464e9e94ea2da331e4e4b12a3491088"
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
