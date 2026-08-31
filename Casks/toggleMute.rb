cask "togglemute" do
  version "2.1.1"
  sha256 "30788b55a7ae15244a74c380269ed0fe367e7ba2f210afac5f8c0f060d026a67"
  url "https://github.com/satrik/togglemute/releases/download/#{version}/toggleMute.dmg"
  name "toggleMute"
  desc "macOS Menu Bar App to mute/unmute the microphone"
  homepage "https://github.com/satrik/toggleMute"
  livecheck do
    url "https://github.com/satrik/togglemute/releases/download/#{version}/toggleMute.dmg"
    regex(/toggleMute.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end
  app "toggleMute.app"
end
