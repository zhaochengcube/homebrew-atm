cask "atm" do
  version "1.3.5"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "6c4a55a6e3b140cf7fad9bed5c75f39aff799f40fd262452c7d27bd710e1a3e6",
         intel: "ae6d06ee1d2c1de69ef089e4e08420c98dd5d51f0763e5911131026456b1a845"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
