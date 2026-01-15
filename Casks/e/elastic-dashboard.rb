cask "elastic-dashboard" do
  version "2026.1.0"
  sha256 "ec5e6f511a1b0cc15d50e44199406529528bc7a3a59c18e52828b27b44cd6de7"

  url "https://github.com/Gold872/elastic-dashboard/releases/download/v#{version}/elastic-setup-macos.dmg",
      verified: "github.com/Gold872/elastic-dashboard/"
  name "elastic-dashboard"
  desc "Simple and modern dashboard for FRC"
  homepage "https://frc-elastic.gitbook.io/docs"

  depends_on macos: ">= :catalina"

  app "elastic_dashboard.app"

  zap trash: [
    "~/Library/Application Scripts/com.gold872.elasticDashboard",
    "~/Library/Containers/com.gold872.elasticDashboard",
  ]
end
