# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mutilagentsys: 1 messages, 1 services")

set(MSG_I_FLAGS "-Imutilagentsys:/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mutilagentsys_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_custom_target(_mutilagentsys_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mutilagentsys" "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" ""
)

get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_custom_target(_mutilagentsys_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mutilagentsys" "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mutilagentsys
)

### Generating Services
_generate_srv_cpp(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mutilagentsys
)

### Generating Module File
_generate_module_cpp(mutilagentsys
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mutilagentsys
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mutilagentsys_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mutilagentsys_generate_messages mutilagentsys_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_cpp _mutilagentsys_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_cpp _mutilagentsys_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mutilagentsys_gencpp)
add_dependencies(mutilagentsys_gencpp mutilagentsys_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mutilagentsys_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mutilagentsys
)

### Generating Services
_generate_srv_eus(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mutilagentsys
)

### Generating Module File
_generate_module_eus(mutilagentsys
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mutilagentsys
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mutilagentsys_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mutilagentsys_generate_messages mutilagentsys_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_eus _mutilagentsys_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_eus _mutilagentsys_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mutilagentsys_geneus)
add_dependencies(mutilagentsys_geneus mutilagentsys_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mutilagentsys_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mutilagentsys
)

### Generating Services
_generate_srv_lisp(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mutilagentsys
)

### Generating Module File
_generate_module_lisp(mutilagentsys
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mutilagentsys
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mutilagentsys_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mutilagentsys_generate_messages mutilagentsys_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_lisp _mutilagentsys_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_lisp _mutilagentsys_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mutilagentsys_genlisp)
add_dependencies(mutilagentsys_genlisp mutilagentsys_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mutilagentsys_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mutilagentsys
)

### Generating Services
_generate_srv_nodejs(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mutilagentsys
)

### Generating Module File
_generate_module_nodejs(mutilagentsys
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mutilagentsys
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mutilagentsys_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mutilagentsys_generate_messages mutilagentsys_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_nodejs _mutilagentsys_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_nodejs _mutilagentsys_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mutilagentsys_gennodejs)
add_dependencies(mutilagentsys_gennodejs mutilagentsys_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mutilagentsys_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys
)

### Generating Services
_generate_srv_py(mutilagentsys
  "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys
)

### Generating Module File
_generate_module_py(mutilagentsys
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mutilagentsys_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mutilagentsys_generate_messages mutilagentsys_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/msg/robotinfo.msg" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_py _mutilagentsys_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ydd/multiagent/catkin_ws/src/mutilagentsys/srv/robotfeedback.srv" NAME_WE)
add_dependencies(mutilagentsys_generate_messages_py _mutilagentsys_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mutilagentsys_genpy)
add_dependencies(mutilagentsys_genpy mutilagentsys_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mutilagentsys_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mutilagentsys)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mutilagentsys
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mutilagentsys_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mutilagentsys)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mutilagentsys
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mutilagentsys_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mutilagentsys)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mutilagentsys
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mutilagentsys_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mutilagentsys)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mutilagentsys
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mutilagentsys_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mutilagentsys
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mutilagentsys_generate_messages_py std_msgs_generate_messages_py)
endif()
