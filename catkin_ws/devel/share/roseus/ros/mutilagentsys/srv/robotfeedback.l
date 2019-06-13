;; Auto-generated. Do not edit!


(when (boundp 'mutilagentsys::robotfeedback)
  (if (not (find-package "MUTILAGENTSYS"))
    (make-package "MUTILAGENTSYS"))
  (shadow 'robotfeedback (find-package "MUTILAGENTSYS")))
(unless (find-package "MUTILAGENTSYS::ROBOTFEEDBACK")
  (make-package "MUTILAGENTSYS::ROBOTFEEDBACK"))
(unless (find-package "MUTILAGENTSYS::ROBOTFEEDBACKREQUEST")
  (make-package "MUTILAGENTSYS::ROBOTFEEDBACKREQUEST"))
(unless (find-package "MUTILAGENTSYS::ROBOTFEEDBACKRESPONSE")
  (make-package "MUTILAGENTSYS::ROBOTFEEDBACKRESPONSE"))

(in-package "ROS")





(defclass mutilagentsys::robotfeedbackRequest
  :super ros::object
  :slots (_taskid ))

(defmethod mutilagentsys::robotfeedbackRequest
  (:init
   (&key
    ((:taskid __taskid) 0)
    )
   (send-super :init)
   (setq _taskid (round __taskid))
   self)
  (:taskid
   (&optional __taskid)
   (if __taskid (setq _taskid __taskid)) _taskid)
  (:serialization-length
   ()
   (+
    ;; int64 _taskid
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _taskid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _taskid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _taskid) (= (length (_taskid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_taskid . bv) 0) 0) s)
              (write-long (ash (elt (_taskid . bv) 1) -1) s))
             ((and (class _taskid) (= (length (_taskid . bv)) 1)) ;; big1
              (write-long (elt (_taskid . bv) 0) s)
              (write-long (if (>= _taskid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _taskid s)(write-long (if (>= _taskid 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _taskid
#+(or :alpha :irix6 :x86_64)
      (setf _taskid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _taskid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass mutilagentsys::robotfeedbackResponse
  :super ros::object
  :slots (_taskstatus ))

(defmethod mutilagentsys::robotfeedbackResponse
  (:init
   (&key
    ((:taskstatus __taskstatus) "")
    )
   (send-super :init)
   (setq _taskstatus (string __taskstatus))
   self)
  (:taskstatus
   (&optional __taskstatus)
   (if __taskstatus (setq _taskstatus __taskstatus)) _taskstatus)
  (:serialization-length
   ()
   (+
    ;; string _taskstatus
    4 (length _taskstatus)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _taskstatus
       (write-long (length _taskstatus) s) (princ _taskstatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _taskstatus
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _taskstatus (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mutilagentsys::robotfeedback
  :super ros::object
  :slots ())

(setf (get mutilagentsys::robotfeedback :md5sum-) "7776dd36f3d35e00906447aeb823d4a1")
(setf (get mutilagentsys::robotfeedback :datatype-) "mutilagentsys/robotfeedback")
(setf (get mutilagentsys::robotfeedback :request) mutilagentsys::robotfeedbackRequest)
(setf (get mutilagentsys::robotfeedback :response) mutilagentsys::robotfeedbackResponse)

(defmethod mutilagentsys::robotfeedbackRequest
  (:response () (instance mutilagentsys::robotfeedbackResponse :init)))

(setf (get mutilagentsys::robotfeedbackRequest :md5sum-) "7776dd36f3d35e00906447aeb823d4a1")
(setf (get mutilagentsys::robotfeedbackRequest :datatype-) "mutilagentsys/robotfeedbackRequest")
(setf (get mutilagentsys::robotfeedbackRequest :definition-)
      "int64 taskid

---

string taskstatus
")

(setf (get mutilagentsys::robotfeedbackResponse :md5sum-) "7776dd36f3d35e00906447aeb823d4a1")
(setf (get mutilagentsys::robotfeedbackResponse :datatype-) "mutilagentsys/robotfeedbackResponse")
(setf (get mutilagentsys::robotfeedbackResponse :definition-)
      "int64 taskid

---

string taskstatus
")



(provide :mutilagentsys/robotfeedback "7776dd36f3d35e00906447aeb823d4a1")


