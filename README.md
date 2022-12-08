# Linux Setup

As a rule of thumb, I use Kubuntu for most of my stuff, so that's what I'm preparing this script for.

If I change distros eventually, I may change this script.

## What does it do?

This script adds the following stuff to your default linux, if not already there:

### Custom keyboard shortcuts

**I'm currently not sure how to create a script for this, so do it by following this [tutorial](./shortcuts_tutorial.md)**

| Keyboard Shortcurt | Action        |
| :----------------: | :-----------: |
| `ALT + SPACE`      | Search        |
| `CTRL + ALT + T`   | Open terminal |
| `COMMAND + D`      | Minimize all  |

### Used Fonts

- Hack
- Noto Sans

### Apps

- [Hyper.js](https://hyper.is/)

> Set as default terminal emulator

- [Flameshot](https://flameshot.org/)

> Set as default terminal emulator

- [Zsh](https://zsh.sourceforge.io/)

> Set as default shell

- [Oh-my-Zsh](https://ohmyz.sh/)

> Used for zsh plugins

### Custom configurations

- .gitconfig

> Changes default branch name to main and add `git go` alias, which adds all files and commits them at once

- .hyper.js

> Changes list of plugins and colors for Hyper

## Dependencies

- `apt`
- `wget`
- `chsh`
