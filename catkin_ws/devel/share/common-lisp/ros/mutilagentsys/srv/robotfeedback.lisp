; Auto-generated. Do not edit!


(cl:in-package mutilagentsys-srv)


;//! \htmlinclude robotfeedback-request.msg.html

(cl:defclass <robotfeedback-request> (roslisp-msg-protocol:ros-message)
  ((taskid
    :reader taskid
    :initarg :taskid
    :type cl:integer
    :initform 0))
)

(cl:defclass robotfeedback-request (<robotfeedback-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotfeedback-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotfeedback-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mutilagentsys-srv:<robotfeedback-request> is deprecated: use mutilagentsys-srv:robotfeedback-request instead.")))

(cl:ensure-generic-function 'taskid-val :lambda-list '(m))
(cl:defmethod taskid-val ((m <robotfeedback-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mutilagentsys-srv:taskid-val is deprecated.  Use mutilagentsys-srv:taskid instead.")
  (taskid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotfeedback-request>) ostream)
  "Serializes a message object of type '<robotfeedback-request>"
  (cl:let* ((signed (cl:slot-value msg 'taskid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotfeedback-request>) istream)
  "Deserializes a message object of type '<robotfeedback-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskid) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotfeedback-request>)))
  "Returns string type for a service object of type '<robotfeedback-request>"
  "mutilagentsys/robotfeedbackRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotfeedback-request)))
  "Returns string type for a service object of type 'robotfeedback-request"
  "mutilagentsys/robotfeedbackRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotfeedback-request>)))
  "Returns md5sum for a message object of type '<robotfeedback-request>"
  "7776dd36f3d35e00906447aeb823d4a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotfeedback-request)))
  "Returns md5sum for a message object of type 'robotfeedback-request"
  "7776dd36f3d35e00906447aeb823d4a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotfeedback-request>)))
  "Returns full string definition for message of type '<robotfeedback-request>"
  (cl:format cl:nil "int64 taskid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotfeedback-request)))
  "Returns full string definition for message of type 'robotfeedback-request"
  (cl:format cl:nil "int64 taskid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotfeedback-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotfeedback-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robotfeedback-request
    (cl:cons ':taskid (taskid msg))
))
;//! \htmlinclude robotfeedback-response.msg.html

(cl:defclass <robotfeedback-response> (roslisp-msg-protocol:ros-message)
  ((taskstatus
    :reader taskstatus
    :initarg :taskstatus
    :type cl:string
    :initform ""))
)

(cl:defclass robotfeedback-response (<robotfeedback-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotfeedback-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotfeedback-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mutilagentsys-srv:<robotfeedback-response> is deprecated: use mutilagentsys-srv:robotfeedback-response instead.")))

(cl:ensure-generic-function 'taskstatus-val :lambda-list '(m))
(cl:defmethod taskstatus-val ((m <robotfeedback-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mutilagentsys-srv:taskstatus-val is deprecated.  Use mutilagentsys-srv:taskstatus instead.")
  (taskstatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotfeedback-response>) ostream)
  "Serializes a message object of type '<robotfeedback-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'taskstatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'taskstatus))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotfeedback-response>) istream)
  "Deserializes a message object of type '<robotfeedback-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskstatus) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'taskstatus) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotfeedback-response>)))
  "Returns string type for a service object of type '<robotfeedback-response>"
  "mutilagentsys/robotfeedbackResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotfeedback-response)))
  "Returns string type for a service object of type 'robotfeedback-response"
  "mutilagentsys/robotfeedbackResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotfeedback-response>)))
  "Returns md5sum for a message object of type '<robotfeedback-response>"
  "7776dd36f3d35e00906447aeb823d4a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotfeedback-response)))
  "Returns md5sum for a message object of type 'robotfeedback-response"
  "7776dd36f3d35e00906447aeb823d4a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotfeedback-response>)))
  "Returns full string definition for message of type '<robotfeedback-response>"
  (cl:format cl:nil "~%string taskstatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotfeedback-response)))
  "Returns full string definition for message of type 'robotfeedback-response"
  (cl:format cl:nil "~%string taskstatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotfeedback-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'taskstatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotfeedback-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robotfeedback-response
    (cl:cons ':taskstatus (taskstatus msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robotfeedback)))
  'robotfeedback-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robotfeedback)))
  'robotfeedback-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotfeedback)))
  "Returns string type for a service object of type '<robotfeedback>"
  "mutilagentsys/robotfeedback")