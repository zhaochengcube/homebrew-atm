cask "atm" do
  version "1.5.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "c35e96612e26812a7f4ca55f251b22763598ef28bb7aa6f5a84b1f0ff27b1b0d",
         intel: "0d3f94adffcf9278fe4ff49435adcdafd9f3e3f361da89e6f148a49f93b261ea"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
