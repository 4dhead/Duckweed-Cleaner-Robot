
"use strict";

let MotorsStatusDifferential = require('./MotorsStatusDifferential.js');
let MotorStatus = require('./MotorStatus.js');
let MotorsStatus = require('./MotorsStatus.js');
let Register = require('./Register.js');
let MotorHeadingOffset = require('./MotorHeadingOffset.js');
let WatchdogStatusArray = require('./WatchdogStatusArray.js');
let WatchdogStatus = require('./WatchdogStatus.js');
let MotorCurrent = require('./MotorCurrent.js');
let PresenceSensorArray = require('./PresenceSensorArray.js');
let OdomManualCalibrationStatus = require('./OdomManualCalibrationStatus.js');
let ArmStatus = require('./ArmStatus.js');
let ReturnMessage = require('./ReturnMessage.js');
let named_inputs_outputs = require('./named_inputs_outputs.js');
let MotorPID = require('./MotorPID.js');
let Alarms = require('./Alarms.js');
let inputs_outputs = require('./inputs_outputs.js');
let BatteryStatus = require('./BatteryStatus.js');
let ptz = require('./ptz.js');
let OdomCalibrationStatusStamped = require('./OdomCalibrationStatusStamped.js');
let Cartesian_Euler_pose = require('./Cartesian_Euler_pose.js');
let named_input_output = require('./named_input_output.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let State = require('./State.js');
let BatteryDockingStatus = require('./BatteryDockingStatus.js');
let PantiltStatusStamped = require('./PantiltStatusStamped.js');
let Pose2DArray = require('./Pose2DArray.js');
let QueryAlarm = require('./QueryAlarm.js');
let SafetyModuleStatus = require('./SafetyModuleStatus.js');
let BatteryStatusStamped = require('./BatteryStatusStamped.js');
let RobotnikMotorsStatus = require('./RobotnikMotorsStatus.js');
let MotorReferenceValueArray = require('./MotorReferenceValueArray.js');
let LaserMode = require('./LaserMode.js');
let Registers = require('./Registers.js');
let PantiltStatus = require('./PantiltStatus.js');
let OdomManualCalibrationStatusStamped = require('./OdomManualCalibrationStatusStamped.js');
let PresenceSensor = require('./PresenceSensor.js');
let alarmsmonitor = require('./alarmsmonitor.js');
let Axis = require('./Axis.js');
let LaserStatus = require('./LaserStatus.js');
let encoders = require('./encoders.js');
let ElevatorStatus = require('./ElevatorStatus.js');
let Interfaces = require('./Interfaces.js');
let AlarmSensor = require('./AlarmSensor.js');
let BatteryDockingStatusStamped = require('./BatteryDockingStatusStamped.js');
let alarmmonitor = require('./alarmmonitor.js');
let OdomCalibrationStatus = require('./OdomCalibrationStatus.js');
let StringStamped = require('./StringStamped.js');
let StringArray = require('./StringArray.js');
let ElevatorAction = require('./ElevatorAction.js');
let Data = require('./Data.js');
let SubState = require('./SubState.js');
let MotorReferenceValue = require('./MotorReferenceValue.js');
let BoolArray = require('./BoolArray.js');
let InverterStatus = require('./InverterStatus.js');
let SetElevatorAction = require('./SetElevatorAction.js');
let SetElevatorFeedback = require('./SetElevatorFeedback.js');
let SetElevatorActionResult = require('./SetElevatorActionResult.js');
let SetElevatorResult = require('./SetElevatorResult.js');
let SetElevatorActionFeedback = require('./SetElevatorActionFeedback.js');
let SetElevatorGoal = require('./SetElevatorGoal.js');
let SetElevatorActionGoal = require('./SetElevatorActionGoal.js');

module.exports = {
  MotorsStatusDifferential: MotorsStatusDifferential,
  MotorStatus: MotorStatus,
  MotorsStatus: MotorsStatus,
  Register: Register,
  MotorHeadingOffset: MotorHeadingOffset,
  WatchdogStatusArray: WatchdogStatusArray,
  WatchdogStatus: WatchdogStatus,
  MotorCurrent: MotorCurrent,
  PresenceSensorArray: PresenceSensorArray,
  OdomManualCalibrationStatus: OdomManualCalibrationStatus,
  ArmStatus: ArmStatus,
  ReturnMessage: ReturnMessage,
  named_inputs_outputs: named_inputs_outputs,
  MotorPID: MotorPID,
  Alarms: Alarms,
  inputs_outputs: inputs_outputs,
  BatteryStatus: BatteryStatus,
  ptz: ptz,
  OdomCalibrationStatusStamped: OdomCalibrationStatusStamped,
  Cartesian_Euler_pose: Cartesian_Euler_pose,
  named_input_output: named_input_output,
  Pose2DStamped: Pose2DStamped,
  State: State,
  BatteryDockingStatus: BatteryDockingStatus,
  PantiltStatusStamped: PantiltStatusStamped,
  Pose2DArray: Pose2DArray,
  QueryAlarm: QueryAlarm,
  SafetyModuleStatus: SafetyModuleStatus,
  BatteryStatusStamped: BatteryStatusStamped,
  RobotnikMotorsStatus: RobotnikMotorsStatus,
  MotorReferenceValueArray: MotorReferenceValueArray,
  LaserMode: LaserMode,
  Registers: Registers,
  PantiltStatus: PantiltStatus,
  OdomManualCalibrationStatusStamped: OdomManualCalibrationStatusStamped,
  PresenceSensor: PresenceSensor,
  alarmsmonitor: alarmsmonitor,
  Axis: Axis,
  LaserStatus: LaserStatus,
  encoders: encoders,
  ElevatorStatus: ElevatorStatus,
  Interfaces: Interfaces,
  AlarmSensor: AlarmSensor,
  BatteryDockingStatusStamped: BatteryDockingStatusStamped,
  alarmmonitor: alarmmonitor,
  OdomCalibrationStatus: OdomCalibrationStatus,
  StringStamped: StringStamped,
  StringArray: StringArray,
  ElevatorAction: ElevatorAction,
  Data: Data,
  SubState: SubState,
  MotorReferenceValue: MotorReferenceValue,
  BoolArray: BoolArray,
  InverterStatus: InverterStatus,
  SetElevatorAction: SetElevatorAction,
  SetElevatorFeedback: SetElevatorFeedback,
  SetElevatorActionResult: SetElevatorActionResult,
  SetElevatorResult: SetElevatorResult,
  SetElevatorActionFeedback: SetElevatorActionFeedback,
  SetElevatorGoal: SetElevatorGoal,
  SetElevatorActionGoal: SetElevatorActionGoal,
};
