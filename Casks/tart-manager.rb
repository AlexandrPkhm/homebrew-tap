cask "tart-manager" do
  version "1.4.0"
  sha256 "1a939c78bd6fd39d4f4920d67ad13ae46e679b3892e6b0280c6fbd94d2762eb3"

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
  depends_on macos: ">= :sonoma"

  app "Tart Manager.app"

  zap trash: [
    "~/Library/Application Support/app.TartManager",
    "~/Library/Caches/TartManager",
    "~/Library/HTTPStorages/TartManager",
    "~/Library/Preferences/TartManager.plist",
  ]
end
