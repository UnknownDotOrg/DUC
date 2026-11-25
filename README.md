# DUC (Debian Update Checker)
DUC is a small program that checks for updates on Debian.

## Launch it on startup
To make it automatically launch on startup, open a terminal and enter these commands:

`mkdir -p ~/.config/autostart`

`nano ~/.config/autostart/duc.desktop`

Inside of Nano, put:
```
[Desktop Entry]
Type=Application
Name=Debian Update Checker
Comment=Check for Debian updates
Exec=/bin/bash /home/YOUR_USERNAME/debian-update-checker/duc.sh
Terminal=true
X-GNOME-Autostart-enabled=true
```

Replace YOUR_USERNAME with your real username.

That's it! To test it, log out and log back in and see the program automatically launch!
