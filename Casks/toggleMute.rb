cask "togglemute" do
  version "2.1.2"
  sha256 "bf45afe4c382e0b7f8e08a62778e6f4cb59afadeef3b3f2f34fb4a8fba82ea80"
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
