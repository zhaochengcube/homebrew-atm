cask "atm" do
  version "0.5.1"
  
  arch arm: "aarch64", intel: "x64"
  
  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"
  
  sha256 arm:   "待自动更新",
         intel: "待自动更新"
  
  app "ATM.app"
  
  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end

