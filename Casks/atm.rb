cask "atm" do
  version "1.6.3"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "337729604985cea822a51982afe445882edfe00563d99fb27644f188d9ec70b4",
         intel: "cc787628f3c7dc25560def3c0660bd8fd31a72e62bf343f8f81ac4beb8cfe703"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
