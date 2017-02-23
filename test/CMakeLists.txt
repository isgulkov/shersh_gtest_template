enable_testing()
set(PROJECT_TEST_NAME dz_test)

include_directories(${GTEST_INCLUDE_DIRS} ${PROJECT_SOURCE_DIR}/src)

file(GLOB TEST_SRC_FILES *.cpp)
file(GLOB PROJ_SRC_CPPS ${PROJECT_SOURCE_DIR}/src/*.?pp)
file(GLOB PROJ_SRC_HEADERS ${PROJECT_SOURCE_DIR}/src/*.h)
add_executable(${PROJECT_TEST_NAME} ${TEST_SRC_FILES}
        ${PROJ_SRC_CPPS}
        ${PROJ_SRC_HEADERS})
add_dependencies(${PROJECT_TEST_NAME} googletest)

target_link_libraries(${PROJECT_TEST_NAME}
        ${GTEST_LIBS_DIR}/libgtest.a
        ${GTEST_LIBS_DIR}/libgtest_main.a
        )

target_link_libraries(${PROJECT_TEST_NAME} ${CMAKE_THREAD_LIBS_INIT})

add_test(test1 ${PROJECT_TEST_NAME})
