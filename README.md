# homebrew-plan

Homebrew tap for [Plan](https://github.com/XabAyca/plan-releases), a team
planning macOS app.
## Install

```sh
brew install --cask XabAyca/plan/plan
```

The first call auto-taps `XabAyca/homebrew-plan`, downloads the `.dmg` matching
your architecture (Apple Silicon or Intel) from
[plan-releases](https://github.com/XabAyca/plan-releases/releases), and drops
`Plan.app` in `/Applications`. Homebrew strips the quarantine flag, so no
Gatekeeper warning on first launch.

## Upgrade

```sh
brew upgrade --cask plan
```

## Uninstall

```sh
brew uninstall --cask plan
```

## Maintainer notes

On each release, bump `version` and both `sha256` values in `Casks/plan.rb`.
Get the hashes with:

```sh
version=0.1.0
for arch in aarch64 x86_64; do
  curl -sL "https://github.com/XabAyca/plan-releases/releases/download/v${version}/plan-${version}-${arch}-apple-darwin.dmg" \
    | shasum -a 256
done
```
