vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO FlyAcc/bullet3
        REF 866669cf1b01eec844fd9c72b72329f0765039f4
        SHA512 979c2abdeb793041b825e1e21f7700c34266fc4ec42b23d410309d37de1f42585abcc40653cdd4bf04ad1463e0c520b9943e074ccc5ae124b1ce19904d175713
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
        INSTALL "${SOURCE_PATH}/LICENSE"
        DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
        RENAME copyright)