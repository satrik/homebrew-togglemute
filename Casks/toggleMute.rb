cask "togglemute" do
  version "1.5"
  sha256 "92904990e511684cd4708b556f46dc9b7c286d80c0d277ab25e66c3bac4296cc"
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
