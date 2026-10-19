cask "godwit" do
  version "1.8.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.8.0%20arm64.dmg"
    sha256 "5c69152b44e7b8f76f93cdab2fff4411a43237c4508e34a5d69587ee6e0519dd"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.8.0%20amd64.dmg"
    sha256 "3bb15973e331d38d21262edfdc5fb18cae78cbe9a71043e25094a5b2b71efefb"
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
