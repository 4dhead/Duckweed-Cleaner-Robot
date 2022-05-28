# Install script for directory: /home/benjamin/catkin_ws/src/robotnik_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/benjamin/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE PROGRAM FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE PROGRAM FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/setup.bash;/home/benjamin/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE FILE FILES
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/setup.bash"
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/setup.sh;/home/benjamin/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE FILE FILES
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/setup.sh"
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/setup.zsh;/home/benjamin/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE FILE FILES
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/setup.zsh"
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/benjamin/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/benjamin/catkin_ws/install" TYPE FILE FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/msg" TYPE FILE FILES
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/encoders.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/inputs_outputs.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/ptz.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Data.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Interfaces.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Axis.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/AlarmSensor.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Alarms.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorsStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/State.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/ArmStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/BatteryStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/BatteryStatusStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/OdomCalibrationStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/OdomCalibrationStatusStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/OdomManualCalibrationStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/OdomManualCalibrationStatusStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorHeadingOffset.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorsStatusDifferential.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/InverterStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/RobotnikMotorsStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/ElevatorAction.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/ElevatorStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/PantiltStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/PantiltStatusStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Cartesian_Euler_pose.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/alarmmonitor.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/alarmsmonitor.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/named_inputs_outputs.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/named_input_output.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Register.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Registers.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/StringArray.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/LaserMode.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/LaserStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/SafetyModuleStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/StringStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/SubState.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/QueryAlarm.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/BatteryDockingStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/BatteryDockingStatusStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/BoolArray.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorPID.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorCurrent.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Pose2DArray.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/Pose2DStamped.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/ReturnMessage.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/PresenceSensor.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/PresenceSensorArray.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/WatchdogStatus.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/WatchdogStatusArray.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorReferenceValue.msg"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/msg/MotorReferenceValueArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/srv" TYPE FILE FILES
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/get_digital_input.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_analog_output.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_mode.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_ptz.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/get_mode.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_digital_output.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_odometry.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_height.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/enable_disable.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/home.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/axis_record.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_float_value.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetMotorStatus.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetElevator.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/get_alarms.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/ack_alarm.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_modbus_register.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/get_modbus_register.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/GetBool.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_CartesianEuler_pose.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/set_named_digital_output.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetLaserMode.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/ResetFromSubState.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/QueryAlarms.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetNamedDigitalOutput.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/InsertTask.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetMotorPID.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetMotorMode.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetBuzzer.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetEncoderTurns.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/GetMotorsHeadingOffset.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/GetPOI.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetString.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetInt16.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/GetPTZ.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetByte.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetCurrent.srv"
    "/home/benjamin/catkin_ws/src/robotnik_msgs/srv/SetTransform.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/action" TYPE FILE FILES "/home/benjamin/catkin_ws/src/robotnik_msgs/action/SetElevator.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/msg" TYPE FILE FILES
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorAction.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionGoal.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionResult.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorActionFeedback.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorGoal.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorResult.msg"
    "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/robotnik_msgs/msg/SetElevatorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/include/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/roseus/ros/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/common-lisp/ros/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/share/gennodejs/ros/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/lib/python2.7/dist-packages/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/benjamin/catkin_ws/devel/.private/robotnik_msgs/lib/python2.7/dist-packages/robotnik_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs/cmake" TYPE FILE FILES
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgsConfig.cmake"
    "/home/benjamin/catkin_ws/build/robotnik_msgs/catkin_generated/installspace/robotnik_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_msgs" TYPE FILE FILES "/home/benjamin/catkin_ws/src/robotnik_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/benjamin/catkin_ws/build/robotnik_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/benjamin/catkin_ws/build/robotnik_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
