# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Looking for changes in device tree"
cd device/xiaomi/vayu && git pull && cd ../../..
echo ""

# Vendor Tree
if [[ -d "vendor/xiaomi/vayu" ]]; then
echo "Looking for changes in vendor tree"
cd vendor/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/android_vendor_xiaomi_vayu.git -b 13 vendor/xiaomi/vayu
fi

# Hardware Tree
if [[ -d "hardware/xiaomi" ]]; then
echo "Removing prebuilt hardware tree"
rm -rf hardware/xiaomi
git clone https://github.com/sanjeevstunner/android_hardware_xiaomi.git -b 13 hardware/xiaomi
echo ""
fi

# Kernel Tree
if [[ -d "kernel/xiaomi/vayu" ]]; then
echo "Looking for changes in kernel tree"
cd kernel/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone --depth 1 https://github.com/sanjeevstunner/android_kernel_xiaomi_vayu -b main kernel/xiaomi/vayu
fi

# Mi Parts
if [[ -d "vendor/xiaomi/devicesettings" ]]; then
echo "Looking for changes in MiParts Repo"
cd vendor/xiaomi/devicesettings && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/android_vendor_xiaomi_device_settings.git -b los vendor/xiaomi/devicesettings
fi

# Google Camera
if [[ -d "vendor/Gcam" ]]; then
echo "Looking for changes in GCam Repo"
cd vendor/Gcam && git pull && cd ../..
echo ""
else
echo ""
git clone https://gitlab.com/sanjeevstunner/vendor-g-cam-bsg.git -b main vendor/Gcam
fi
