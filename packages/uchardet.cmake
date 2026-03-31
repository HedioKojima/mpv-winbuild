ExternalProject_Add(uchardet
    GIT_REPOSITORY https://gitlab.freedesktop.org/uchardet/uchardet.git
    SOURCE_DIR ${SOURCE_LOCATION}
    GIT_CLONE_FLAGS "--filter=tree:0"
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ${EXEC} CONF=1 cmake -B <BINARY_DIR> -S <SOURCE_DIR>
        -G Ninja
        -DCMAKE_BUILD_TYPE=Release
        -DCMAKE_TOOLCHAIN_FILE=${TOOLCHAIN_FILE}
        -DCMAKE_INSTALL_PREFIX=${MINGW_INSTALL_PREFIX}
        -DBUILD_SHARED_LIBS=OFF
        -DBUILD_STATIC=ON
        -DBUILD_BINARY=OFF
        -DTARGET_ARCHITECTURE=${TARGET_CPU_FAMILY}
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    BUILD_COMMAND ${EXEC} ninja
    INSTALL_COMMAND ${EXEC} ninja install
            COMMAND ${EXEC} sed -i 's/stdc++/c++/g' ${MINGW_INSTALL_PREFIX}/lib/pkgconfig/uchardet.pc
    LOG_DOWNLOAD 1 LOG_UPDATE 1 LOG_CONFIGURE 1 LOG_BUILD 1 LOG_INSTALL 1
)

force_rebuild_git(uchardet)
cleanup(uchardet install)
