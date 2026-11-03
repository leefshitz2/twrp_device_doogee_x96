#!/bin/bash

# Fix BoardConfigTWRP.mk if needed for minimal manifest
if [ -f ./vendor/twrp/config/BoardConfigTWRP.mk ]; then
    sed -i '/^ifeq/,$d' ./vendor/twrp/config/BoardConfigTWRP.mk 2>/dev/null || true
fi
