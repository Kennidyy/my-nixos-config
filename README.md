# ❄️ My Personal NixOS Config

> ⚠️ Use at your own risk. This setup is developed for **my** machine and preferences.

## 🧠 About

Modular NixOS configuration with system and user-level setups, organized by host.

---

## 🚀 How to Use

1. **Clone the repository**

    ```bash
    git clone https://github.com/Kennidyy/my-nixos-config.git
    ```

2. **Enter your host folder**

    ```bash
    cd my-nixos-config/host/tux  # Or create/edit your own host config
    ```

3. **Rebuild NixOS**

    ```bash
    sudo nixos-rebuild switch -I nixos-config=./configuration.nix
    ```

> ⚠️ You must run the rebuild command **inside** the `host/{your-host}` folder.

---

📌 Remember: This config is personalized and might require adjustments for your hardware and preferences.

---

## 🔍 License

MIT — do whatever you want
