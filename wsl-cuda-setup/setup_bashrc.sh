#! /bin/bash

# Exports for xserver GUI forwarding
echo '
# WSL2 xserver GUI forwarding
export DISPLAY=$(ip route  | awk "/default via / {print $3; exit}" 2>/dev/null):0.0
export LIBGL_ALWAYS_INDIRECT=0' >> ~/.bashrc

