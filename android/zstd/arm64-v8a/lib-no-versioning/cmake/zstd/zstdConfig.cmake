# generated by ndk-pkg 0.1.35

get_filename_component(zstd_INSTALL_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

set(zstd_INCLUDE_DIR "${zstd_INSTALL_DIR}/include")
set(zstd_LIBRARY_DIR "${zstd_INSTALL_DIR}/lib-no-versioning")


if (NOT TARGET  zstd::libzstd.so)
    add_library(zstd::libzstd.so STATIC IMPORTED)
    set_target_properties(zstd::libzstd.so PROPERTIES
        IMPORTED_LOCATION             "${zstd_LIBRARY_DIR}/libzstd.so"
        INTERFACE_INCLUDE_DIRECTORIES "${zstd_INCLUDE_DIR}"
    )
endif()

if (NOT TARGET  zstd::libzstd.a)
    add_library(zstd::libzstd.a STATIC IMPORTED)
    set_target_properties(zstd::libzstd.a PROPERTIES
        IMPORTED_LOCATION             "${zstd_LIBRARY_DIR}/libzstd.a"
        INTERFACE_INCLUDE_DIRECTORIES "${zstd_INCLUDE_DIR}"
    )
endif()

set(zstd_IMPORTED_TARGETS "zstd::libzstd.so;zstd::libzstd.a")
