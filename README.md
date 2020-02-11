# fzf-dpkg

Inspired by [fzf-apt](https://github.com/krickelkrakel/fzf-apt).

## Differences / Improvements

- Package info preview
- Exact search
- Local package information query
- Install / Uninstall directly from script
- Convenience functions for everyday apt related tasks

Depends on [fzf](https://github.com/junegunn/fzf), bash and awk.

This script will request root if required or sudo if installed on your system.

## Usage

`fzf-dpkg <action>`

### Actions

- `add`: Will show you a list of available packages and install them with apt-get install
- `rm`: Will show you a list of installed packages and purge them with apt-get purge
- `clean-rm`: Like purge but will autoremove packages if applicable
- `update`: Resynchronize the package index files from their sources and upgrades packages that are new
- `update-clean`: Like upgrade but will autoremove packages if applicable
- `ls`: Will show you a list of installed packages and additional information in the preview window

### Example

```bash
$ fzf-dpkg add
```
