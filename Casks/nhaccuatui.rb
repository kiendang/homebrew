cask 'nhaccuatui' do
  version '1.0.1'
  sha256 '96b23912c0b2d8b84f367d8646b19162647ac0b6cf415c990617d3b4b6814c84'

  url "http://apps.nhaccuatui.com/download/NhacCuaTui-#{version}-mac.zip"
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
