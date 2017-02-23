file(GLOB SRC_FILES *.?pp)

add_executable(dz
    ${SRC_FILES}
    )
set_target_properties(dz PROPERTIES LINKER_LANGUAGE CXX)