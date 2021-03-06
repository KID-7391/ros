;; Auto-generated. Do not edit!


(when (boundp 'kamerider_image_msgs::mission)
  (if (not (find-package "KAMERIDER_IMAGE_MSGS"))
    (make-package "KAMERIDER_IMAGE_MSGS"))
  (shadow 'mission (find-package "KAMERIDER_IMAGE_MSGS")))
(unless (find-package "KAMERIDER_IMAGE_MSGS::MISSION")
  (make-package "KAMERIDER_IMAGE_MSGS::MISSION"))

(in-package "ROS")
;;//! \htmlinclude mission.msg.html


(defclass kamerider_image_msgs::mission
  :super ros::object
  :slots (_mission_type _mission_name ))

(defmethod kamerider_image_msgs::mission
  (:init
   (&key
    ((:mission_type __mission_type) "")
    ((:mission_name __mission_name) "")
    )
   (send-super :init)
   (setq _mission_type (string __mission_type))
   (setq _mission_name (string __mission_name))
   self)
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:mission_name
   (&optional __mission_name)
   (if __mission_name (setq _mission_name __mission_name)) _mission_name)
  (:serialization-length
   ()
   (+
    ;; string _mission_type
    4 (length _mission_type)
    ;; string _mission_name
    4 (length _mission_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mission_type
       (write-long (length _mission_type) s) (princ _mission_type s)
     ;; string _mission_name
       (write-long (length _mission_name) s) (princ _mission_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mission_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mission_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get kamerider_image_msgs::mission :md5sum-) "6d58fdcb61ba622ce7ed121da079b668")
(setf (get kamerider_image_msgs::mission :datatype-) "kamerider_image_msgs/mission")
(setf (get kamerider_image_msgs::mission :definition-)
      "string mission_type
string mission_name

")



(provide :kamerider_image_msgs/mission "6d58fdcb61ba622ce7ed121da079b668")


