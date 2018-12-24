;;
;; Thunk NYC sugar
;; Edwin Watkeys, edw@poseur.com
;;

(export *> *>>)

(defrules *> ()
  ((_ val (proc arg ...) form ...)
   (*> (proc val arg ...) form ...))
  ((_ val proc form ...)
   (*> (proc val) form ...))
  ((_ val)
   val))

(defrules *>> ()
  ((_ val (proc arg ...) form ...)
   (*>> (proc arg ... val) form ...))
  ((_ val proc form ...)
   (*>> (proc val) form ...))
  ((_ val)
   val))
