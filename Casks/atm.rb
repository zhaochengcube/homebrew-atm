cask "atm" do
  version "1.6.1"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "a4f881dc10c7fd6ac0a0f6d36e6a9e5f328d4e589e35741306ca358e0df60f7a",
         intel: "4e9181dd3f06bc9ac55ed1113cac5754455edbe2b022a38d8b68689ee26e251b"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
