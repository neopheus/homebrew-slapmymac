cask "slapmymac" do
  version "1.6.0"
  sha256 "placeholder"

  url "https://github.com/neopheus/slapmymac/releases/download/v#{version}/SlapMyMac.dmg"
  name "SlapMyMac"
  desc "Detects physical slaps on Apple Silicon MacBooks and plays sound effects"
  homepage "https://github.com/neopheus/slapmymac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SlapMyMac.app"

  zap trash: [
    "~/Library/Preferences/com.slapmymac.app.plist",
  ]
end
