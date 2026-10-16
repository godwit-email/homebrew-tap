cask "godwit" do
  version "1.3.1"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.3.1%20arm64.dmg"
    sha256 "823d956fd4adaf423e0da03a6136bf53b94aa44fa59f0b728a11211e158dc20f"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.3.1%20amd64.dmg"
    sha256 "a6c992bcc9e67dd84c41c9f7ea13f64918d6e3c8c50e6845dfd7c10ba98d6ef4"
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
