# tn5250 Homebrew tap

A curses-based 5250 terminal emulator for IBM i, with OpenSSL support.

## Installation

```sh
brew install targeter/tn5250/tn5250
```

Or in a Brewfile:

```ruby
tap "targeter/tn5250"
brew "tn5250"
```

## Updates

The `brew bump` GitHub Actions workflow checks daily at 13:45 UTC for a new
upstream GitHub release and opens a formula update pull request. Updates require
review and merging; they are not merged automatically.

GitHub Actions must be allowed to create pull requests under **Settings → Actions
→ General → Workflow permissions**.

Pull requests created using `GITHUB_TOKEN` do not trigger the pull-request test
workflow automatically. To run CI, close and reopen the generated PR as a user,
or use a GitHub App token or personal access token for the bump workflow.

After an update is merged:

```sh
brew update
brew upgrade targeter/tn5250/tn5250
```
