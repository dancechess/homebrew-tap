cask "dc-studio" do
  version "0.3.2"
  sha256 "9e51fe78f5d23e4ddd9e2a5aed9b57ed17a4385a9d0d917de8cabed0f9149749"

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
