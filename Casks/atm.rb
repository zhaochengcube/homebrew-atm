cask "atm" do
  version "1.3.6"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "8d8ec3e2d07d10a100a5a0b510d6b970c833178084a6d2b8a1115500862dbb86",
         intel: "a8e431f82d0ca77ee2e793856ac5747ab860eef51f1da13b21d2dea3ebc2229b"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
