cask "godwit" do
  version "1.33.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.33.0-arm64.dmg"
    sha256 "8c4f9a116f9106354aeb73437b19742e40852a717ca1ac8686a53f28b7f60fae"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.33.0-amd64.dmg"
    sha256 "7fea7c2124d60261090ddc00a9c7287441933f6bf1aa19b0e4047bf49861747e"
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
