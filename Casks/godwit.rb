cask "godwit" do
  version "1.40.2"

  on_arm do
    url "https://dl.godwit.email/godwit-1.40.2-arm64.dmg"
    sha256 "39e33133155f730ef7e5bc42597a84f0c8a2746b818ce82b37cc3a15c6124ea6"
  end
  on_intel do
    url "https://dl.godwit.email/godwit-1.40.2-amd64.dmg"
    sha256 "6aeffe6769f243b016c605ad51e33e47fdbb0380e292a34e28ed14ea583c1df8"
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
