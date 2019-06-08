
"use strict";

let targets_array = require('./targets_array.js');
let GenderDetection = require('./GenderDetection.js');
let FaceDetection = require('./FaceDetection.js');
let BoundingBox = require('./BoundingBox.js');
let pixel_index = require('./pixel_index.js');
let ObjectPosition = require('./ObjectPosition.js');
let mission = require('./mission.js');

module.exports = {
  targets_array: targets_array,
  GenderDetection: GenderDetection,
  FaceDetection: FaceDetection,
  BoundingBox: BoundingBox,
  pixel_index: pixel_index,
  ObjectPosition: ObjectPosition,
  mission: mission,
};
