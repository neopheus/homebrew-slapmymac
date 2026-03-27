cask "slapmymac" do
  version "1.6.1"
  sha256 "708700efa68a07f19a1fb6a153a8c7fa418477ed38e44e9e3e44b694451f6378"

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
