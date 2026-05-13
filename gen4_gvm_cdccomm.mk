# CDC specific fstab deployed to vendor ramdisk and vendor
PRODUCT_COPY_FILES += device/qcom/gen4_gvm_cdccomm/fstab_AB_dynamic_partition_variant.gen4_cdccomm.qti:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.gen4.qcom
PRODUCT_COPY_FILES += device/qcom/gen4_gvm_cdccomm/fstab_AB_dynamic_partition_variant.gen4_cdccomm.qti:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.gen4.qcom

# Include from the base product
include device/qcom/gen4_gvm/gen4_gvm.mk
TARGET_BOARD_DERIVATIVE_SUFFIX := _cdccomm

TARGET_BASE_PRODUCT := gen4_gvm

# Flag to identify CDC HW
TARGET_USES_CDC_HW := true

# Flag to enable DATA features on CDC HW
ENABLE_DATA_AUTOMS := false

PRODUCT_NAME := gen4_gvm_cdccomm
PRODUCT_DEVICE := gen4_gvm_cdccomm
PRODUCT_BRAND := qti
PRODUCT_MODEL := gen4_gvm_cdccomm for arm64

#CUSTOM_PATCHES_MODE := apply

# Change Kernel modules install path
KERNEL_MODULES_INSTALL := dlkm
KERNEL_MODULES_OUT := out/target/product/$(PRODUCT_DEVICE)/$(KERNEL_MODULES_INSTALL)/lib/modules

#Customization Variables
TARGET_ENABLE_AIS_CUST    := true
TARGET_ENABLE_AIS_CUST_RN := true
TARGET_ENABLE_C11_COMPATIBLE := true

PRODUCT_PACKAGES += FrameworksResAutoTarget_Vendor_cdc
PRODUCT_PACKAGES += CarServiceResAutoTarget_Vendor_cdc
DISABLE_MUMD := true
