# The following variables contains the files used by the different stages of the build process.
set(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)
set(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)
set(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_compile "${CMAKE_CURRENT_SOURCE_DIR}/../../../main.c")
set_source_files_properties(${Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(Timer_Based_Digital_Stopwatch_default_default_XC8_FILE_TYPE_link)

# The (internal) path to the resulting build image.
set(Timer_Based_Digital_Stopwatch_default_internal_image_name "${CMAKE_CURRENT_SOURCE_DIR}/../../../_build/Timer Based Digital Stopwatch/default/default.hex")

# The name of the resulting image, including namespace for configuration.
set(Timer_Based_Digital_Stopwatch_default_image_name "Timer_Based_Digital_Stopwatch_default_default.hex")

# The name of the image, excluding the namespace for configuration.
set(Timer_Based_Digital_Stopwatch_default_original_image_name "default.hex")

# The output directory of the final image.
set(Timer_Based_Digital_Stopwatch_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/Timer Based Digital Stopwatch")
