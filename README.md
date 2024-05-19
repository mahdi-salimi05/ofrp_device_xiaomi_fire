# OFRP Device Tree for Xiaomi Redmi 12

The Xiaomi Redmi 12 (codenamed _"fire"_) is an entry-level smartphone from Xiaomi.

It was announced and released in June 2023.

## Device specifications

| Feature                        | Specification                                                     |
| -----------------------------: | :---------------------------------------------------------------- |
| Chipset                        | Mediatek MT6769H Helio G88                                        |
| CPU                            | Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)           |
| GPU                            | Mali-G52 MC2                                                      |
| Memory                         | 4GB / 6GB / 8GB RAM (LPDDR4X)                                     |
| Shipped OS                     | Android 13, MIUI 14                                               |
| Storage                        | 128GB / 256GB (eMMC 5.1)                                          |
| SIM                            | Hybrid Dual SIM (Nano-SIM, dual stand-by)                         |
| MicroSD                        | Up to 1TB                                                         |
| Battery                        | 5000mAh Li-Po (non-removable), 18W fast charge                    |
| Dimensions                     | 168.6 x 76.3 x 8.2 mm (6.64 x 3.00 x 0.32 in)                     |
| Display                        | 6.79", 1080 x 2460 pixels, IPS LCD, 90Hz (~396 ppi density)       |
| Rear Camera 1                  | 50 MP, f/1.8, (wide), PDAF                                        |
| Rear Camera 2                  | 8 MP, f/2.2, 120˚ (ultrawide)                                     |
| Rear Camera 3                  | 2 MP, f/2.4, (macro)                                              |
| Front Camera                   | 8 MP, f/2.1                                                       |
| Fingerprint                    | (side-mounted)                                                    |
| Sensors                        | accelerometer, compass                                            |

$~$

## Working features so far

### Blocking checks
- [X] Correct screen/recovery size
- [X] Working Touch, screen
- [X] Working slot switching
- [X] Backup to internal/microSD
- [X] Restore from internal/microSD
- [X] reboot to system
- [X] ADB

### Medium checks
- [X] update.zip sideload
- [X] UI colors (red/blue inversions)
- [X] Screen goes off and on
- [X] F2FS/EXT4 Support, exFAT/NTFS where supported
- [X] all important partitions listed in mount/backup lists
- [X] backup/restore to/from external (USB-OTG) storage
- [X] backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [X] decrypt /data
- [X] Correct date

### Minor checks
- [X] MTP export
- [X] reboot to bootloader
- [X] reboot to recovery
- [X] poweroff
- [X] battery level
- [X] temperature
- [ ] ~~encrypted backups~~ (no option)
- [X] input devices via USB (USB-OTG) - keyboard (not tested), mouse (works) and disks (works)
- [ ] ~~USB mass storage export~~ (unavailable)
- [X] set brightness
- [X] vibrate
- [X] screenshot
- [X] partition SD card

$~$

## How to build

1. Set up the build environment following the instructions [here](https://wiki.orangefox.tech/en/dev/building#h-0-prepare-the-build-environment-debian-based-linux-distros)

2. In the root folder of the fetched [repo](https://wiki.orangefox.tech/en/dev/building#h-1-sync-orangefox-sources-and-minimal-manifest), clone the device tree:

```bash
git clone https://github.com/mahdi-salimi05/ofrp_device_xiaomi_fire.git device/xiaomi/fire
```

3. To build:

```bash
cd ~/OrangeFox # (or whichever directory has the synced manifest)
  /bin/bash # if your Linux shell isn't bash
  export ALLOW_MISSING_DEPENDENCIES=true
  export FOX_BUILD_DEVICE=<device>
  export LC_ALL="C"

# for all brances
  source build/envsetup.sh

# for branches lower than 11.0
  lunch omni_<device>-eng && mka recoveryimage

# for branches lower than 11.0, with A/B partitioning
  lunch omni_<device>-eng && mka bootimage

# for the 11.0 (or higher) branch
  lunch twrp_<device>-eng && mka adbd recoveryimage

# for the 11.0 (or higher) branch, with A/B partitioning
  lunch twrp_<device>-eng && mka adbd bootimage

# for the 12.1 (or higher) branch, vendor_boot-as-recovery builds [this is highly experimental and unsupported!]
  lunch twrp_<device>-eng && mka adbd vendorbootimage
```

$~$

## How to install "permanently"

1. download orangefox image [here](https://github.com/mahdi-salimi05/OrangeFox-Action-Builder/releases) [(old version is here)](https://github.com/mahdi-salimi05/Action-OFRP-Builder/releases).

2. dump your boot image with [mtkclient](https://github.com/bkerler/mtkclient):

```bash
python3 mtk r boot boot.img
```

3. flash [orangefox image](https://github.com/mahdi-salimi05/Action-OFRP-Builder/releases) to your boot_a "or boot" partition

```bash
fastboot flash boot OrangeFox-R12.1-Unofficial-fire.img
```

4. reboot to recovery

```bash
fastboot reboot recovery
```

5. Once booted, put your stock boot image in Internalstorage , MicroSdcard or Usb-Otg then Flash stock boot image in boot partition and tick (Flash to both slots) (this will remove OF recovery form your device; you need to reflash orange fox from menu>Flash current OF).
after that it is better to flash OF.zip file 

## Device picture

![xiaomi-redmi-12-1](https://github.com/AntarticShaurant/android_device_xiaomi_fire/assets/109678650/bd593af4-92d4-4d5a-872d-e21bbb699a89)
