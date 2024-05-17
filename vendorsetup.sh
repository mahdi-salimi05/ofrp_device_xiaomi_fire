export FOX_USE_SPECIFIC_MAGISK_ZIP=./device/xiaomi/fire/Magisk/Magisk-v27.0.zip
export OF_FL_PATH1="/sys/class/leds/torch-light0"

 # Some about us
export FOX_VERSION="R12.1"
export OF_MAINTAINER="mahdi-salimi05"

# Build environment stuffs
#export FOX_BUILD_DEVICE="Redmi12"
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_USERNAME="nobody"
export BUILD_HOSTNAME="android-build"

# Use magisk boot for patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

# We have a/b partitions
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1

# Screen specifications
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1
export OF_SCREEN_H=2460
export OF_STATUS_H=120

# Device stuff
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

# OTA for custom ROMs
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1

# Quick Backup list
export OF_QUICK_BACKUP_LIST="/boot;/data;/super;"

# Dont install AROMAFM
export FOX_DELETE_AROMAFM=1

# Add some extras
export OF_ENABLE_LPTOOLS=1
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export OF_NO_SPLASH_CHANGE=1
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
