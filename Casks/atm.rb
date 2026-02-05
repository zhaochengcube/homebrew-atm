cask "atm" do
  version "1.8.4"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "5dd01deb3b0cbdff4bcf04d93ff8076a030e0964f7b8a62bf19b31e9fa0b1aff",
         intel: "6c727f2df4576ef77867ee0d124592c319e4819a857b5a774cf771ab0b8aee08"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
