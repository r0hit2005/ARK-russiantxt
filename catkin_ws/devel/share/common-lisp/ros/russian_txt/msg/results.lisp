; Auto-generated. Do not edit!


(cl:in-package russian_txt-msg)


;//! \htmlinclude results.msg.html

(cl:defclass <results> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (cx
    :reader cx
    :initarg :cx
    :type cl:fixnum
    :initform 0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass results (<results>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <results>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'results)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name russian_txt-msg:<results> is deprecated: use russian_txt-msg:results instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <results>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader russian_txt-msg:text-val is deprecated.  Use russian_txt-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <results>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader russian_txt-msg:cx-val is deprecated.  Use russian_txt-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <results>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader russian_txt-msg:cy-val is deprecated.  Use russian_txt-msg:cy instead.")
  (cy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <results>) ostream)
  "Serializes a message object of type '<results>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <results>) istream)
  "Deserializes a message object of type '<results>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<results>)))
  "Returns string type for a message object of type '<results>"
  "russian_txt/results")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'results)))
  "Returns string type for a message object of type 'results"
  "russian_txt/results")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<results>)))
  "Returns md5sum for a message object of type '<results>"
  "83316a74c480fb416a8b072597d2f808")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'results)))
  "Returns md5sum for a message object of type 'results"
  "83316a74c480fb416a8b072597d2f808")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<results>)))
  "Returns full string definition for message of type '<results>"
  (cl:format cl:nil "string text~%uint8 cx~%uint8 cy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'results)))
  "Returns full string definition for message of type 'results"
  (cl:format cl:nil "string text~%uint8 cx~%uint8 cy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <results>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <results>))
  "Converts a ROS message object to a list"
  (cl:list 'results
    (cl:cons ':text (text msg))
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
))
