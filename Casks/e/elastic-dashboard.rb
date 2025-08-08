cask "elastic-dashboard" do
  version "2025.2.2"
  sha256 "e6ae12f79b5bbfd6062d7b5172549613cdb2c55202a342fd44074a3037f3c654"

  url "https://github.com/Gold872/elastic-dashboard/releases/download/v#{version}/elastic-setup-macos.dmg",
    verified: "github.com/Gold872/elastic-dashboard"
  name "elastic-dashboard"
  desc "A simple and modern dashboard for FRC"
  homepage "https://frc-elastic.gitbook.io/docs"

  depends_on macos: ">= :mojave"

  app "elastic_dashboard.app"

  zap trash: [
    "~/Library/Application Scripts/com.gold872.elasticDashboard",
    "~/Library/Containers/com.gold872.elasticDashboard",
  ]
end
