cask "godwit" do
  version "1.20.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.20.0-arm64.dmg"
    sha256 "91e4c7c80cb81eb5211c2545ebb433f226250ebc74776ace8ce6f35cd6d58b63"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.20.0-amd64.dmg"
    sha256 "7b94c4c7a4e575bdf232a9afe6aba34651e46efc9fadbf87eb86796e63c94f40"
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
