include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(Timer_Based_Digital_Stopwatch_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemble)
add_library(Timer_Based_Digital_Stopwatch_default_default_XC8_assemble OBJECT ${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemble})
    Timer_Based_Digital_Stopwatch_default_default_XC8_assemble_rule(Timer_Based_Digital_Stopwatch_default_default_XC8_assemble)
    list(APPEND Timer_Based_Digital_Stopwatch_default_library_list "$<TARGET_OBJECTS:Timer_Based_Digital_Stopwatch_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(Timer_Based_Digital_Stopwatch_default_default_XC8_assemblePreprocess OBJECT ${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemblePreprocess})
    Timer_Based_Digital_Stopwatch_default_default_XC8_assemblePreprocess_rule(Timer_Based_Digital_Stopwatch_default_default_XC8_assemblePreprocess)
    list(APPEND Timer_Based_Digital_Stopwatch_default_library_list "$<TARGET_OBJECTS:Timer_Based_Digital_Stopwatch_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_compile)
add_library(Timer_Based_Digital_Stopwatch_default_default_XC8_compile OBJECT ${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_compile})
    Timer_Based_Digital_Stopwatch_default_default_XC8_compile_rule(Timer_Based_Digital_Stopwatch_default_default_XC8_compile)
    list(APPEND Timer_Based_Digital_Stopwatch_default_library_list "$<TARGET_OBJECTS:Timer_Based_Digital_Stopwatch_default_default_XC8_compile>")
endif()

add_executable(${Timer_Based_Digital_Stopwatch_default_image_name} ${Timer_Based_Digital_Stopwatch_default_library_list})

target_link_libraries(${Timer_Based_Digital_Stopwatch_default_image_name} PRIVATE ${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
Timer_Based_Digital_Stopwatch_default_link_rule(${Timer_Based_Digital_Stopwatch_default_image_name})


# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${Timer_Based_Digital_Stopwatch_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${Timer_Based_Digital_Stopwatch_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${Timer_Based_Digital_Stopwatch_default_image_name} ${Timer_Based_Digital_Stopwatch_default_output_dir}/${Timer_Based_Digital_Stopwatch_default_original_image_name}
                    BYPRODUCTS ${Timer_Based_Digital_Stopwatch_default_output_dir}/${Timer_Based_Digital_Stopwatch_default_original_image_name})
