cask "elastic-dashboard@2027" do
  version "2027.0.0-alpha4"
  sha256 "48f0a7127318f3b0e9fa557e1a3d9cb6ae0b23000b64a1864d669ee89bc0367d"

  url "https://github.com/Gold872/elastic-dashboard/releases/download/v#{version}/elastic-setup-macos.dmg",
      verified: "github.com/Gold872/elastic-dashboard/"
  name "elastic-dashboard"
  desc "Simple and modern dashboard for FRC (2027 SystemCore alpha)"
  homepage "https://frc-elastic.gitbook.io/docs"

  livecheck do
    url "https://github.com/Gold872/elastic-dashboard.git"
    regex(/^v?(2027[a-zA-Z0-9\-\.]*)$/i)
  end

  depends_on macos: ">= :catalina"

  app "elastic_dashboard.app"

  zap trash: [
    "~/Library/Application Scripts/com.gold872.elasticDashboard",
    "~/Library/Containers/com.gold872.elasticDashboard",
  ]
end
