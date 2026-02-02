cask "atm" do
  version "1.8.3"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/zhaochengcube/augment-token-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "Augment Token Manager - Token management tool for Augment Code"
  homepage "https://github.com/zhaochengcube/augment-token-mng"

  sha256 arm:   "0b89d1aee9abf9ec0df0ce10505386a1a9d0612e21f1061c69442316f7aa90cc",
         intel: "676f06ef27942fb41417e1f98bccd8dfefe14cc8013dd4d84768ccb501b3502b"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
