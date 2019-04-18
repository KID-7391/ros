;; Auto-generated. Do not edit!


(when (boundp 'face_detection::Face)
  (if (not (find-package "FACE_DETECTION"))
    (make-package "FACE_DETECTION"))
  (shadow 'Face (find-package "FACE_DETECTION")))
(unless (find-package "FACE_DETECTION::FACE")
  (make-package "FACE_DETECTION::FACE"))

(in-package "ROS")
;;//! \htmlinclude Face.msg.html


(defclass face_detection::Face
  :super ros::object
  :slots (_face _eyes _label _confidence ))

(defmethod face_detection::Face
  (:init
   (&key
    ((:face __face) (instance face_detection::Rect :init))
    ((:eyes __eyes) (let (r) (dotimes (i 0) (push (instance face_detection::Rect :init) r)) r))
    ((:label __label) "")
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _face __face)
   (setq _eyes __eyes)
   (setq _label (string __label))
   (setq _confidence (float __confidence))
   self)
  (:face
   (&rest __face)
   (if (keywordp (car __face))
       (send* _face __face)
     (progn
       (if __face (setq _face (car __face)))
       _face)))
  (:eyes
   (&rest __eyes)
   (if (keywordp (car __eyes))
       (send* _eyes __eyes)
     (progn
       (if __eyes (setq _eyes (car __eyes)))
       _eyes)))
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; face_detection/Rect _face
    (send _face :serialization-length)
    ;; face_detection/Rect[] _eyes
    (apply #'+ (send-all _eyes :serialization-length)) 4
    ;; string _label
    4 (length _label)
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; face_detection/Rect _face
       (send _face :serialize s)
     ;; face_detection/Rect[] _eyes
     (write-long (length _eyes) s)
     (dolist (elem _eyes)
       (send elem :serialize s)
       )
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; face_detection/Rect _face
     (send _face :deserialize buf ptr-) (incf ptr- (send _face :serialization-length))
   ;; face_detection/Rect[] _eyes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eyes (let (r) (dotimes (i n) (push (instance face_detection::Rect :init) r)) r))
     (dolist (elem- _eyes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get face_detection::Face :md5sum-) "a1a50e747b0ca7822ce8611c3ffa7a02")
(setf (get face_detection::Face :datatype-) "face_detection/Face")
(setf (get face_detection::Face :definition-)
      "Rect face
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



(provide :face_detection/Face "a1a50e747b0ca7822ce8611c3ffa7a02")


