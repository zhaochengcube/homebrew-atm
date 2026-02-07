cask "atm" do
  version "1.8.5"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "90f415a5f2499417ba5861cdf23c31607ad48fb6696f89a3f1598e9ff5524dfe",
         intel: "111540afc1dfa4b84c43c0036b457786baa7199e4a69591f5c74f5e19e25242d"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
