
(cl:in-package :asdf)

(defsystem "face_detection-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Face" :depends-on ("_package_Face"))
    (:file "_package_Face" :depends-on ("_package"))
    (:file "FaceArray" :depends-on ("_package_FaceArray"))
    (:file "_package_FaceArray" :depends-on ("_package"))
    (:file "FaceArrayStamped" :depends-on ("_package_FaceArrayStamped"))
    (:file "_package_FaceArrayStamped" :depends-on ("_package"))
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
  ))