cask "atm" do
  version "1.2.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "06cfcd2d9cbecd41afb82b1e88e5c4451a9e947379c2c20d6a51c6ecb6e90b92",
         intel: "6955b498fa6f3864f603e4d3cc9a5ff1236ed96de98b5bb6fe57a8e425b9daa0"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
