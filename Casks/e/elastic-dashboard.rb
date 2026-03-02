cask "elastic-dashboard" do
  version "2026.1.2"
  sha256 "1bb8bd1c5469ee057f2fecd212ca958a07e96f9956873b911e083d4aecfd15f9"

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
