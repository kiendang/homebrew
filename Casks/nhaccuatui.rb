cask 'nhaccuatui' do
  version '1.0.2'
  sha256 '26ceb0085d3ad083be827408de11a3ebf54e3b7e07ec21e35e0169b3254556bb'

  url "http://apps.nhaccuatui.com/download/NhacCuaTui-#{version}.dmg"
  name 'NhacCuaTui'
  homepage 'https://www.nhaccuatui.com/'

  app 'NhacCuaTui.app'

  zap trash: [
               '~/Library/Application Support/NhacCuaTui',
               '~/Library/Logs/NhacCuaTui',
               '~/Library/Preferences/com.nhaccuatui.macos.helper.plist',
               '~/Library/Preferences/com.nhaccuatui.macos.plist',
               '~/Library/Saved Application State/com.nhaccuatui.macos.savedState',
             ]
end
