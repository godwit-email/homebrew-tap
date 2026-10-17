cask "godwit" do
  version "1.4.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.4.0%20arm64.dmg"
    sha256 "ddd752bb4e7d24ffe86a727d1509f66be53ecede20436d9fc3e3ff4bb4dcdb28"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.4.0%20amd64.dmg"
    sha256 "6bb6a0d9e9eec15aa9e328e45ba9127e0689d967c652762a79cd6c0a9456ae68"
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
