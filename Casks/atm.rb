cask "atm" do
  version "1.0.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "59eea0a40fb99c68942ea77fadcfa69ccb94df53b056fcf279087c0ef86f9ac8",
         intel: "6b5ee4f9243c623cca2eecc3e28c25d77d2b7b536cadf6f64ad31d031827c580"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
