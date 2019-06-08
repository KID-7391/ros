; Auto-generated. Do not edit!


(cl:in-package salience-msg)


;//! \htmlinclude RectArray.msg.html

(cl:defclass <RectArray> (roslisp-msg-protocol:ros-message)
  ((bboxes
    :reader bboxes
    :initarg :bboxes
    :type (cl:vector salience-msg:Rect)
   :initform (cl:make-array 0 :element-type 'salience-msg:Rect :initial-element (cl:make-instance 'salience-msg:Rect))))
)

(cl:defclass RectArray (<RectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name salience-msg:<RectArray> is deprecated: use salience-msg:RectArray instead.")))

(cl:ensure-generic-function 'bboxes-val :lambda-list '(m))
(cl:defmethod bboxes-val ((m <RectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader salience-msg:bboxes-val is deprecated.  Use salience-msg:bboxes instead.")
  (bboxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RectArray>) ostream)
  "Serializes a message object of type '<RectArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bboxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bboxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RectArray>) istream)
  "Deserializes a message object of type '<RectArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bboxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bboxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'salience-msg:Rect))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RectArray>)))
  "Returns string type for a message object of type '<RectArray>"
  "salience/RectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RectArray)))
  "Returns string type for a message object of type 'RectArray"
  "salience/RectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RectArray>)))
  "Returns md5sum for a message object of type '<RectArray>"
  "2a26a8cb81778da4e083813232578748")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RectArray)))
  "Returns md5sum for a message object of type 'RectArray"
  "2a26a8cb81778da4e083813232578748")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RectArray>)))
  "Returns full string definition for message of type '<RectArray>"
  (cl:format cl:nil "Rect[] bboxes~%~%================================================================================~%MSG: salience/Rect~%# opencv Rect data type, x-y is center point~%float64 x0~%float64 y0~%float64 x1~%float64 y1~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RectArray)))
  "Returns full string definition for message of type 'RectArray"
  (cl:format cl:nil "Rect[] bboxes~%~%================================================================================~%MSG: salience/Rect~%# opencv Rect data type, x-y is center point~%float64 x0~%float64 y0~%float64 x1~%float64 y1~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RectArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bboxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RectArray
    (cl:cons ':bboxes (bboxes msg))
))
