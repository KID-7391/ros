;; Auto-generated. Do not edit!


(when (boundp 'face_detection::FaceArray)
  (if (not (find-package "FACE_DETECTION"))
    (make-package "FACE_DETECTION"))
  (shadow 'FaceArray (find-package "FACE_DETECTION")))
(unless (find-package "FACE_DETECTION::FACEARRAY")
  (make-package "FACE_DETECTION::FACEARRAY"))

(in-package "ROS")
;;//! \htmlinclude FaceArray.msg.html


(defclass face_detection::FaceArray
  :super ros::object
  :slots (_faces ))

(defmethod face_detection::FaceArray
  (:init
   (&key
    ((:faces __faces) (let (r) (dotimes (i 0) (push (instance face_detection::Face :init) r)) r))
    )
   (send-super :init)
   (setq _faces __faces)
   self)
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:serialization-length
   ()
   (+
    ;; face_detection/Face[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; face_detection/Face[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; face_detection/Face[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance face_detection::Face :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get face_detection::FaceArray :md5sum-) "3ae7a36ff47d72f5dd1d764612b2b3c8")
(setf (get face_detection::FaceArray :datatype-) "face_detection/FaceArray")
(setf (get face_detection::FaceArray :definition-)
      "Face[] faces


================================================================================
MSG: face_detection/Face
Rect face
Rect[] eyes
string label
float64 confidence

================================================================================
MSG: face_detection/Rect
# opencv Rect data type, x-y is center point
float64 x
float64 y
float64 width
float64 height


")



(provide :face_detection/FaceArray "3ae7a36ff47d72f5dd1d764612b2b3c8")


