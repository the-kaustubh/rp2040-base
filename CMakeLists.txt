cmake_minimum_required(VERSION 3.13)

add_executable(main
    main.c
)

include($ENV{PICO_SDK_PATH}/pico_sdk_init.cmake)
# include(./pico_sdk_import.cmake)
project(sample_project)
pico_sdk_init()

# Add pico_stdlib library which aggregates commonly used features
target_link_libraries(main pico_stdlib)

# create map/bin/hex/uf2 file in addition to ELF.
pico_add_extra_outputs(main)
