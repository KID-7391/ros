; Auto-generated. Do not edit!


(cl:in-package kamerider_image_msgs-msg)


;//! \htmlinclude GenderDetection.msg.html

(cl:defclass <GenderDetection> (roslisp-msg-protocol:ros-message)
  ((male_num
    :reader male_num
    :initarg :male_num
    :type cl:fixnum
    :initform 0)
   (female_num
    :reader female_num
    :initarg :female_num
    :type cl:fixnum
    :initform 0)
   (sit_num
    :reader sit_num
    :initarg :sit_num
    :type cl:fixnum
    :initform 0)
   (stand_num
    :reader stand_num
    :initarg :stand_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GenderDetection (<GenderDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenderDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenderDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kamerider_image_msgs-msg:<GenderDetection> is deprecated: use kamerider_image_msgs-msg:GenderDetection instead.")))

(cl:ensure-generic-function 'male_num-val :lambda-list '(m))
(cl:defmethod male_num-val ((m <GenderDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kamerider_image_msgs-msg:male_num-val is deprecated.  Use kamerider_image_msgs-msg:male_num instead.")
  (male_num m))

(cl:ensure-generic-function 'female_num-val :lambda-list '(m))
(cl:defmethod female_num-val ((m <GenderDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kamerider_image_msgs-msg:female_num-val is deprecated.  Use kamerider_image_msgs-msg:female_num instead.")
  (female_num m))

(cl:ensure-generic-function 'sit_num-val :lambda-list '(m))
(cl:defmethod sit_num-val ((m <GenderDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kamerider_image_msgs-msg:sit_num-val is deprecated.  Use kamerider_image_msgs-msg:sit_num instead.")
  (sit_num m))

(cl:ensure-generic-function 'stand_num-val :lambda-list '(m))
(cl:defmethod stand_num-val ((m <GenderDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kamerider_image_msgs-msg:stand_num-val is deprecated.  Use kamerider_image_msgs-msg:stand_num instead.")
  (stand_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenderDetection>) ostream)
  "Serializes a message object of type '<GenderDetection>"
  (cl:let* ((signed (cl:slot-value msg 'male_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'female_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sit_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stand_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenderDetection>) istream)
  "Deserializes a message object of type '<GenderDetection>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'male_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'female_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sit_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stand_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenderDetection>)))
  "Returns string type for a message object of type '<GenderDetection>"
  "kamerider_image_msgs/GenderDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenderDetection)))
  "Returns string type for a message object of type 'GenderDetection"
  "kamerider_image_msgs/GenderDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenderDetection>)))
  "Returns md5sum for a message object of type '<GenderDetection>"
  "105a02752dd5a1e4af0ec4122f3b9eba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenderDetection)))
  "Returns md5sum for a message object of type 'GenderDetection"
  "105a02752dd5a1e4af0ec4122f3b9eba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenderDetection>)))
  "Returns full string definition for message of type '<GenderDetection>"
  (cl:format cl:nil "int8 male_num~%int8 female_num~%int8 sit_num~%int8 stand_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenderDetection)))
  "Returns full string definition for message of type 'GenderDetection"
  (cl:format cl:nil "int8 male_num~%int8 female_num~%int8 sit_num~%int8 stand_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenderDetection>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenderDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'GenderDetection
    (cl:cons ':male_num (male_num msg))
    (cl:cons ':female_num (female_num msg))
    (cl:cons ':sit_num (sit_num msg))
    (cl:cons ':stand_num (stand_num msg))
))
