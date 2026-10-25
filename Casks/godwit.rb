cask "godwit" do
  version "1.15.0"

  on_arm do
    url "https://dl.godwit.email/Godwit%201.15.0%20arm64.dmg"
    sha256 "36f639462f7e7182ff9fef3daaefdd19fdee14433326db808867cd07d4ab27e0"
  end
  on_intel do
    url "https://dl.godwit.email/Godwit%201.15.0%20amd64.dmg"
    sha256 "b93de4d67b2074bfc330b0c8cefae0adbeb526c3d716296bd69aa508112e442b"
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
