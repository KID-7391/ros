;; Auto-generated. Do not edit!


(when (boundp 'salience::Rect)
  (if (not (find-package "SALIENCE"))
    (make-package "SALIENCE"))
  (shadow 'Rect (find-package "SALIENCE")))
(unless (find-package "SALIENCE::RECT")
  (make-package "SALIENCE::RECT"))

(in-package "ROS")
;;//! \htmlinclude Rect.msg.html


(defclass salience::Rect
  :super ros::object
  :slots (_x0 _y0 _x1 _y1 _id ))

(defmethod salience::Rect
  (:init
   (&key
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _id (round __id))
   self)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64 _x0
    8
    ;; float64 _y0
    8
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x0
     (setq _x0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y0
     (setq _y0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get salience::Rect :md5sum-) "e6d557464a0baf5174b255c2c5be2036")
(setf (get salience::Rect :datatype-) "salience/Rect")
(setf (get salience::Rect :definition-)
      "# opencv Rect data type, x-y is center point
float64 x0
float64 y0
float64 x1
float64 y1
int32 id

")



(provide :salience/Rect "e6d557464a0baf5174b255c2c5be2036")


