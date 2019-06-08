// Auto-generated. Do not edit!

// (in-package salience.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let pixel_index = require('./pixel_index.js');

//-----------------------------------------------------------

class targets_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.targets = null;
    }
    else {
      if (initObj.hasOwnProperty('targets')) {
        this.targets = initObj.targets
      }
      else {
        this.targets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type targets_array
    // Serialize message field [targets]
    // Serialize the length for message field [targets]
    bufferOffset = _serializer.uint32(obj.targets.length, buffer, bufferOffset);
    obj.targets.forEach((val) => {
      bufferOffset = pixel_index.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type targets_array
    let len;
    let data = new targets_array(null);
    // Deserialize message field [targets]
    // Deserialize array length for message field [targets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.targets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.targets[i] = pixel_index.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.targets.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'salience/targets_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e96488ee6e62f38f6544a9a59d4b067';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pixel_index[] targets
    
    ================================================================================
    MSG: salience/pixel_index
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new targets_array(null);
    if (msg.targets !== undefined) {
      resolved.targets = new Array(msg.targets.length);
      for (let i = 0; i < resolved.targets.length; ++i) {
        resolved.targets[i] = pixel_index.Resolve(msg.targets[i]);
      }
    }
    else {
      resolved.targets = []
    }

    return resolved;
    }
};

module.exports = targets_array;
