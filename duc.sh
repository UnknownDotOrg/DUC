
#!/usr/bin/env bash

echo "=========================="
echo " Debian Update Checker"
echo "=========================="

echo "Refreshing package lists..."

if ! pkexec apt-get update; then
    echo "Failed to refresh package lists."
    exit 1
fi

echo
echo "Checking for available updates..."

UPDATES=$(apt-get -s upgrade | grep -c '^Inst ')

echo "Available updates: $UPDATES"

if [ "$UPDATES" -eq 0 ]; then
    echo "Your system is up to date!"
    exit 0
fi

echo
read -r -p "Install these updates? [y/N] " ANSWER

case "$ANSWER" in
    [yY]|[yY][eE][sS])
        echo "Installing updates..."

        if pkexec apt-get upgrade; then
            echo "Updates installed successfully!"
        else
            echo "Update installation failed."
            exit 1
        fi
        ;;
    *)
        echo "Updates skipped."
        ;;
esac
