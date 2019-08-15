FILESEXTRAPATHS_prepend_sylvia := "${THISDIR}/${PN}:"
SRC_URI += "file://sylvia.cfg \
            file://0001-ncsi_ignore_warn_msg.patch \
            file://0002-ipmi_add_kcs.patch \
            file://0004-add_dev_tree_sylvia.patch \
            file://0005-add_ir3570_driver.patch \
            file://0006-add_ec_fan_cpld_driver.patch \
           "
