cask "atm" do
  version "1.3.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "fde1a66b6e0387b8dcbff579e3b3ed30f9b1d8bc3dcac2bd47638eb942593f8e",
         intel: "99c5ebb9c5d23e883cc4adce12e42be378af55b5ff6172390d384f450446a8c7"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
