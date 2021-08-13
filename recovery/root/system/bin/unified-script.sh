#!/system/bin/sh
# This script is needed to automatically set device props.


load_phoenixin()
{
    resetprop "ro.product.model" "POCO X2"
    resetprop "ro.product.name" "phoenixin"
    resetprop "ro.build.product" "phoenixin"
    resetprop "ro.product.device" "phoenixin"
    resetprop "ro.vendor.product.device" "phoenixin"
}

load_phoenix()
{
    resetprop "ro.product.model" "Redmi K30"
    resetprop "ro.product.name" "phoenix"
    resetprop "ro.build.product" "phoenix"
    resetprop "ro.product.device" "phoenix"
    resetprop "ro.vendor.product.device" "phoenix"
}


project=$(getprop ro.boot.hwc)
echo $project

case $project in
    "INDIA")
        load_phoenixin
        ;;
    "CN")
        load_phoenix
        ;;
esac

exit 0
