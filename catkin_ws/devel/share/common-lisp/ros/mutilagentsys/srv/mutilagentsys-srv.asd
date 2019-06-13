
(cl:in-package :asdf)

(defsystem "mutilagentsys-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "robotfeedback" :depends-on ("_package_robotfeedback"))
    (:file "_package_robotfeedback" :depends-on ("_package"))
  ))