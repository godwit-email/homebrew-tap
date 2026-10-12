cask "godwit" do
  version "0.1.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%200.1.0%20arm64.dmg"
    sha256 "3df3e158db43737fecd42f007869988b0891fccd6a0914eda5555f0af2294185"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%200.1.0%20amd64.dmg"
    sha256 "1c67620d378abc79af0521dea5c9bacbe0eb7961e091a3eccbe5c3eb8f0f8d84"
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
