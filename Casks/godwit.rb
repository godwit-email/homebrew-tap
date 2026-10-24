cask "godwit" do
  version "1.12.1"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.12.1%20arm64.dmg"
    sha256 "094d06be48b0cf7c2a474c074814457d20ecd46a71bc555d43707856fe7356ca"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.12.1%20amd64.dmg"
    sha256 "3afd330cf79d1f22a34511cde62b1e651243535be9cc5d7d16153ca4789f5aa8"
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
