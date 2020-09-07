# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "russian_txt: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irussian_txt:/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(russian_txt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_custom_target(_russian_txt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "russian_txt" "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(russian_txt
  "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/russian_txt
)

### Generating Services

### Generating Module File
_generate_module_cpp(russian_txt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/russian_txt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(russian_txt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(russian_txt_generate_messages russian_txt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_dependencies(russian_txt_generate_messages_cpp _russian_txt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(russian_txt_gencpp)
add_dependencies(russian_txt_gencpp russian_txt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS russian_txt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(russian_txt
  "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/russian_txt
)

### Generating Services

### Generating Module File
_generate_module_eus(russian_txt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/russian_txt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(russian_txt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(russian_txt_generate_messages russian_txt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_dependencies(russian_txt_generate_messages_eus _russian_txt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(russian_txt_geneus)
add_dependencies(russian_txt_geneus russian_txt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS russian_txt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(russian_txt
  "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/russian_txt
)

### Generating Services

### Generating Module File
_generate_module_lisp(russian_txt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/russian_txt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(russian_txt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(russian_txt_generate_messages russian_txt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_dependencies(russian_txt_generate_messages_lisp _russian_txt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(russian_txt_genlisp)
add_dependencies(russian_txt_genlisp russian_txt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS russian_txt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(russian_txt
  "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/russian_txt
)

### Generating Services

### Generating Module File
_generate_module_nodejs(russian_txt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/russian_txt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(russian_txt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(russian_txt_generate_messages russian_txt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_dependencies(russian_txt_generate_messages_nodejs _russian_txt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(russian_txt_gennodejs)
add_dependencies(russian_txt_gennodejs russian_txt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS russian_txt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(russian_txt
  "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/russian_txt
)

### Generating Services

### Generating Module File
_generate_module_py(russian_txt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/russian_txt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(russian_txt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(russian_txt_generate_messages russian_txt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/r0hit/ARK/ARK-russiantxt/catkin_ws/src/russian_txt/msg/results.msg" NAME_WE)
add_dependencies(russian_txt_generate_messages_py _russian_txt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(russian_txt_genpy)
add_dependencies(russian_txt_genpy russian_txt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS russian_txt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/russian_txt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/russian_txt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(russian_txt_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(russian_txt_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/russian_txt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/russian_txt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(russian_txt_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(russian_txt_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/russian_txt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/russian_txt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(russian_txt_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(russian_txt_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/russian_txt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/russian_txt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(russian_txt_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(russian_txt_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/russian_txt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/russian_txt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/russian_txt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(russian_txt_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(russian_txt_generate_messages_py sensor_msgs_generate_messages_py)
endif()
