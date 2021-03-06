(MAPC (FUNCTION (LAMBDA (A) (EVLIST (QUOTE DML') (CAR A) 2 (CADR A) (CDDR A))))
      (QUOTE
       ((* *TIMES (int # int) /-> int)
	(// DIV (int # int) /-> int)
	(/+ *PLUS (int # int) /-> int)
	(/- *DIF (int # int) /-> int)
	(= EQUAL (%a # %a) /-> bool)
	(< *LESS (int # int) /-> bool)
	(> *GREAT (int # int) /-> bool)
	(%& AND (bool # bool) /-> bool)
	(%or OR (bool # bool) /-> bool)
	(/@ *APPEND ((%a list) # (%a list)) /-> (%a list))
	(/. CONS (%a # (%a list)) /-> (%a list)))))
(MAPC (FUNCTION (LAMBDA (A) (EVLIST (QUOTE DML') (CAR A) 1 (CADR A) (CDDR A))))
      (QUOTE
       ((%/- MINUS int /-> int)
	(not NOT bool /-> bool)
	(null NULL (%a list) /-> bool)
	(fst CAR (%a # %b) /-> %a)
	(snd CDR (%a # %b) /-> %b))))
(DMLC nil NIL (%a list))
(PUTPROP (QUOTE do) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE do) (MKTIDY (QUOTE (%a /-> /.))) (QUOTE MLTYPE))
(PUTPROP (QUOTE hd) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE hd) (MKTIDY (QUOTE ((%a list) /-> %a))) (QUOTE MLTYPE))
(PUTPROP (QUOTE tl) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE tl) (MKTIDY (QUOTE ((%a list) /-> (%a list)))) (QUOTE MLTYPE))
(PUTPROP (QUOTE isl) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE isl) (MKTIDY (QUOTE ((%a /+ %b) /-> bool))) (QUOTE MLTYPE))
(PUTPROP (QUOTE isr) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE isr) (MKTIDY (QUOTE ((%a /+ %b) /-> bool))) (QUOTE MLTYPE))
(PUTPROP (QUOTE outl) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE outl) (MKTIDY (QUOTE ((%a /+ %b) /-> %a))) (QUOTE MLTYPE))
(PUTPROP (QUOTE outr) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE outr) (MKTIDY (QUOTE ((%a /+ %b) /-> %b))) (QUOTE MLTYPE))
(PUTPROP (QUOTE inl) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE inl) (MKTIDY (QUOTE (%a /-> (%a /+ %b)))) (QUOTE MLTYPE))
(PUTPROP (QUOTE inr) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE inr) (MKTIDY (QUOTE (%b /-> (%a /+ %b)))) (QUOTE MLTYPE))
(SETQ EMPTYTOK (GENSYM))
(PUTPROP (QUOTE explode) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE explode) (MKTIDY (QUOTE (token /-> (token list)))) (QUOTE MLTYPE))
(PUTPROP (QUOTE implode) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE implode) (MKTIDY (QUOTE ((token list) /-> token))) (QUOTE MLTYPE))
(PUTPROP (QUOTE mlinfix) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE mlinfix) (MKTIDY (QUOTE (token /-> /.))) (QUOTE MLTYPE))
(PUTPROP (QUOTE mlcinfix) 1 (QUOTE NUMARGS))
(PUTPROP (QUOTE mlcinfix) (MKTIDY (QUOTE (token /-> /.))) (QUOTE MLTYPE))
(DML' gentok 0 GENSYM (/. /-> tok))
(PUTPROP (QUOTE mlin) 2 (QUOTE NUMARGS))
(PUTPROP (QUOTE mlin) (MKTIDY (QUOTE ((token # bool) /-> /.))) (QUOTE MLTYPE))