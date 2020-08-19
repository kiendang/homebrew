cask "nhaccuatui" do
  version "2.0.0"
  sha256 "2f0e01465a67c5d9814532b51e2302363d835bfc5a4886089acd7ef3cb49532e"

  url "http://apps.nhaccuatui.com/download/NhacCuaTui-#{version}.dmg"
  name "NhacCuaTui"
  homepage "https://www.nhaccuatui.com/"

  app "NhacCuaTui.app"

  zap trash: [
    "~/Library/Application Support/NhacCuaTui",
    "~/Library/Logs/NhacCuaTui",
    "~/Library/Preferences/com.nhaccuatui.macos.helper.plist",
    "~/Library/Preferences/com.nhaccuatui.macos.plist",
    "~/Library/Preferences/vn.nhaccuatui.macos.plist",
    "~/Library/Saved Application State/com.nhaccuatui.macos.savedState",
  ]
end
