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

class pixel_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array = null;
    }
    else {
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array
      }
      else {
        this.array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pixel_array
    // Serialize message field [array]
    // Serialize the length for message field [array]
    bufferOffset = _serializer.uint32(obj.array.length, buffer, bufferOffset);
    obj.array.forEach((val) => {
      bufferOffset = pixel_index.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pixel_array
    let len;
    let data = new pixel_array(null);
    // Deserialize message field [array]
    // Deserialize array length for message field [array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.array[i] = pixel_index.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'salience/pixel_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a196b44641744999a3c0db1593a834d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pixel_index[] array
    
    
    ================================================================================
    MSG: salience/pixel_index
    float64 x
    float64 y
    float64 depth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pixel_array(null);
    if (msg.array !== undefined) {
      resolved.array = new Array(msg.array.length);
      for (let i = 0; i < resolved.array.length; ++i) {
        resolved.array[i] = pixel_index.Resolve(msg.array[i]);
      }
    }
    else {
      resolved.array = []
    }

    return resolved;
    }
};

module.exports = pixel_array;
