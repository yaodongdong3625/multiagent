// Auto-generated. Do not edit!

// (in-package mutilagentsys.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class robotfeedbackRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskid = null;
    }
    else {
      if (initObj.hasOwnProperty('taskid')) {
        this.taskid = initObj.taskid
      }
      else {
        this.taskid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotfeedbackRequest
    // Serialize message field [taskid]
    bufferOffset = _serializer.int64(obj.taskid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotfeedbackRequest
    let len;
    let data = new robotfeedbackRequest(null);
    // Deserialize message field [taskid]
    data.taskid = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mutilagentsys/robotfeedbackRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a394ac3cfcfa8145ba953019a6f01f2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 taskid
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotfeedbackRequest(null);
    if (msg.taskid !== undefined) {
      resolved.taskid = msg.taskid;
    }
    else {
      resolved.taskid = 0
    }

    return resolved;
    }
};

class robotfeedbackResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.taskstatus = null;
    }
    else {
      if (initObj.hasOwnProperty('taskstatus')) {
        this.taskstatus = initObj.taskstatus
      }
      else {
        this.taskstatus = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotfeedbackResponse
    // Serialize message field [taskstatus]
    bufferOffset = _serializer.string(obj.taskstatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotfeedbackResponse
    let len;
    let data = new robotfeedbackResponse(null);
    // Deserialize message field [taskstatus]
    data.taskstatus = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.taskstatus.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mutilagentsys/robotfeedbackResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2d4e2651840b06a30204660efd416f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string taskstatus
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotfeedbackResponse(null);
    if (msg.taskstatus !== undefined) {
      resolved.taskstatus = msg.taskstatus;
    }
    else {
      resolved.taskstatus = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: robotfeedbackRequest,
  Response: robotfeedbackResponse,
  md5sum() { return '7776dd36f3d35e00906447aeb823d4a1'; },
  datatype() { return 'mutilagentsys/robotfeedback'; }
};
