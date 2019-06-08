;; Auto-generated. Do not edit!


(when (boundp 'kamerider_image_msgs::FaceDetection)
  (if (not (find-package "KAMERIDER_IMAGE_MSGS"))
    (make-package "KAMERIDER_IMAGE_MSGS"))
  (shadow 'FaceDetection (find-package "KAMERIDER_IMAGE_MSGS")))
(unless (find-package "KAMERIDER_IMAGE_MSGS::FACEDETECTION")
  (make-package "KAMERIDER_IMAGE_MSGS::FACEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude FaceDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kamerider_image_msgs::FaceDetection
  :super ros::object
  :slots (_header _image_header _face_num _bounding_boxes ))

(defmethod kamerider_image_msgs::FaceDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:face_num __face_num) 0)
    ((:bounding_boxes __bounding_boxes) (let (r) (dotimes (i 0) (push (instance kamerider_image_msgs::BoundingBox :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _face_num (round __face_num))
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:face_num
   (&optional __face_num)
   (if __face_num (setq _face_num __face_num)) _face_num)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; int8 _face_num
    1
    ;; kamerider_image_msgs/BoundingBox[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; int8 _face_num
       (write-byte _face_num s)
     ;; kamerider_image_msgs/BoundingBox[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; int8 _face_num
     (setq _face_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _face_num 127) (setq _face_num (- _face_num 256)))
   ;; kamerider_image_msgs/BoundingBox[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance kamerider_image_msgs::BoundingBox :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get kamerider_image_msgs::FaceDetection :md5sum-) "1261acd8bc8bd6463d06589c0438ae60")
(setf (get kamerider_image_msgs::FaceDetection :datatype-) "kamerider_image_msgs/FaceDetection")
(setf (get kamerider_image_msgs::FaceDetection :definition-)
      "Header header
Header image_header
int8 face_num
BoundingBox[] bounding_boxes


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: kamerider_image_msgs/BoundingBox
string Class
int64 xmin
int64 ymin
int64 xmax
int64 ymax


")



(provide :kamerider_image_msgs/FaceDetection "1261acd8bc8bd6463d06589c0438ae60")


