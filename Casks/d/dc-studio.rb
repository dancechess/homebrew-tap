cask "dc-studio" do
  version "0.3.3"
  sha256 "f06ea1676bce74263fa7d74295cdc6542d7dac18b079710fbe3890cf941755db"

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
