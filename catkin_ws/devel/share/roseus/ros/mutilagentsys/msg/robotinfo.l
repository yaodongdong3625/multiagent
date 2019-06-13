;; Auto-generated. Do not edit!


(when (boundp 'mutilagentsys::robotinfo)
  (if (not (find-package "MUTILAGENTSYS"))
    (make-package "MUTILAGENTSYS"))
  (shadow 'robotinfo (find-package "MUTILAGENTSYS")))
(unless (find-package "MUTILAGENTSYS::ROBOTINFO")
  (make-package "MUTILAGENTSYS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude robotinfo.msg.html


(defclass mutilagentsys::robotinfo
  :super ros::object
  :slots (_robotid _robotstatus _taskid ))

(defmethod mutilagentsys::robotinfo
  (:init
   (&key
    ((:robotid __robotid) 0)
    ((:robotstatus __robotstatus) "")
    ((:taskid __taskid) 0)
    )
   (send-super :init)
   (setq _robotid (round __robotid))
   (setq _robotstatus (string __robotstatus))
   (setq _taskid (round __taskid))
   self)
  (:robotid
   (&optional __robotid)
   (if __robotid (setq _robotid __robotid)) _robotid)
  (:robotstatus
   (&optional __robotstatus)
   (if __robotstatus (setq _robotstatus __robotstatus)) _robotstatus)
  (:taskid
   (&optional __taskid)
   (if __taskid (setq _taskid __taskid)) _taskid)
  (:serialization-length
   ()
   (+
    ;; uint8 _robotid
    1
    ;; string _robotstatus
    4 (length _robotstatus)
    ;; uint8 _taskid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robotid
       (write-byte _robotid s)
     ;; string _robotstatus
       (write-long (length _robotstatus) s) (princ _robotstatus s)
     ;; uint8 _taskid
       (write-byte _taskid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robotid
     (setq _robotid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _robotstatus
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotstatus (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _taskid
     (setq _taskid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mutilagentsys::robotinfo :md5sum-) "c27b94a1a25a30817bd534d87682aca0")
(setf (get mutilagentsys::robotinfo :datatype-) "mutilagentsys/robotinfo")
(setf (get mutilagentsys::robotinfo :definition-)
      "uint8 robotid
string robotstatus
uint8 taskid
")



(provide :mutilagentsys/robotinfo "c27b94a1a25a30817bd534d87682aca0")


