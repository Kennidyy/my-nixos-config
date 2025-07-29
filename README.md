# ❄️ My Personal NixOS Config

> ⚠️ Use at your own risk. This setup is developed for my machine and preferences.

## 🧠 About

Modular NixOS configuration with system and user-level setups. Organized by host.

---

## 🚀 How to use

### 1. Clone the repo

```bash
git clone https://github.com/Kennidyy/my-nixos-config.git
cd ~/nixos-config/host/tux # Or you can create/edit your own user host config
sudo nixos-rebuild switch -I nixos-config=./configuration.nix
