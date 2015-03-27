(in-package :cl-user)
(defpackage goal-of-life-test-asd
  (:use :cl :asdf))
(in-package :goal-of-life-test-asd)

(defsystem goal-of-life-test
  :author ""
  :license ""
  :depends-on (:goal-of-life
               :prove)
  :components ((:module "t"
                :components
                ((:file "goal-of-life"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
