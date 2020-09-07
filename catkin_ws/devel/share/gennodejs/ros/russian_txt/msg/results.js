// Auto-generated. Do not edit!

// (in-package russian_txt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class results {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.cx = null;
      this.cy = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = 0;
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type results
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [cx]
    bufferOffset = _serializer.uint8(obj.cx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = _serializer.uint8(obj.cy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type results
    let len;
    let data = new results(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cx]
    data.cx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'russian_txt/results';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83316a74c480fb416a8b072597d2f808';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text
    uint8 cx
    uint8 cy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new results(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = 0
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = 0
    }

    return resolved;
    }
};

module.exports = results;
