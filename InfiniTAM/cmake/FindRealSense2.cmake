

SET(REALSENSE2_ROOT "/usr" CACHE FILEPATH "Root directory of librealsense")

FIND_PATH(RealSense2_INCLUDE_DIR librealsense2/rs.hpp HINTS "${REALSENSE2_ROOT}/include")
FIND_LIBRARY(RealSense2_LIBRARY librealsense2.so HINTS "${REALSENSE2_ROOT}/lib/x86_64-linux-gnu")

# handle the QUIETLY and REQUIRED arguments and set REALSENSE2_FOUND to TRUE if
# all listed variables are TRUE
#include(${CMAKE_CURRENT_LIST_DIR}/FindPackageHandleStandardArgs.cmake)
#include(${CMAKE_MODULE_PATH}/FindPackageHandleStandardArgs.cmake)
message(${RealSense2_LIBRARY})
message(${RealSense2_INCLUDE_DIR})
find_package_handle_standard_args(RealSense2 DEFAULT_MSG RealSense2_LIBRARY RealSense2_INCLUDE_DIR)

#if(OPENNI_FOUND)
#  set(OpenNI_LIBRARIES ${OpenNI_LIBRARY})
#endif()

MARK_AS_ADVANCED(RealSense2_LIBRARY RealSense2_INCLUDE_DIR)
