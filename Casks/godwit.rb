cask "godwit" do
  version "1.10.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.10.0%20arm64.dmg"
    sha256 "2f23030eb88e2ab148c8c4c2efb1343a861d38cafcf0a7989768022ce493e3b1"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.10.0%20amd64.dmg"
    sha256 "134ca2e9b1d0ce74fceb3a0fbb24726c111aeb88a5e699e78c9d3054a34f5da3"
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
