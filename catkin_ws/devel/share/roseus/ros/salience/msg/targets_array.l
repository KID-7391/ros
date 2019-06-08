;; Auto-generated. Do not edit!


(when (boundp 'salience::targets_array)
  (if (not (find-package "SALIENCE"))
    (make-package "SALIENCE"))
  (shadow 'targets_array (find-package "SALIENCE")))
(unless (find-package "SALIENCE::TARGETS_ARRAY")
  (make-package "SALIENCE::TARGETS_ARRAY"))

(in-package "ROS")
;;//! \htmlinclude targets_array.msg.html


(defclass salience::targets_array
  :super ros::object
  :slots (_targets ))

(defmethod salience::targets_array
  (:init
   (&key
    ((:targets __targets) (let (r) (dotimes (i 0) (push (instance salience::pixel_index :init) r)) r))
    )
   (send-super :init)
   (setq _targets __targets)
   self)
  (:targets
   (&rest __targets)
   (if (keywordp (car __targets))
       (send* _targets __targets)
     (progn
       (if __targets (setq _targets (car __targets)))
       _targets)))
  (:serialization-length
   ()
   (+
    ;; salience/pixel_index[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; salience/pixel_index[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; salience/pixel_index[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (let (r) (dotimes (i n) (push (instance salience::pixel_index :init) r)) r))
     (dolist (elem- _targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get salience::targets_array :md5sum-) "3e96488ee6e62f38f6544a9a59d4b067")
(setf (get salience::targets_array :datatype-) "salience/targets_array")
(setf (get salience::targets_array :definition-)
      "pixel_index[] targets

================================================================================
MSG: salience/pixel_index
int32 x
int32 y

")



(provide :salience/targets_array "3e96488ee6e62f38f6544a9a59d4b067")


