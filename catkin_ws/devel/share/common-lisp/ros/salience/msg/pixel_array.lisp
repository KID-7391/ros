; Auto-generated. Do not edit!


(cl:in-package salience-msg)


;//! \htmlinclude pixel_array.msg.html

(cl:defclass <pixel_array> (roslisp-msg-protocol:ros-message)
  ((array
    :reader array
    :initarg :array
    :type (cl:vector salience-msg:pixel_index)
   :initform (cl:make-array 0 :element-type 'salience-msg:pixel_index :initial-element (cl:make-instance 'salience-msg:pixel_index))))
)

(cl:defclass pixel_array (<pixel_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pixel_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pixel_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name salience-msg:<pixel_array> is deprecated: use salience-msg:pixel_array instead.")))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <pixel_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader salience-msg:array-val is deprecated.  Use salience-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pixel_array>) ostream)
  "Serializes a message object of type '<pixel_array>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pixel_array>) istream)
  "Deserializes a message object of type '<pixel_array>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'salience-msg:pixel_index))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pixel_array>)))
  "Returns string type for a message object of type '<pixel_array>"
  "salience/pixel_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pixel_array)))
  "Returns string type for a message object of type 'pixel_array"
  "salience/pixel_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pixel_array>)))
  "Returns md5sum for a message object of type '<pixel_array>"
  "7a196b44641744999a3c0db1593a834d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pixel_array)))
  "Returns md5sum for a message object of type 'pixel_array"
  "7a196b44641744999a3c0db1593a834d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pixel_array>)))
  "Returns full string definition for message of type '<pixel_array>"
  (cl:format cl:nil "pixel_index[] array~%~%~%================================================================================~%MSG: salience/pixel_index~%float64 x~%float64 y~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pixel_array)))
  "Returns full string definition for message of type 'pixel_array"
  (cl:format cl:nil "pixel_index[] array~%~%~%================================================================================~%MSG: salience/pixel_index~%float64 x~%float64 y~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pixel_array>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pixel_array>))
  "Converts a ROS message object to a list"
  (cl:list 'pixel_array
    (cl:cons ':array (array msg))
))
