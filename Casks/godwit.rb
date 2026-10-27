cask "godwit" do
  version "1.17.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.17.0%20arm64.dmg"
    sha256 "f993f16d40ae2cc010d004fdc9906719dd4da53bc89465c7816dcfd8fc7aa2f3"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.17.0%20amd64.dmg"
    sha256 "2226d72e8951e36ab195cfd11f4dbba74856b49db7792ed8707c7a934cbb9aec"
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
