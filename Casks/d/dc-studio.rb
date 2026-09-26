cask "dc-studio" do
  version "0.3.1"
  sha256 "857c15f23b766a143daac2e4ec170d558e032c219e37654a6984bbbf91a08970"

  url "https://github.com/dancechess/studio/releases/download/v#{version}/DC-Studio-#{version}-arm64.dmg"
  name "DC Studio"
  desc "Chess database with a bundled Stockfish engine"
  homepage "https://dancechess.com/studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DC Studio.app"

  zap trash: [
    "~/Library/Application Support/DCStudio",
    "~/Library/Preferences/com.dancechess.DCStudio.plist",
    "~/Library/Saved Application State/com.dancechess.DCStudio.savedState",
  ]
end
