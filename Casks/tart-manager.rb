cask "tart-manager" do
  version "1.5.0"
  sha256 "758c336d841439be3ac22f6b943a5c572b6e225221a4d3ded7dc0968782ebf8b"

  url "https://github.com/AlexandrPkhm/TartManager/releases/download/v#{version}/TartManager-#{version}.dmg"
  name "Tart Manager"
  desc "Control center for tart virtual machines"
  homepage "https://alexandrpkhm.github.io/TartManager/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tart Manager.app"

  zap trash: [
    "~/Library/Application Support/app.TartManager",
    "~/Library/Caches/TartManager",
    "~/Library/HTTPStorages/TartManager",
    "~/Library/Preferences/TartManager.plist",
  ]
end
