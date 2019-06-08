;; Auto-generated. Do not edit!


(when (boundp 'kamerider_image_msgs::GenderDetection)
  (if (not (find-package "KAMERIDER_IMAGE_MSGS"))
    (make-package "KAMERIDER_IMAGE_MSGS"))
  (shadow 'GenderDetection (find-package "KAMERIDER_IMAGE_MSGS")))
(unless (find-package "KAMERIDER_IMAGE_MSGS::GENDERDETECTION")
  (make-package "KAMERIDER_IMAGE_MSGS::GENDERDETECTION"))

(in-package "ROS")
;;//! \htmlinclude GenderDetection.msg.html


(defclass kamerider_image_msgs::GenderDetection
  :super ros::object
  :slots (_male_num _female_num _sit_num _stand_num ))

(defmethod kamerider_image_msgs::GenderDetection
  (:init
   (&key
    ((:male_num __male_num) 0)
    ((:female_num __female_num) 0)
    ((:sit_num __sit_num) 0)
    ((:stand_num __stand_num) 0)
    )
   (send-super :init)
   (setq _male_num (round __male_num))
   (setq _female_num (round __female_num))
   (setq _sit_num (round __sit_num))
   (setq _stand_num (round __stand_num))
   self)
  (:male_num
   (&optional __male_num)
   (if __male_num (setq _male_num __male_num)) _male_num)
  (:female_num
   (&optional __female_num)
   (if __female_num (setq _female_num __female_num)) _female_num)
  (:sit_num
   (&optional __sit_num)
   (if __sit_num (setq _sit_num __sit_num)) _sit_num)
  (:stand_num
   (&optional __stand_num)
   (if __stand_num (setq _stand_num __stand_num)) _stand_num)
  (:serialization-length
   ()
   (+
    ;; int8 _male_num
    1
    ;; int8 _female_num
    1
    ;; int8 _sit_num
    1
    ;; int8 _stand_num
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _male_num
       (write-byte _male_num s)
     ;; int8 _female_num
       (write-byte _female_num s)
     ;; int8 _sit_num
       (write-byte _sit_num s)
     ;; int8 _stand_num
       (write-byte _stand_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _male_num
     (setq _male_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _male_num 127) (setq _male_num (- _male_num 256)))
   ;; int8 _female_num
     (setq _female_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _female_num 127) (setq _female_num (- _female_num 256)))
   ;; int8 _sit_num
     (setq _sit_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sit_num 127) (setq _sit_num (- _sit_num 256)))
   ;; int8 _stand_num
     (setq _stand_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stand_num 127) (setq _stand_num (- _stand_num 256)))
   ;;
   self)
  )

(setf (get kamerider_image_msgs::GenderDetection :md5sum-) "105a02752dd5a1e4af0ec4122f3b9eba")
(setf (get kamerider_image_msgs::GenderDetection :datatype-) "kamerider_image_msgs/GenderDetection")
(setf (get kamerider_image_msgs::GenderDetection :definition-)
      "int8 male_num
int8 female_num
int8 sit_num
int8 stand_num

")



(provide :kamerider_image_msgs/GenderDetection "105a02752dd5a1e4af0ec4122f3b9eba")


