; Auto-generated. Do not edit!


(cl:in-package mutilagentsys-msg)


;//! \htmlinclude robotinfo.msg.html

(cl:defclass <robotinfo> (roslisp-msg-protocol:ros-message)
  ((robotid
    :reader robotid
    :initarg :robotid
    :type cl:fixnum
    :initform 0)
   (robotstatus
    :reader robotstatus
    :initarg :robotstatus
    :type cl:string
    :initform "")
   (taskid
    :reader taskid
    :initarg :taskid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robotinfo (<robotinfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotinfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotinfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mutilagentsys-msg:<robotinfo> is deprecated: use mutilagentsys-msg:robotinfo instead.")))

(cl:ensure-generic-function 'robotid-val :lambda-list '(m))
(cl:defmethod robotid-val ((m <robotinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mutilagentsys-msg:robotid-val is deprecated.  Use mutilagentsys-msg:robotid instead.")
  (robotid m))

(cl:ensure-generic-function 'robotstatus-val :lambda-list '(m))
(cl:defmethod robotstatus-val ((m <robotinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mutilagentsys-msg:robotstatus-val is deprecated.  Use mutilagentsys-msg:robotstatus instead.")
  (robotstatus m))

(cl:ensure-generic-function 'taskid-val :lambda-list '(m))
(cl:defmethod taskid-val ((m <robotinfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mutilagentsys-msg:taskid-val is deprecated.  Use mutilagentsys-msg:taskid instead.")
  (taskid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotinfo>) ostream)
  "Serializes a message object of type '<robotinfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotid)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotstatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotstatus))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotinfo>) istream)
  "Deserializes a message object of type '<robotinfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotid)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotstatus) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotstatus) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotinfo>)))
  "Returns string type for a message object of type '<robotinfo>"
  "mutilagentsys/robotinfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotinfo)))
  "Returns string type for a message object of type 'robotinfo"
  "mutilagentsys/robotinfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotinfo>)))
  "Returns md5sum for a message object of type '<robotinfo>"
  "c27b94a1a25a30817bd534d87682aca0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotinfo)))
  "Returns md5sum for a message object of type 'robotinfo"
  "c27b94a1a25a30817bd534d87682aca0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotinfo>)))
  "Returns full string definition for message of type '<robotinfo>"
  (cl:format cl:nil "uint8 robotid~%string robotstatus~%uint8 taskid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotinfo)))
  "Returns full string definition for message of type 'robotinfo"
  (cl:format cl:nil "uint8 robotid~%string robotstatus~%uint8 taskid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotinfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'robotstatus))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotinfo>))
  "Converts a ROS message object to a list"
  (cl:list 'robotinfo
    (cl:cons ':robotid (robotid msg))
    (cl:cons ':robotstatus (robotstatus msg))
    (cl:cons ':taskid (taskid msg))
))
