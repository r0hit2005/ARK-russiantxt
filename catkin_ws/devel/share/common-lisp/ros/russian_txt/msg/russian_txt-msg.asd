
(cl:in-package :asdf)

(defsystem "russian_txt-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "results" :depends-on ("_package_results"))
    (:file "_package_results" :depends-on ("_package"))
  ))