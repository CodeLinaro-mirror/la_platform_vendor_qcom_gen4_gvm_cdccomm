# Include the BoardConfig.mk of base product
include device/qcom/gen4_gvm/BoardConfig.mk

#TARGET_ARCH := arm64
#TARGET_2ND_ARCH := arm

#Overwrite required variables below this
# Base product BoardConfigVendor.mk will already be included. So, use below to set new variables or to override old ones
-include $(QCPATH)/common/gen4_gvm_cdccomm/BoardConfigVendor.mk
