cask "atm" do
  version "1.0.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v\#{version}/ATM_\#{version}_\#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "cf5cb07b4d5a127c7d62c0b21fa98827b9b02f761d3a13982952bdd2a6a31845",
         intel: "dbfbc38f200398046a40aae3249908f89dbe410d2f5df171521bcf8903b808fa"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
