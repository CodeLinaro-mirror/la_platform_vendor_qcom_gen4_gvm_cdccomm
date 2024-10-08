# Include from the base product
include device/qcom/gen4_gvm/gen4_gvm.mk
TARGET_BOARD_DERIVATIVE_SUFFIX := _cdccomm

TARGET_BASE_PRODUCT := gen4_gvm

# Flag to identify CDC HW
TARGET_USES_CDC_HW := true

PRODUCT_NAME := gen4_gvm_cdccomm
PRODUCT_DEVICE := gen4_gvm_cdccomm
PRODUCT_BRAND := qti
PRODUCT_MODEL := gen4_gvm_cdccomm for arm64

CUSTOM_PATCHES_MODE := apply

# Change Kernel modules install path
KERNEL_MODULES_INSTALL := dlkm
KERNEL_MODULES_OUT := out/target/product/$(PRODUCT_DEVICE)/$(KERNEL_MODULES_INSTALL)/lib/modules


