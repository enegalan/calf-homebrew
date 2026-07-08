cask "calf" do
  version "0.9.2"
  sha256 "b01bbc5d9a871488870c96f5b30e7acbb50bb1b946a583a03670178b34ce7585"

  url "https://github.com/enegalan/calf/releases/download/v#{version}/Calf-#{version}.dmg"
  name "Calf"
  desc "Lightweight, open-source alternative to Docker Desktop"
  homepage "https://github.com/enegalan/calf"

  app "Calf.app"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", "#{appdir}/Calf.app"],
                     sudo: false
    end
  end

  zap trash: [
    "~/.config/calf",
    "~/Library/Application Support/calf",
  ]
end
