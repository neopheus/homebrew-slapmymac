cask "slapmymac" do
  version "1.6.0"
  sha256 "c26a99502444ee9d9c1f263cd732be1fec4fb3e6f90b8286d979edac8283af0b"

  url "https://github.com/neopheus/slapmymac/releases/download/v#{version}/SlapMyMac.dmg"
  name "SlapMyMac"
  desc "Detects physical slaps on Apple Silicon MacBooks and plays sound effects"
  homepage "https://github.com/neopheus/slapmymac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "SlapMyMac.app"

  zap trash: [
    "~/Library/Preferences/com.slapmymac.app.plist",
    "~/Library/Application Support/SlapMyMac",
  ]
end
