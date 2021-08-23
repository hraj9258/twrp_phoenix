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
    setprop "ro.product.model" "Redmi K30"
    setprop "ro.product.name" "phoenix"
    setprop "ro.build.product" "phoenix"
    setprop "ro.product.device" "phoenix"
    setprop "ro.vendor.product.device" "phoenix"
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
