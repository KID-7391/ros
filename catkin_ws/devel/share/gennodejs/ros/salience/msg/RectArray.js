// Auto-generated. Do not edit!

// (in-package salience.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rect = require('./Rect.js');

//-----------------------------------------------------------

class RectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bboxes = null;
    }
    else {
      if (initObj.hasOwnProperty('bboxes')) {
        this.bboxes = initObj.bboxes
      }
      else {
        this.bboxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RectArray
    // Serialize message field [bboxes]
    // Serialize the length for message field [bboxes]
    bufferOffset = _serializer.uint32(obj.bboxes.length, buffer, bufferOffset);
    obj.bboxes.forEach((val) => {
      bufferOffset = Rect.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RectArray
    let len;
    let data = new RectArray(null);
    // Deserialize message field [bboxes]
    // Deserialize array length for message field [bboxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bboxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bboxes[i] = Rect.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 36 * object.bboxes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'salience/RectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a26a8cb81778da4e083813232578748';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rect[] bboxes
    
    ================================================================================
    MSG: salience/Rect
    # opencv Rect data type, x-y is center point
    float64 x0
    float64 y0
    float64 x1
    float64 y1
    int32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RectArray(null);
    if (msg.bboxes !== undefined) {
      resolved.bboxes = new Array(msg.bboxes.length);
      for (let i = 0; i < resolved.bboxes.length; ++i) {
        resolved.bboxes[i] = Rect.Resolve(msg.bboxes[i]);
      }
    }
    else {
      resolved.bboxes = []
    }

    return resolved;
    }
};

module.exports = RectArray;
