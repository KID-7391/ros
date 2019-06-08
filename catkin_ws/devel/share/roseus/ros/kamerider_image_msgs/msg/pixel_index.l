;; Auto-generated. Do not edit!


(when (boundp 'kamerider_image_msgs::pixel_index)
  (if (not (find-package "KAMERIDER_IMAGE_MSGS"))
    (make-package "KAMERIDER_IMAGE_MSGS"))
  (shadow 'pixel_index (find-package "KAMERIDER_IMAGE_MSGS")))
(unless (find-package "KAMERIDER_IMAGE_MSGS::PIXEL_INDEX")
  (make-package "KAMERIDER_IMAGE_MSGS::PIXEL_INDEX"))

(in-package "ROS")
;;//! \htmlinclude pixel_index.msg.html


(defclass kamerider_image_msgs::pixel_index
  :super ros::object
  :slots (_x _y ))

(defmethod kamerider_image_msgs::pixel_index
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get kamerider_image_msgs::pixel_index :md5sum-) "bd7b43fd41d4c47bf5c703cc7d016709")
(setf (get kamerider_image_msgs::pixel_index :datatype-) "kamerider_image_msgs/pixel_index")
(setf (get kamerider_image_msgs::pixel_index :definition-)
      "int32 x
int32 y

")



(provide :kamerider_image_msgs/pixel_index "bd7b43fd41d4c47bf5c703cc7d016709")


