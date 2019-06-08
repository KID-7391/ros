
(cl:in-package :asdf)

(defsystem "farewell_getbag-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pixel_index" :depends-on ("_package_pixel_index"))
    (:file "_package_pixel_index" :depends-on ("_package"))
  ))