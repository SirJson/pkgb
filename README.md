# packagebuddy

Simpel bash script alternative to aptitude or synaptic.
Inspired by [fzf-apt](https://github.com/krickelkrakel/fzf-apt).

## Features

- Package info preview
- Exact search
- Local package information query
- Install / Uninstall directly from script
- Convenience functions for everyday apt related tasks

Depends on [fzf](https://github.com/junegunn/fzf), bash, awk and other coreutils.

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
