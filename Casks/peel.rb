cask "peel" do
  version "1.1.0"
  sha256 "37fb0dcc483039aefc2652e16f8e2a1dc86a7da2f24bfa482c872c8661939e92"

  url "https://github.com/TuguiDragos/Peel/releases/download/v#{version}/Peel-#{version}.zip"
  name "Peel"
  desc "App uninstaller and disk space cleaner, with system tweaks and Terminal setup"
  homepage "https://peel.tuguidragos.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Peel.app"
  binary "#{appdir}/Peel.app/Contents/Helpers/peel"
  manpage "#{appdir}/Peel.app/Contents/Resources/man/peel.1"
  bash_completion "#{appdir}/Peel.app/Contents/Resources/completions/peel.bash"
  zsh_completion "#{appdir}/Peel.app/Contents/Resources/completions/_peel"
  fish_completion "#{appdir}/Peel.app/Contents/Resources/completions/peel.fish"

  uninstall quit:       "com.tuguidragos.Peel",
            login_item: "Peel"

  zap launchctl: "com.tuguidragos.Peel.Helper",
      delete:    "/private/var/db/com.tuguidragos.Peel.Helper",
      trash:     [
        "~/Library/Application Scripts/com.tuguidragos.Peel.FinderExtension",
        "~/Library/Application Support/Peel",
        "~/Library/Caches/com.tuguidragos.Peel",
        "~/Library/Caches/com.tuguidragos.Peel.CLI",
        "~/Library/Containers/com.tuguidragos.Peel.FinderExtension",
        "~/Library/HTTPStorages/com.tuguidragos.Peel",
        "~/Library/HTTPStorages/com.tuguidragos.Peel.binarycookies",
        "~/Library/HTTPStorages/com.tuguidragos.Peel.CLI",
        "~/Library/HTTPStorages/com.tuguidragos.Peel.CLI.binarycookies",
        "~/Library/Logs/Peel",
        "~/Library/Preferences/com.tuguidragos.Peel.plist",
        "~/Library/Saved Application State/com.tuguidragos.Peel.savedState",
      ]
end
