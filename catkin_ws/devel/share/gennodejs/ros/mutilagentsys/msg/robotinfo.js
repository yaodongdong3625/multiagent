// Auto-generated. Do not edit!

// (in-package mutilagentsys.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robotinfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotid = null;
      this.robotstatus = null;
      this.taskid = null;
    }
    else {
      if (initObj.hasOwnProperty('robotid')) {
        this.robotid = initObj.robotid
      }
      else {
        this.robotid = 0;
      }
      if (initObj.hasOwnProperty('robotstatus')) {
        this.robotstatus = initObj.robotstatus
      }
      else {
        this.robotstatus = '';
      }
      if (initObj.hasOwnProperty('taskid')) {
        this.taskid = initObj.taskid
      }
      else {
        this.taskid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotinfo
    // Serialize message field [robotid]
    bufferOffset = _serializer.uint8(obj.robotid, buffer, bufferOffset);
    // Serialize message field [robotstatus]
    bufferOffset = _serializer.string(obj.robotstatus, buffer, bufferOffset);
    // Serialize message field [taskid]
    bufferOffset = _serializer.uint8(obj.taskid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotinfo
    let len;
    let data = new robotinfo(null);
    // Deserialize message field [robotid]
    data.robotid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robotstatus]
    data.robotstatus = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [taskid]
    data.taskid = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robotstatus.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mutilagentsys/robotinfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c27b94a1a25a30817bd534d87682aca0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 robotid
    string robotstatus
    uint8 taskid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotinfo(null);
    if (msg.robotid !== undefined) {
      resolved.robotid = msg.robotid;
    }
    else {
      resolved.robotid = 0
    }

    if (msg.robotstatus !== undefined) {
      resolved.robotstatus = msg.robotstatus;
    }
    else {
      resolved.robotstatus = ''
    }

    if (msg.taskid !== undefined) {
      resolved.taskid = msg.taskid;
    }
    else {
      resolved.taskid = 0
    }

    return resolved;
    }
};

module.exports = robotinfo;
