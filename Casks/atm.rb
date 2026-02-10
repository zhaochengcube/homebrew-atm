cask "atm" do
  version "1.9.1"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "c2d618bad0c64c1981591ad962eb0d79ab8dcf3ad9e6be1d4f7134a096c13ed1",
         intel: "c7e30c83ca71a35c2ca72c065fa0fdcbaca369535c1a8947710e152c538e4667"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
