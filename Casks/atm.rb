cask "atm" do
  version "1.3.4"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "f688a47c05c35e56b6cc072bea0db1e5cf24d74f603a98370f14638650fad3e9",
         intel: "e1c81839f9c90be7608baea91fb4ad99cee7dc0ec0ccb6086d0ebd64ed38a150"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
