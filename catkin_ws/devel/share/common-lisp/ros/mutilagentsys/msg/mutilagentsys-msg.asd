
(cl:in-package :asdf)

(defsystem "mutilagentsys-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "robotinfo" :depends-on ("_package_robotinfo"))
    (:file "_package_robotinfo" :depends-on ("_package"))
  ))