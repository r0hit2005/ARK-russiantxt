;; Auto-generated. Do not edit!


(when (boundp 'russian_txt::results)
  (if (not (find-package "RUSSIAN_TXT"))
    (make-package "RUSSIAN_TXT"))
  (shadow 'results (find-package "RUSSIAN_TXT")))
(unless (find-package "RUSSIAN_TXT::RESULTS")
  (make-package "RUSSIAN_TXT::RESULTS"))

(in-package "ROS")
;;//! \htmlinclude results.msg.html


(defclass russian_txt::results
  :super ros::object
  :slots (_text _cx _cy ))

(defmethod russian_txt::results
  (:init
   (&key
    ((:text __text) "")
    ((:cx __cx) 0)
    ((:cy __cy) 0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _cx (round __cx))
   (setq _cy (round __cy))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; uint8 _cx
    1
    ;; uint8 _cy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; uint8 _cx
       (write-byte _cx s)
     ;; uint8 _cy
       (write-byte _cy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _cx
     (setq _cx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cy
     (setq _cy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get russian_txt::results :md5sum-) "83316a74c480fb416a8b072597d2f808")
(setf (get russian_txt::results :datatype-) "russian_txt/results")
(setf (get russian_txt::results :definition-)
      "string text
uint8 cx
uint8 cy

")



(provide :russian_txt/results "83316a74c480fb416a8b072597d2f808")


