cask "godwit" do
  version "0.3.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%200.3.0%20arm64.dmg"
    sha256 "d35ff5dc03020abe2a42fb76a08947a65962ab1c23e6896b05f8354b832df0b0"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%200.3.0%20amd64.dmg"
    sha256 "fb9b0f951d6109b6ab0c4c0144d58fd4ab4e0f31353efebb54ae108964c6e944"
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
