#!/bin/bash -x

prefix=_
cust=${TARGET_BOARD_DERIVATIVE_SUFFIX#"$prefix"}

if [ "$CUSTOM_PATCHES_MODE" == "apply" ]; then
    if [ -d vendor/qcom/proprietary/automotive-patch-internal-vendor ]; then
        echo "Calling Apply patches"
        vendor/qcom/proprietary/automotive-patch-internal-vendor/scripts/custom-patching.sh vendor/qcom/proprietary/automotive-patch-internal-vendor/patches/$cust/vendor_patches apply
        vendor/qcom/proprietary/automotive-patch-internal-vendor/scripts/custom-patching.sh vendor/qcom/proprietary/automotive-patch-internal-vendor/patches/$cust/kernel_patches apply
    else
        echo "Patches folder not found"
    fi
elif [ "$CUSTOM_PATCHES_MODE" == "clean" ]; then
    echo "Cleaning patches"
    vendor/qcom/proprietary/automotive-patch-internal-vendor/scripts/custom-patching.sh vendor/qcom/proprietary/automotive-patch-internal-vendor/patches/$cust/vendor_patches clean
    vendor/qcom/proprietary/automotive-patch-internal-vendor/scripts/custom-patching.sh vendor/qcom/proprietary/automotive-patch-internal-vendor/patches/$cust/kernel_patches clean
fi
