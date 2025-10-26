cask "atm" do
  version "1.2.1"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "69b38130f1cd3912ff245129f1d738d2eb7dbf107e4e6bd543970e1e146e4a1a",
         intel: "510846809709bcd9040f3e59f20a653a4655d14e9154f7180a9eeb707ef8a3de"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
