
(cl:in-package :asdf)

(defsystem "salience-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
    (:file "RectArray" :depends-on ("_package_RectArray"))
    (:file "_package_RectArray" :depends-on ("_package"))
    (:file "pixel_index" :depends-on ("_package_pixel_index"))
    (:file "_package_pixel_index" :depends-on ("_package"))
    (:file "targets_array" :depends-on ("_package_targets_array"))
    (:file "_package_targets_array" :depends-on ("_package"))
  ))