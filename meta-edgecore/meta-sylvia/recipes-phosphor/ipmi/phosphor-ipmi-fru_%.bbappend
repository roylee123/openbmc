DEPENDS_append_sylvia = " sylvia-yaml-config"

EXTRA_OECONF_sylvia = " \
    YAML_GEN=${STAGING_DIR_HOST}${datadir}/sylvia-yaml-config/ipmi-fru-read.yaml \
    PROP_YAML=${STAGING_DIR_HOST}${datadir}/sylvia-yaml-config/ipmi-extra-properties.yaml \
    "
