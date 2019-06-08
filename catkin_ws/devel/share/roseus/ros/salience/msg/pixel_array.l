;; Auto-generated. Do not edit!


(when (boundp 'salience::pixel_array)
  (if (not (find-package "SALIENCE"))
    (make-package "SALIENCE"))
  (shadow 'pixel_array (find-package "SALIENCE")))
(unless (find-package "SALIENCE::PIXEL_ARRAY")
  (make-package "SALIENCE::PIXEL_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude pixel_array.msg.html


(defclass salience::pixel_array
  :super ros::object
  :slots (_array ))

(defmethod salience::pixel_array
  (:init
   (&key
    ((:array __array) (let (r) (dotimes (i 0) (push (instance salience::pixel_index :init) r)) r))
    )
   (send-super :init)
   (setq _array __array)
   self)
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; salience/pixel_index[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; salience/pixel_index[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; salience/pixel_index[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance salience::pixel_index :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get salience::pixel_array :md5sum-) "7a196b44641744999a3c0db1593a834d")
(setf (get salience::pixel_array :datatype-) "salience/pixel_array")
(setf (get salience::pixel_array :definition-)
      "pixel_index[] array


================================================================================
MSG: salience/pixel_index
float64 x
float64 y
float64 depth

")



(provide :salience/pixel_array "7a196b44641744999a3c0db1593a834d")


