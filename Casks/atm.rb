cask "atm" do
  version "1.7.1"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "839e2e90808e37152e1e67dc05307b268319cc14562cd65fed13c6bf3234f1aa",
         intel: "6d81ffe56facc8fee2fbbc6d5fdf20694b564e4ac15587ddc616897091b91c9a"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
