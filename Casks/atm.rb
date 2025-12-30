cask "atm" do
  version "1.5.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "95c9247aa23638fc703df7fac0d82bc85768dab1462c702f9740656d5a7e0943",
         intel: "f4dada538746ecdf121fcb74b8456eb67a4b9bf1bc5069c5645fc8bb58e7cd6a"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
