# Include the BoardConfig.mk of base product
include device/qcom/gen4_gvm_sdvivi/BoardConfig.mk

#TARGET_ARCH := arm64
#TARGET_2ND_ARCH := arm

BOARD_SUPER_PARTITION_SIZE := 17179869184 #16GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 34359738368 #32GB


BOARD_BOOTCONFIG := androidboot.hardware=qcom androidboot.selinux=enforcing androidboot.memcg=1 androidboot.recover_usb=1 androidboot.load_modules_parallel=true androidboot.console=ttyAMA0

BOARD_BOOTCONFIG += androidboot.sdv.rpc.interface=eth0 androidboot.sdv.instance_name=instance2 androidboot.sdv.ignore_avb_state=true androidboot.sdv.keymint.rpc.hbk=799da7577efd41d5b27810c5952fcec0291cbcfd687e77ac9a6cec8370651b1d androidboot.sdv.init_open_dice.sample_file=dice_handover_instance2

#Overwrite required variables below this
# Base product BoardConfigVendor.mk will already be included. So, use below to set new variables or to override old ones
-include $(QCPATH)/common/gen4_gvm_cdccomm/BoardConfigVendor.mk
