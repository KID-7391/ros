;; Auto-generated. Do not edit!


(when (boundp 'salience::RectArray)
  (if (not (find-package "SALIENCE"))
    (make-package "SALIENCE"))
  (shadow 'RectArray (find-package "SALIENCE")))
(unless (find-package "SALIENCE::RECTARRAY")
  (make-package "SALIENCE::RECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude RectArray.msg.html


(defclass salience::RectArray
  :super ros::object
  :slots (_bboxes ))

(defmethod salience::RectArray
  (:init
   (&key
    ((:bboxes __bboxes) (let (r) (dotimes (i 0) (push (instance salience::Rect :init) r)) r))
    )
   (send-super :init)
   (setq _bboxes __bboxes)
   self)
  (:bboxes
   (&rest __bboxes)
   (if (keywordp (car __bboxes))
       (send* _bboxes __bboxes)
     (progn
       (if __bboxes (setq _bboxes (car __bboxes)))
       _bboxes)))
  (:serialization-length
   ()
   (+
    ;; salience/Rect[] _bboxes
    (apply #'+ (send-all _bboxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; salience/Rect[] _bboxes
     (write-long (length _bboxes) s)
     (dolist (elem _bboxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; salience/Rect[] _bboxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bboxes (let (r) (dotimes (i n) (push (instance salience::Rect :init) r)) r))
     (dolist (elem- _bboxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get salience::RectArray :md5sum-) "2a26a8cb81778da4e083813232578748")
(setf (get salience::RectArray :datatype-) "salience/RectArray")
(setf (get salience::RectArray :definition-)
      "Rect[] bboxes

================================================================================
MSG: salience/Rect
# opencv Rect data type, x-y is center point
float64 x0
float64 y0
float64 x1
float64 y1
int32 id

")



(provide :salience/RectArray "2a26a8cb81778da4e083813232578748")


