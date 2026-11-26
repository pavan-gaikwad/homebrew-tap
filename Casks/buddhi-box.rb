cask "buddhi-box" do
  version "0.2.0"
  sha256 "6cb572188942b6b34ec8fde6da0d376d45447996fceaca0a718ab4bcf22c99ef"

  url "https://models.buddhibox.app/app-downloads/v#{version}/Buddhi.Box-#{version}-macos-public.dmg"
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
