#!/bin/bash

sudo apt install libqt5glib-2.0-0 libspice-client-glib-2.0-8 libspice-client-glib-2.0-dev libgdk-pixbuf-2.0-dev libgdk-pixbuf2.0-dev librust-atk-dev librust-atk-sys-dev libcairo-gobject2 libcairo-gobject-perl librust-cairo-rs-dev librust-cairo-sys-rs-dev librust-pangocairo-dev librust-pangocairo-sys-dev librust-gdk-pixbuf-dev librust-gdk-pixbuf-sys-dev librust-gdk-sys-dev -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "REBOOT"
