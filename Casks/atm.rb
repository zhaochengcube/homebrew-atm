cask "atm" do
  version "1.3.3"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "5eeaa0b2d3e05afb3193c9fdc407ef7cfa19cf0e706e5ee0cdc6cc772357dfe5",
         intel: "2315cba2ecc4137aeac00088f2c550b0215c290aa6879e7657eadce4ac5b956b"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
