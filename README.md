# packagebuddy

Simpel bash script alternative to aptitude or synaptic.
Inspired by [fzf-apt](https://github.com/krickelkrakel/fzf-apt).

## Features

- Supports both fzf and skim
- Preview package info before installing
- Query what packages are already installed and what is known about them (for example: Where do all the files end up)
- Install / Uninstall directly from your own script
- Convenience functions for everyday package mangager related tasks

Depends on [fzf](https://github.com/junegunn/fzf) or [skim](https://github.com/lotabout/skim), bash, awk and coreutils.

This script will request root if required or sudo if installed on your system.

## Usage

```sh
pkgb [-c] [-s] [-f] [-h] (add del export list purge upgrade checkout) [QUERY]
```

Where `QUERY` is a optional search string that will be given to the fuzzy searcher at the start.

If the action you choose doesn't need fzf this parameter will be ignored

### Options

- `-c`: Will run autoremove after action
- `-s`: Safe execute. You have to confirm apt actions in a more traditional way.
- `-f`: Fast execute. Won't run `apt-get update` before action
- `-h`: Show help

### Actions

> NOTE: Depending on your package manager the more advanced features are not available

- `add`: Allows installing one or more packages from a list of available packages.
- `del`: Allows removing one or more packages from a list of installed packages.
- `purge`: Allows purging (completely remove) one or more packages from a list of installed packages.
- `list`: Will show you a list of installed packages on this system with additional information in the preview window
- `export`: Writes a list of all installed packages on this system to stdout.
- `upgrade`: Find, download and apply all availiable upgrades to your system packages
- `checkout`: Will show you a list of installed packages. After selecting a packgage you can checkout a specific path the package created on your system.

## Examples

A few examples on how to use this script.

### Browsing all availiable packages for install

```sh
pkb add
```

### Installing zsh and confirm the installation

```sh
pkb -s add zsh
```

### Completely remove snapd and confirm all actions

```sh
pkb -cs purge snapd
```

### Search for python3 packages

```sh
pkb list python3-
```

### Upgrade all packages and cleanup all obsolete packages

```sh
pkb -c upgrade
```
