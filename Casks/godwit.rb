cask "godwit" do
  version "1.0.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.0.0%20arm64.dmg"
    sha256 "bc55404164e4689af0ad4cf833150d5390a25d17d7b6ce42b17a4a343fea9b3e"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.0.0%20amd64.dmg"
    sha256 "a5bc701f48bd7b7b9ebe1899de3fa4d1896d00c0e2b33b5cd26364b06a490262"
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
