cask "togglemute" do
  version "1.6"
  sha256 "12f36769f53e40f6ea548f258644d19d95074b6af9624b50f362871b05a489df"
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
