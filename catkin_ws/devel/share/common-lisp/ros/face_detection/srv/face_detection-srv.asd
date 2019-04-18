
(cl:in-package :asdf)

(defsystem "face_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :face_detection-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceRecognitionTrain" :depends-on ("_package_FaceRecognitionTrain"))
    (:file "_package_FaceRecognitionTrain" :depends-on ("_package"))
  ))