cask "electron-trpc-prisma" do
  version "1.0.0"
  sha256 "21c3925bea56b9cec10eff8e46bebddcb908c18bd57e5eea546322da57813bca"

  url "https://github.com/davidmcnamee/electron-trpc-prisma/releases/download/v#{version}/trpc-prisma-electron-#{version}-mac-arm64.tar.gz"
  name "Electron tRPC Prisma"
  desc "Electron app with tRPC and Prisma"
  homepage "https://github.com/davidmcnamee/electron-trpc-prisma"

  app "trpc-prisma-electron.app"
  
  zap trash: [
    "~/Library/Application Support/trpc-prisma-electron",
    "~/Library/Preferences/com.electron.trpc-prisma-electron.plist",
    "~/Library/Saved Application State/com.electron.trpc-prisma-electron.savedState",
  ]
end