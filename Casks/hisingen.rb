cask "hisingen" do
  version "2.0.4"
  sha256 "3fe3e32527a90bf82887e466f50b7142918ea5abdd9e3618441dc01c47ba7934"

  url "https://github.com/NicolasKheirallah/Hisingen/releases/download/v#{version}/Hisingen.dmg",
      verified: "github.com/NicolasKheirallah/Hisingen/"
  name "Hisingen"
  desc "Polestar and Volvo vehicles in the menu bar"
  homepage "https://github.com/NicolasKheirallah/Hisingen"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Hisingen.app"

  zap trash: [
    "~/Library/Application Support/Hisingen",
    "~/Library/Caches/io.kheirallah.hisingen-cc97f41c-af39-4eb1-a7e6-0014f6e1c80f",
    "~/Library/HTTPStorages/io.kheirallah.hisingen-cc97f41c-af39-4eb1-a7e6-0014f6e1c80f",
    "~/Library/Preferences/io.kheirallah.hisingen-cc97f41c-af39-4eb1-a7e6-0014f6e1c80f.plist",
    "~/Library/Saved Application State/io.kheirallah.hisingen-cc97f41c-af39-4eb1-a7e6-0014f6e1c80f.savedState",
    "~/Library/WebKit/io.kheirallah.hisingen-cc97f41c-af39-4eb1-a7e6-0014f6e1c80f",
  ]

  caveats <<~EOS
    Hisingen may ask for Keychain and Accessibility access on first launch.
    Launch-at-login is managed from the app's own Settings.
  EOS
end
