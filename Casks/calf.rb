cask "calf" do
  version "0.9.3"
  sha256 "c50b0c7bf4a3f3e5b5975cc4e8558bf53d1bd0336e5b592b4c5e42b0410e6fde"

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
