cask "atm" do
  version "1.3.0"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "7745e9feec87e2688533100359ab750e62e5b804de7410119d52770491807d03",
         intel: "974e3b2822867e72cedf76579aefa60583c73cdd09e3fe36a8291a677fd34581"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
