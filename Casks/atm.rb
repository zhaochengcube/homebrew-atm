cask "atm" do
  version "1.6.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "3ab17c0eee16f3a218285fac3dcca346c82b1ff2cd53ccfa0ee5ec9bfcc84f9f",
         intel: "ed0f430c1168ed9ea8c2857cf09ff1ddb248da988795b94fbb79310dae227053"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
