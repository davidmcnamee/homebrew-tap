class ElectronTrpcPrisma < Formula
  desc "Electron app with tRPC and Prisma"
  homepage "https://github.com/davidmcnamee/electron-trpc-prisma"
  version "1.0.0"
  
  if Hardware::CPU.arm?
    url "https://github.com/davidmcnamee/electron-trpc-prisma/releases/download/v#{version}/trpc-prisma-electron-#{version}-mac-arm64.tar.gz"
    sha256 "21c3925bea56b9cec10eff8e46bebddcb908c18bd57e5eea546322da57813bca"
  else
    url "https://github.com/davidmcnamee/electron-trpc-prisma/releases/download/v#{version}/trpc-prisma-electron-#{version}-mac-x64.tar.gz"
    sha256 "PLACEHOLDER_SHA256_X64"
  end

  def install
    app = "trpc-prisma-electron.app"
    prefix.install app
    
    # Create a command-line launcher
    bin.install_symlink prefix/app/"Contents/MacOS/trpc-prisma-electron" => "trpc-prisma-electron"
  end

  def caveats
    <<~EOS
      To use the app from Applications folder, you may want to copy it:
        cp -r #{prefix}/trpc-prisma-electron.app /Applications/
      
      Or you can run it from the command line:
        trpc-prisma-electron
    EOS
  end

  test do
    assert_predicate prefix/"trpc-prisma-electron.app", :exist?
  end
end