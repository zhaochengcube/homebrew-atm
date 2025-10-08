cask "atm" do
  version "0.5.1"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "2c9e92b5a5d8ce660678ac0ad2f273570f6c3d64868a8b5732dbe3de4c0a4fd4",
         intel: "eb4a23a9847f4324a5f7e862d7ec0260e92a480f3556d42ba6545fb8906914f6"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
