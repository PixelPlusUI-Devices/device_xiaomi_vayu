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
git clone https://github.com/sanjeevstunner/vendor_xiaomi_vayu.git vendor/xiaomi/vayu
fi

# Kernel Tree
if [[ -d "kernel/xiaomi/vayu" ]]; then
echo "Looking for changes in kernel tree"
cd kernel/xiaomi/vayu && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/Jebaitedneko/android_kernel_xiaomi_vayu.git -b r2 kernel/xiaomi/vayu
fi

# Mi Parts
if [[ -d "vendor/xiaomi/devicesettings" ]]; then
echo "Looking for changes in MiParts Repo"
cd vendor/xiaomi/devicesettings && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/PixelPlusUI-Devices/vayu_vendor_xiaomi_device_settings.git vendor/xiaomi/devicesettings
fi

# Google Camera
if [[ -d "vendor/Gcam" ]]; then
echo "Looking for changes in GCam Repo"
cd vendor/Gcam && git pull && cd ../..
echo ""
else
echo ""
git clone https://gitlab.com/sanjeevstunner/vendor-g-cam-bsg.git vendor/Gcam
fi

# Pixel Launcher MOD
if [[ -d "vendor/pixel/launcher" ]]; then
echo "Looking for changes in Pixel Launcher MOD Repo"
cd vendor/pixel/launcher && git pull && cd ../../..
echo ""
else
echo ""
git clone https://github.com/sanjeevstunner/vendor_pixel_launcher.git vendor/pixel/launcher
fi

# HALs 
if [[ -d "hardware/qcom-caf/sm8150/audio" ]]; then
echo "Looking for changes in audio HAL"
cd hardware/qcom-caf/sm8150/audio && git pull && cd ../../../..
echo ""
else
echo ""
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_audio.git -b twelve hardware/qcom-caf/sm8150/audio
fi

if [[ -d "hardware/qcom-caf/sm8150/media" ]]; then
echo "Looking for changes in media HAL"
cd hardware/qcom-caf/sm8150/media && git pull && cd ../../../..
echo ""
else
echo ""
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_media.git -b twelve hardware/qcom-caf/sm8150/media
fi

if [[ -d "hardware/qcom-caf/sm8150/display" ]]; then
echo "Looking for changes in display HAL"
cd hardware/qcom-caf/sm8150/display && git pull && cd ../../../..
echo ""
else
echo ""
git clone https://github.com/PixelExperience/hardware_qcom-caf_sm8150_display.git -b twelve hardware/qcom-caf/sm8150/display
fi
