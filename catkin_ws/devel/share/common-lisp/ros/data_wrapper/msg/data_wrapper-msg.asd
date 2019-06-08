
(cl:in-package :asdf)

(defsystem "data_wrapper-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "scan_odom" :depends-on ("_package_scan_odom"))
    (:file "_package_scan_odom" :depends-on ("_package"))
  ))