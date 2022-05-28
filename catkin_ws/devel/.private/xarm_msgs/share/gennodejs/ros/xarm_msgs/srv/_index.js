
"use strict";

let GetDigitalIO = require('./GetDigitalIO.js')
let SetAxis = require('./SetAxis.js')
let GetAnalogIO = require('./GetAnalogIO.js')
let GripperState = require('./GripperState.js')
let TCPOffset = require('./TCPOffset.js')
let Move = require('./Move.js')
let GripperConfig = require('./GripperConfig.js')
let SetToolModbus = require('./SetToolModbus.js')
let SetInt16 = require('./SetInt16.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let ConfigToolModbus = require('./ConfigToolModbus.js')
let GetControllerDigitalIO = require('./GetControllerDigitalIO.js')
let SetLoad = require('./SetLoad.js')
let GetErr = require('./GetErr.js')
let ClearErr = require('./ClearErr.js')
let GripperMove = require('./GripperMove.js')

module.exports = {
  GetDigitalIO: GetDigitalIO,
  SetAxis: SetAxis,
  GetAnalogIO: GetAnalogIO,
  GripperState: GripperState,
  TCPOffset: TCPOffset,
  Move: Move,
  GripperConfig: GripperConfig,
  SetToolModbus: SetToolModbus,
  SetInt16: SetInt16,
  SetDigitalIO: SetDigitalIO,
  ConfigToolModbus: ConfigToolModbus,
  GetControllerDigitalIO: GetControllerDigitalIO,
  SetLoad: SetLoad,
  GetErr: GetErr,
  ClearErr: ClearErr,
  GripperMove: GripperMove,
};
