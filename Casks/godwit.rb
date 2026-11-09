cask "godwit" do
  version "1.31.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.31.0-arm64.dmg"
    sha256 "f56ff8dd7db7b22bc798cb26a6438887430f3f27cdb6bac00f9ca14f88133738"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.31.0-amd64.dmg"
    sha256 "c65d6181304efd1ece3f3340d34df2b2a36b3ab745a8edf8de1bc0ac1e685f21"
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
