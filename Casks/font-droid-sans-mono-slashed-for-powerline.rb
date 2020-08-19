cask "font-droid-sans-mono-slashed-for-powerline" do
  version :latest
  sha256 :no_check

  url "https://github.com/powerline/fonts/trunk/DroidSansMonoSlashed",
      using:      :svn,
      trust_cert: true
  name "Droid Sans Mono Slashed for Powerline"
  homepage "https://github.com/powerline/fonts/tree/master/DroidSansMonoSlashed"

  font "Droid Sans Mono Slashed for Powerline.ttf"
end
