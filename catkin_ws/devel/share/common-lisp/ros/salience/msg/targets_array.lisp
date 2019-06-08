; Auto-generated. Do not edit!


(cl:in-package salience-msg)


;//! \htmlinclude targets_array.msg.html

(cl:defclass <targets_array> (roslisp-msg-protocol:ros-message)
  ((targets
    :reader targets
    :initarg :targets
    :type (cl:vector salience-msg:pixel_index)
   :initform (cl:make-array 0 :element-type 'salience-msg:pixel_index :initial-element (cl:make-instance 'salience-msg:pixel_index))))
)

(cl:defclass targets_array (<targets_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <targets_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'targets_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name salience-msg:<targets_array> is deprecated: use salience-msg:targets_array instead.")))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <targets_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader salience-msg:targets-val is deprecated.  Use salience-msg:targets instead.")
  (targets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <targets_array>) ostream)
  "Serializes a message object of type '<targets_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <targets_array>) istream)
  "Deserializes a message object of type '<targets_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'salience-msg:pixel_index))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<targets_array>)))
  "Returns string type for a message object of type '<targets_array>"
  "salience/targets_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'targets_array)))
  "Returns string type for a message object of type 'targets_array"
  "salience/targets_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<targets_array>)))
  "Returns md5sum for a message object of type '<targets_array>"
  "3e96488ee6e62f38f6544a9a59d4b067")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'targets_array)))
  "Returns md5sum for a message object of type 'targets_array"
  "3e96488ee6e62f38f6544a9a59d4b067")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<targets_array>)))
  "Returns full string definition for message of type '<targets_array>"
  (cl:format cl:nil "pixel_index[] targets~%~%================================================================================~%MSG: salience/pixel_index~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'targets_array)))
  "Returns full string definition for message of type 'targets_array"
  (cl:format cl:nil "pixel_index[] targets~%~%================================================================================~%MSG: salience/pixel_index~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <targets_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <targets_array>))
  "Converts a ROS message object to a list"
  (cl:list 'targets_array
    (cl:cons ':targets (targets msg))
))
