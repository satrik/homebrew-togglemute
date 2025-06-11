cask "togglemute" do
  version "1.6"
  sha256 "3eca85f56ae512fc315182e1bbf0a8dca2021ce09d58af4f7bff4a8bd4ae748c"
  url "https://github.com/satrik/togglemute/releases/download/#{version}/toggleMute.dmg"
  name "toggleMute"
  desc "macOS Touch Bar and Menu Bar App to mute/unmute the microphone"
  homepage "https://github.com/satrik/toggleMute"
  livecheck do
    url "https://github.com/satrik/togglemute/releases/download/#{version}/toggleMute.dmg"
    regex(/toggleMute.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end
  depends_on macos: ">= :mojave"
  app "toggleMute.app"
end
