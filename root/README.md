# Root Configs

These are the files that needed to be placed in location respective of root.

## Login Config.

Have Tried using many login managers like [ly](https://github.com/fairyglade/ly) [sddm](https://github.com/sddm/sddm) both worked nice but was not like i expected.

 > ly: is minimal but then why to have it.

 > sddm: is feature rich i use it with theme [ittu_bottom_c](https://www.opencode.net/adhe/ittusddm) with my own gif placed in asset. but sddm is not yet fully wayland compatible. waiting for release 0.20.
    nimation.gif needs to be placed in `/usr/share/sddm/themes/ittu_bottom_c/components/artwork/gifs/$(whoami).gif`

  > issue: this file will change the tty prompt for me.
    skip-username.conf will make sure the default user name is `niksingh710` in the tty prompt.

### issue

  > To be placed in:
    `/etc/issue`

### skip-username.conf
  
  > To be placed in:
    `/etc/systemd/system/getty@tty1.service.d/skip-username.conf`


## Pacman Hooks

I like silent boot.
Having timeshift with timeshift-autosnap creates backup on every update and updates grub.
This updation of grub enables some lines with `echo` in `/boot/grub/grub.cfg`.
So i created this PostTransaction hook of pacman that resolves that.
No sure but may require user to have `%wheel ALL=(ALL:ALL) NOPASSWD: ALL` in sudoers.

  > Should be placed in `/etc/pacman.d/`

