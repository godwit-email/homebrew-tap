cask "godwit" do
  version "1.1.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.1.0%20arm64.dmg"
    sha256 "d1bd1848c8cfb282e7c9ae3c0fbf7fe2691225d38e9371995e9cf432bba937f2"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.1.0%20amd64.dmg"
    sha256 "7f10e31b2f41048a35ce1c3040f5cf667f2ba7ab0dbb45732d69da5173015eba"
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
