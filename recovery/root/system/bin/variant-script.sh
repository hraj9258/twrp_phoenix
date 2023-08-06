#!/system/bin/sh
# This script is needed to automatically set device props.

load_fog()
{
    resetprop "ro.product.model" "220333QAG"
    resetprop "ro.product.vendor.model" "220333QAG"
    resetprop "ro.product.name" "fog"
    resetprop "ro.build.product" "fog"
    resetprop "ro.product.device" "fog"
    resetprop "ro.product.system.device" "fog"
    resetprop "ro.product.vendor.device" "fog"
    resetprop "ro.vendor.product.device" "fog"
}

load_rain()
{
    resetprop "ro.product.model" "220333QNY"
    resetprop "ro.product.vendor.model" "220333QNY"
    resetprop "ro.product.name" "rain"
    resetprop "ro.build.product" "rain"
    resetprop "ro.product.device" "rain"
    resetprop "ro.product.system.device" "rain"
    resetprop "ro.product.vendor.device" "rain"
    resetprop "ro.vendor.product.device" "rain"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_fog
        ;;
    "EUROPE")
        load_rain
        ;;
    *)
        load_fog
        ;;
esac

exit 0
