#!/bin/bash
yay --noconfirm

countdown() {
    for ((i=5; i>0; i--)); do
        echo "$i..."
        sleep 1
    done
}
main() {
    countdown
    reboot
}
main
