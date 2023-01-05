git clone https://github.com/PixelPlusUI-Devices/vendor_xiaomi_vayu -b tiramisu vendor/xiaomi/vayu
rm -rf hardware/xiaomi
git clone https://github.com/sanjeevstunner/android_hardware_xiaomi.git -b 13 hardware/xiaomi
git clone --depth 1 https://github.com/PixelPlusUI-Devices/kernel_xiaomi_vayu -b tiramisu kernel/xiaomi/vayu
git clone https://github.com/PixelPlusUI-Devices/vayu_vendor_xiaomi_device_settings -b qpr1 vendor/xiaomi/devicesettings
git clone https://gitlab.com/sanjeevstunner/vendor-g-cam-bsg.git -b main vendor/Gcam
