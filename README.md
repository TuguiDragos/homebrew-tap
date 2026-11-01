# Țugui Dragoș's Homebrew tap

Peel has moved to [Homebrew's official casks](https://formulae.brew.sh/cask/peel), so there is nothing left to install
from this tap.

```bash
brew install --cask peel
```

## If you installed Peel from this tap

You don't need to do anything. Your next `brew update` moves Peel over to the official cask. Your History, exclusions,
settings, and permissions stay as they are, the helper included.

Homebrew says so in a few lines. One of them suggests `brew uninstall --cask --force peel`: please don't run it, since
it would remove Peel. If the version Homebrew noted when it installed your copy isn't the official cask's, Homebrew
upgrades Peel right then, and quits and reopens it to do so.

Two things you may notice, and neither loses anything:

- If you pressed Update Homebrew inside Peel, Peel stays open on the new copy, so quit it and open it again. Until you
  do, a Peel before 1.3.0 can show its helper, its login item, and its Finder extension as off.
- If Peel was closed, Uninstall with Peel comes back to Finder's menu the next time you open Peel.

After that, you can remove this tap:

```bash
brew untap tuguidragos/tap
```

The old name, `tuguidragos/tap/peel`, keeps leading to the official cask, in scripts and Brewfiles too. That is why
this repository stays. On a Mac that has never used this tap, Homebrew may warn that it isn't trusted, and
`brew untap tuguidragos/tap` ends the warning.

## Help

Questions about Peel go to [Peel's discussions](https://github.com/TuguiDragos/Peel/discussions), and problems to
[its issues](https://github.com/TuguiDragos/Peel/issues/new/choose).

## License

The files in this tap are under the [BSD 2-Clause License](LICENSE). Peel itself is free software under the
[GNU General Public License, version 3 or later](https://github.com/TuguiDragos/Peel/blob/main/LICENSE).
