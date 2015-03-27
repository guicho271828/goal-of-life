(in-package :cl-user)
(defpackage goal-of-life-asd
  (:use :cl :asdf))
(in-package :goal-of-life-asd)

(defsystem goal-of-life
  :version "0.1"
  :author ""
  :license ""
  :depends-on (:clack
               :caveman2
               :envy
               :cl-ppcre

               ;; for @route annotation
               :cl-syntax-annot

               ;; HTML Template
               :djula

               ;; for DB
               :datafly
               :sxql)
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("config" "view" "db"))
                 (:file "web" :depends-on ("view"))
                 (:file "view" :depends-on ("config"))
                 (:file "db" :depends-on ("config"))
                 (:file "config"))))
  :description ""
  :in-order-to ((test-op (load-op goal-of-life-test))))
