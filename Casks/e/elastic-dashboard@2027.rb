cask "elastic-dashboard@2027" do
  version "2027.0.0-alpha3"
  sha256 "12a7f62c4e25ac5264fbb3e920d56482b70c2403e08c2020d35dd61909590681"

  url "https://github.com/Gold872/elastic-dashboard/releases/download/v#{version}/elastic-setup-macos.dmg",
      verified: "github.com/Gold872/elastic-dashboard/"
  name "elastic-dashboard"
  desc "Simple and modern dashboard for FRC (2027 SystemCore alpha)"
  homepage "https://frc-elastic.gitbook.io/docs"

  livecheck do
    url "https://github.com/Gold872/elastic-dashboard.git"
    regex(/^v?(2027[a-zA-Z0-9\-\.]*)$/i)
  end

  depends_on macos: ">= :mojave"

  app "elastic_dashboard.app"

  zap trash: [
    "~/Library/Application Scripts/com.gold872.elasticDashboard",
    "~/Library/Containers/com.gold872.elasticDashboard",
  ]
end
