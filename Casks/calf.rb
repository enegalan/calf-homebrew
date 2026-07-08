cask "calf" do
  version "0.9.2"
  sha256 "4bbadd53b8ee3d36ee9f803b1e2853ec0aa482d8d9f2f52ab273f88e31174c53"

  url "https://github.com/enegalan/calf/releases/download/v#{version}/Calf-#{version}.dmg"
  name "Calf"
  desc "Lightweight, open-source alternative to Docker Desktop"
  homepage "https://github.com/enegalan/calf"

  app "Calf.app"

  zap trash: [
    "~/.config/calf",
    "~/Library/Application Support/calf",
  ]
end
