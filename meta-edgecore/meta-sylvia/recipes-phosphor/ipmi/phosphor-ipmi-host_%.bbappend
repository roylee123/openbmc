DEPENDS_append_sylvia = " sylvia-yaml-config"

EXTRA_OECONF_sylvia = " \
    SENSOR_YAML_GEN=${STAGING_DIR_HOST}${datadir}/sylvia-yaml-config/ipmi-sensors.yaml \
    FRU_YAML_GEN=${STAGING_DIR_HOST}${datadir}/sylvia-yaml-config/ipmi-fru-read.yaml \
    "
