cask "godwit" do
  version "1.26.1"

  on_arm do
    url "https://dl.godwit.email/godwit-1.26.1-arm64.dmg"
    sha256 "fd2e7b9c6a18fc600ec9d4970b9c5c22b7e0919692b94939fcf88a9db9ef9c2e"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.26.1-amd64.dmg"
    sha256 "96d8cfa6d70eb4778a5532ab0fc2415df5600e24ea29cc65efb4fd73bdff2f32"
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
