cask "calf" do
  version "0.9.7"
  sha256 "6021a50dce15f506c7b12e3098ac02c666a9ebbaa48e538bcbb78aac9bb5c1c2"

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
