cask "buddhi-box" do
  version "0.3.0"
  sha256 "fdb681bd3080c6415fe9af9d355dcd265dc40dab888534d855ad4a8b84d8d6ad"

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
