
(cl:in-package :asdf)

(defsystem "kamerider_image_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "FaceDetection" :depends-on ("_package_FaceDetection"))
    (:file "_package_FaceDetection" :depends-on ("_package"))
    (:file "GenderDetection" :depends-on ("_package_GenderDetection"))
    (:file "_package_GenderDetection" :depends-on ("_package"))
    (:file "ObjectPosition" :depends-on ("_package_ObjectPosition"))
    (:file "_package_ObjectPosition" :depends-on ("_package"))
    (:file "mission" :depends-on ("_package_mission"))
    (:file "_package_mission" :depends-on ("_package"))
    (:file "pixel_index" :depends-on ("_package_pixel_index"))
    (:file "_package_pixel_index" :depends-on ("_package"))
    (:file "targets_array" :depends-on ("_package_targets_array"))
    (:file "_package_targets_array" :depends-on ("_package"))
  ))