cask "plan" do
  version "0.1.8"

  on_arm do
    sha256 "717a9dbf5380ef1015df3ff4d23b0354c2c81cce4385ae8dcd91c5e3059740ab"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "96833299b842ec9b73e1f4e5ec1d0044eb857a810b656d67bb950f3695f3a47d"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-x86_64-apple-darwin.dmg"
  end

  name "Plan"
  desc "Team planning app"
  homepage "https://github.com/XabAyca/plan-releases"

  app "Plan.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Plan.app"]
  end

  zap trash: [
    "~/Library/Application Support/Plan",
    "~/Library/Preferences/com.mipise.plan.plist",
    "~/Library/Saved Application State/com.mipise.plan.savedState",
  ]
end
