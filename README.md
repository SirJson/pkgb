# fzf-dpkg

Inspired by [https://github.com/krickelkrakel/fzf-apt](fzf-apt).

## Differences / Improvements:

- Package info preview
- Exact search
- Local package information query
- Install / uninstall directly from script

Depends on fzf, bash and awk.

## Usage

fzf-dpkg <action>

Actions:
    install
    purge
    list

This script will request root if required or sudo if installed on your system.