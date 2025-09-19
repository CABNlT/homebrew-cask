cask "path-planner" do
  version "2025.2.2"
  sha256 :no_check
  url "https://github.com/mjansen4857/pathplanner/releases/download/v#{version}/PathPlanner-macOS-#{version}.dmg".
      verified: "github.com/dixahq/dixa-desktop-app-release/"
      verified: "github.com/mjansen4857/pathplanner/releases/"
  name "PathPlanner"
  desc "Robot Path Planner"
  homepage "https://pathplanner.dev/home.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PathPlanner.app"

  zap trash: [
    "~/Library/Application Support/PathPlanner",
    "~/Library/Logs/PathPlanner",
    "~/Library/Preferences/PathPlanner.plis",
    "~/Library/Saved Application State/PathPlanner.savedState",
  ]
end
