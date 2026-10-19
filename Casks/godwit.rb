cask "godwit" do
  version "1.7.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.7.0%20arm64.dmg"
    sha256 "c23803a73529fb00d74e1d213bb839d6d0644693551ceb127bc0ae82a01d0345"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.7.0%20amd64.dmg"
    sha256 "a2000fe831964161f5bace5c97995c7c007945f6e2af5d6bbd34770749858954"
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
