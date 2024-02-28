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
}
