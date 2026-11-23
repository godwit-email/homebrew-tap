cask "godwit" do
  version "1.40.0"

  on_arm do
    url "https://dl.godwit.email/godwit-1.40.0-arm64.dmg"
    sha256 "1639046e1ba95ede2863dd6826aa18b85cddca6afabbcfa9a112fb494dc1c52f"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.40.0-amd64.dmg"
    sha256 "6b266b64dc6c9911f5843cd77d7b1c12a293dc1537fa43e3cb30594e5413c203"
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
