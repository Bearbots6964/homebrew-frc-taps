cask "elastic-dashboard@2027" do
  version "2027.0.0-alpha6"
  sha256 "989508ed890a348c192cfae9389265b126f45981a15198bb6042ed96cdca4e0e"

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
