cask "godwit" do
  version "1.5.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.5.0%20arm64.dmg"
    sha256 "c0e821e2745afad895ab4dbe698386e434b8d022aa55b0a4fe0c3ab63d64000c"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.5.0%20amd64.dmg"
    sha256 "41acf074f244d89a69ea4ddcfe47a563b06c46f4125920e5046624f5fbb7bfa7"
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
