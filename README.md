# My Home Manager Configuration

This repository contains the Nix Home Manager configuration I'm building
for my Mac and Linux workstations. I'm using [Home Manager][1] to replace
my current system built with a combination of makefiles, stow, homebrew,
and ansible.

I installed Nix on my Mac using the [Determinate Nix Installer][2]
and then installed Home Manager as a [Standalone Installation][3].

My configuration also references the `nixpkgs-unstable` channel, added by:

```bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
nix-channel --update
```

[1]:https://nix-community.github.io/home-manager/index.xhtml#ch-introduction
[2]:https://github.com/DeterminateSystems/nix-installer
[3]:https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone
