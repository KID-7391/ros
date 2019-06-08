// Auto-generated. Do not edit!

// (in-package kamerider_image_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GenderDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.male_num = null;
      this.female_num = null;
      this.sit_num = null;
      this.stand_num = null;
    }
    else {
      if (initObj.hasOwnProperty('male_num')) {
        this.male_num = initObj.male_num
      }
      else {
        this.male_num = 0;
      }
      if (initObj.hasOwnProperty('female_num')) {
        this.female_num = initObj.female_num
      }
      else {
        this.female_num = 0;
      }
      if (initObj.hasOwnProperty('sit_num')) {
        this.sit_num = initObj.sit_num
      }
      else {
        this.sit_num = 0;
      }
      if (initObj.hasOwnProperty('stand_num')) {
        this.stand_num = initObj.stand_num
      }
      else {
        this.stand_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenderDetection
    // Serialize message field [male_num]
    bufferOffset = _serializer.int8(obj.male_num, buffer, bufferOffset);
    // Serialize message field [female_num]
    bufferOffset = _serializer.int8(obj.female_num, buffer, bufferOffset);
    // Serialize message field [sit_num]
    bufferOffset = _serializer.int8(obj.sit_num, buffer, bufferOffset);
    // Serialize message field [stand_num]
    bufferOffset = _serializer.int8(obj.stand_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenderDetection
    let len;
    let data = new GenderDetection(null);
    // Deserialize message field [male_num]
    data.male_num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [female_num]
    data.female_num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sit_num]
    data.sit_num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stand_num]
    data.stand_num = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kamerider_image_msgs/GenderDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '105a02752dd5a1e4af0ec4122f3b9eba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 male_num
    int8 female_num
    int8 sit_num
    int8 stand_num
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenderDetection(null);
    if (msg.male_num !== undefined) {
      resolved.male_num = msg.male_num;
    }
    else {
      resolved.male_num = 0
    }

    if (msg.female_num !== undefined) {
      resolved.female_num = msg.female_num;
    }
    else {
      resolved.female_num = 0
    }

    if (msg.sit_num !== undefined) {
      resolved.sit_num = msg.sit_num;
    }
    else {
      resolved.sit_num = 0
    }

    if (msg.stand_num !== undefined) {
      resolved.stand_num = msg.stand_num;
    }
    else {
      resolved.stand_num = 0
    }

    return resolved;
    }
};

module.exports = GenderDetection;
