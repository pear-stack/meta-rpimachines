do_deploy:append() {
    # Enable rotary encoder 
    if [ "${ENABLE_ROTARY_ENCODER}" = "1" ]; then
        echo "# Enable rotary encoder" >> $CONFIG
        echo "dtoverlay=rotary-encoder,pin_a=17,pin_b=27,relative_axis=1,steps-per-period=2" >> $CONFIG
    fi

    # Enable system leds
    if [ "${ENABLE_SYSTEM_LEDS}" = "1" ]; then
        echo "# Enable system leds" >> $CONFIG
        echo "dtoverlay=system-leds" >> $CONFIG
    fi

    # Enable system keypad
    if [ "${ENABLE_SYSTEM_KEYPAD}" = "1" ]; then
        echo "# Enable system keypad" >> $CONFIG
        echo "dtoverlay=system-keypad" >> $CONFIG
    fi

    # Enable system beeper
    if [ "${ENABLE_SYSTEM_BEEPER}" = "1" ]; then
        echo "# Enable system beeper" >> $CONFIG
        echo "dtoverlay=system-beeper" >> $CONFIG
    fi

    # Enable BME280
    if [ "${ENABLE_BME280}" = "1" ]; then
        echo "# Enable BME280" >> $CONFIG
        echo "dtoverlay=i2c-sensor,bme280,addr=0x76" >> $CONFIG
    fi

    # Enable ADXL345
    if [ "${ENABLE_ADXL345}" = "1" ]; then
        echo "# Enable ADXL345" >> $CONFIG
        echo "dtoverlay=adxl345-i2c" >> $CONFIG
    fi
}
