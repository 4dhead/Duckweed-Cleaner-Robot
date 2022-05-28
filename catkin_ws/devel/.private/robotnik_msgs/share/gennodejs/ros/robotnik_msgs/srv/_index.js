
"use strict";

let SetElevator = require('./SetElevator.js')
let GetPOI = require('./GetPOI.js')
let SetMotorPID = require('./SetMotorPID.js')
let set_digital_output = require('./set_digital_output.js')
let SetLaserMode = require('./SetLaserMode.js')
let get_alarms = require('./get_alarms.js')
let enable_disable = require('./enable_disable.js')
let get_mode = require('./get_mode.js')
let SetTransform = require('./SetTransform.js')
let SetCurrent = require('./SetCurrent.js')
let SetEncoderTurns = require('./SetEncoderTurns.js')
let set_height = require('./set_height.js')
let set_modbus_register = require('./set_modbus_register.js')
let set_mode = require('./set_mode.js')
let set_analog_output = require('./set_analog_output.js')
let ack_alarm = require('./ack_alarm.js')
let get_modbus_register = require('./get_modbus_register.js')
let GetPTZ = require('./GetPTZ.js')
let SetInt16 = require('./SetInt16.js')
let SetByte = require('./SetByte.js')
let SetMotorMode = require('./SetMotorMode.js')
let set_float_value = require('./set_float_value.js')
let SetString = require('./SetString.js')
let set_odometry = require('./set_odometry.js')
let ResetFromSubState = require('./ResetFromSubState.js')
let InsertTask = require('./InsertTask.js')
let home = require('./home.js')
let set_named_digital_output = require('./set_named_digital_output.js')
let SetMotorStatus = require('./SetMotorStatus.js')
let SetBuzzer = require('./SetBuzzer.js')
let set_ptz = require('./set_ptz.js')
let QueryAlarms = require('./QueryAlarms.js')
let GetMotorsHeadingOffset = require('./GetMotorsHeadingOffset.js')
let get_digital_input = require('./get_digital_input.js')
let GetBool = require('./GetBool.js')
let axis_record = require('./axis_record.js')
let SetNamedDigitalOutput = require('./SetNamedDigitalOutput.js')
let set_CartesianEuler_pose = require('./set_CartesianEuler_pose.js')

module.exports = {
  SetElevator: SetElevator,
  GetPOI: GetPOI,
  SetMotorPID: SetMotorPID,
  set_digital_output: set_digital_output,
  SetLaserMode: SetLaserMode,
  get_alarms: get_alarms,
  enable_disable: enable_disable,
  get_mode: get_mode,
  SetTransform: SetTransform,
  SetCurrent: SetCurrent,
  SetEncoderTurns: SetEncoderTurns,
  set_height: set_height,
  set_modbus_register: set_modbus_register,
  set_mode: set_mode,
  set_analog_output: set_analog_output,
  ack_alarm: ack_alarm,
  get_modbus_register: get_modbus_register,
  GetPTZ: GetPTZ,
  SetInt16: SetInt16,
  SetByte: SetByte,
  SetMotorMode: SetMotorMode,
  set_float_value: set_float_value,
  SetString: SetString,
  set_odometry: set_odometry,
  ResetFromSubState: ResetFromSubState,
  InsertTask: InsertTask,
  home: home,
  set_named_digital_output: set_named_digital_output,
  SetMotorStatus: SetMotorStatus,
  SetBuzzer: SetBuzzer,
  set_ptz: set_ptz,
  QueryAlarms: QueryAlarms,
  GetMotorsHeadingOffset: GetMotorsHeadingOffset,
  get_digital_input: get_digital_input,
  GetBool: GetBool,
  axis_record: axis_record,
  SetNamedDigitalOutput: SetNamedDigitalOutput,
  set_CartesianEuler_pose: set_CartesianEuler_pose,
};
