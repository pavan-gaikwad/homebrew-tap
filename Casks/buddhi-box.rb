cask "buddhi-box" do
  version "0.1.10"
  sha256 "fcf599a1645037bfbd2052edccaa9ab8a70b8776ea9ebf9547ee7dddaa2ece00"

  url "https://models.buddhibox.app/app-downloads/v0.1.10/Buddhi.Box-0.1.10-macos-public.dmg"
  name "Buddhi Box"
  desc "Private, offline speech dictation for Apple Silicon Macs"
  homepage "https://buddhibox.app/"

  depends_on arch: :arm64

  app "Buddhi Box.app"

  zap trash: [
    "~/Library/Application Support/app.buddhibox.desktop",
    "~/Library/LaunchAgents/app.buddhibox.desktop.plist",
  ]
end
