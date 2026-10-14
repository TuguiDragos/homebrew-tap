# Țugui Dragoș's Homebrew tap

Apps by [Țugui Dragoș](https://tuguidragos.com), for [Homebrew](https://brew.sh).

| Cask | What it is |
|---|---|
| [`peel`](https://github.com/TuguiDragos/Peel) | A free, open source uninstaller and cleaner for macOS Tahoe 26 or later, which also fine-tunes your Mac and sets up Terminal. |

## Install

```bash
brew install --cask tuguidragos/tap/peel
```

Use the full name. Since Homebrew 6.0.0, a cask from a tap outside Homebrew installs only once you trust it, and
naming it in full trusts that one cask. Homebrew also puts the `peel` command on your path, with its manual page
and its completions for zsh, bash, and fish.

If Peel is already in your Applications folder from the download, Homebrew can take over that copy instead of
stopping, as long as it's the same one Homebrew would install:

```bash
brew install --cask --adopt tuguidragos/tap/peel
```

In a Brewfile:

```ruby
cask "tuguidragos/tap/peel", trusted: true
```

## Update

```bash
brew upgrade --cask peel
```

Peel also updates itself: choose Check for Updates in the Peel menu, or Install Update in About Peel when it says a
new version is out. A copy Homebrew installed updates the same way. Since Peel updates itself, `brew upgrade` alone
upgrades it only when the copy in Applications is older than the cask; naming it, as above, always does.

## Uninstall

```bash
brew uninstall --cask peel
```

This removes the app and what Homebrew linked from it: the `peel` command, its manual page, and its completions.
Homebrew deletes the app rather than moving it to the Trash.

To take Peel's own files as well, add `--zap`:

```bash
brew uninstall --zap --cask peel
```

That also moves Peel's History, exclusions, settings, and caches to the Trash, and the shell and ssh settings from
Peel's Terminal page, which zsh and ssh then stop reading (Remove Peel, in a copy you downloaded, keeps those). It
stops Peel's helper and deletes the helper's record of what it moved, in `/private/var/db`. Homebrew asks for your
password for the helper.

## Help

This tap is not part of Homebrew, so please don't ask Homebrew about it. Questions about Peel, or about this tap,
go to [Peel's discussions](https://github.com/TuguiDragos/Peel/discussions), and problems to
[its issues](https://github.com/TuguiDragos/Peel/issues/new/choose).

## License

The cask in this tap is under the [BSD 2-Clause License](LICENSE). Peel itself is free software under the
[GNU General Public License, version 3 or later](https://github.com/TuguiDragos/Peel/blob/main/LICENSE).
