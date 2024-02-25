get_filename_component(_library_root "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_library_root "${_library_root}" PATH)
get_filename_component(_library_root "${_library_root}" PATH)

find_library(_library_path_release qscintilla2_qt6 ${_library_root}/lib)
find_library(_library_path_debug qscintilla2_qt6d ${_library_root}/debug/lib)

add_library(qscintilla::qscintilla STATIC IMPORTED)
set_target_properties(qscintilla::qscintilla PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES ${_library_root}/include/Qsci
    IMPORTED_LOCATION_RELEASE ${_library_path_release}
    IMPORTED_LOCATION_DEBUG ${_library_path_debug}
)
