# Description

Some useful to me dotfiles to ease everyday work.
Installation:

```bash
git clone https://github.com/hatedabamboo/dotfiles.git
cd dotfiles
bash install.sh
```

## Scheduled consistency monitoring

To remind myself to commit changes from my local dotfiles to the repository I
added a script `cron.sh` to track differences weekly. systemd unit files are
packaged as well in a `systemd` directory.
