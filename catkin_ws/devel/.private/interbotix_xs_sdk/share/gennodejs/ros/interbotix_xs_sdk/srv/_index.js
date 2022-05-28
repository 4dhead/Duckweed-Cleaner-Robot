
"use strict";

let TorqueEnable = require('./TorqueEnable.js')
let OperatingModes = require('./OperatingModes.js')
let RegisterValues = require('./RegisterValues.js')
let MotorGains = require('./MotorGains.js')
let RobotInfo = require('./RobotInfo.js')
let Reboot = require('./Reboot.js')

module.exports = {
  TorqueEnable: TorqueEnable,
  OperatingModes: OperatingModes,
  RegisterValues: RegisterValues,
  MotorGains: MotorGains,
  RobotInfo: RobotInfo,
  Reboot: Reboot,
};
