cask "atm" do
  version "1.9.2"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/cubezhao/augment-token-mng"

  sha256 arm:   "28a9fa00e4caa2fa0f6ba6d5d442493e9fd5c8c84556e7f89e5d187b95e51475",
         intel: "b1929b489f879d7b4f82668cc91ba4b29e93ff1b2445477c8a004759c6536182"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
