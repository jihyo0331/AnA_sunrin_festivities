# CMake 최소 버전 설정
cmake_minimum_required(VERSION 3.27)

# 프로젝트 이름 설정
project(AnA_sunrin_festivities C)

# C 표준 설정
set(CMAKE_C_STANDARD 99)


# Raylib 라이브러리 찾기
find_package(raylib REQUIRED)

# Raylib 라이브러리 링크
target_link_libraries(AnA_sunrin_festivities raylib)

# macOS의 경우 추가 프레임워크를 링크
if(APPLE)
    target_link_libraries(AnA_sunrin_festivities
            "-framework OpenGL"
            "-framework Cocoa"
            "-framework IOKit"
            "-framework CoreVideo"
    )
endif()

# 셰이더 및 리소스 파일 복사 (빌드 폴더에 복사)
add_custom_command(TARGET AnA_sunrin_festivities POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_directory
        ${CMAKE_SOURCE_DIR}/shaders $<TARGET_FILE_DIR:AnA_sunrin_festivities>/shaders)