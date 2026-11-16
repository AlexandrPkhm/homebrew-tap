# AlexandrPkhm Homebrew Tap

Homebrew casks for [Tart Manager](https://alexandrpkhm.github.io/TartManager/),
a native macOS control center for [tart](https://github.com/openai/tart)
virtual machines.

## Install

```sh
brew install --cask alexandrpkhm/tap/tart-manager
```

Tart Manager is not notarized. The first time you open it, macOS blocks it.
Open **System Settings** → **Privacy & Security** and click **Open Anyway**
(macOS 15 and later), or Control-click the app and choose **Open** (macOS 14).

Tart Manager updates itself. `brew upgrade` skips it unless you add
`--greedy`.

## Update the cask

After a Tart Manager release, set `version` and `sha256` in
`Casks/tart-manager.rb`:

```sh
brew bump-cask-pr --version <X.Y.Z> alexandrpkhm/tap/tart-manager
```
