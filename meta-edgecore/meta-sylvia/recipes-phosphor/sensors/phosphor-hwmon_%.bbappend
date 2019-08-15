FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

NAMES = " \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@0/i2c-mux5@75/i2c@1/sensor1@lm75bd_5_main_48 \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@0/i2c-mux5@75/i2c@2/sensor2@lm75bd_6_main_4b \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@0/i2c-mux5@75/i2c@3/sensor3@lm75bd_7_main_4d \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@3/sensor4@lm75db_4b \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@5/sensor5@88470_thermal_4c \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@6/sensor6@lm75bd_1_4a \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@6/sensor7@lm75bd_2_49 \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@6/sensor8@lm75bd_3_4e \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@1/sensor9@fan_temp1_4d \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@1/sensor10@fan_temp2_4e \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@5/i2c-mux2@73/i2c@1/sensor13@fan_cpld_68 \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@6/i2c-mux3@74/i2c@0/sensor11@psu1_5b \
        bus@1e78a000/i2c-bus@140/i2c-mux1@71/i2c@6/i2c-mux3@74/i2c@1/sensor12@psu2_58 \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'NAMES')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE_${PN}_append_sylvia += "${@compose_list(d, 'ENVS', 'ITEMS')}"
