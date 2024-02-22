cask "toggleMute" do
  version "1.5"
  sha256 "97de86279a93d519acc8dabbdd2c9aadb6682bbd7533a4edb5ef6ca4cdaa9125"

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
