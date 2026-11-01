cask "godwit" do
  version "1.24.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.24.1-arm64.dmg"
    sha256 "a58e43817b61ed9f6c8daf3b53f8e81f40c0ece625e1da160f40ced5e4fa3805"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.24.1-amd64.dmg"
    sha256 "d0d4d1ed9996a7ed43e453645f801e4e5ed573613fe3bc613c8439a04432b9b6"
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
