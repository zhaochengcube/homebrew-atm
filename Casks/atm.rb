cask "atm" do
  version "1.2.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "0b42711a7e53f3357bc7cd6ba88443d608d10ee3e7eb0d730886cc4d2dc05dfb",
         intel: "83657dca4137fe0c72b690f63efed4dc935ea8a7f1f4383de7124b4d5db78373"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
