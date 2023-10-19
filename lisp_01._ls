;WELCOME MY SON, WELCOME TO THE MACHINE


(defun c:k ()
  (load "c:/autolisp/lisp_01.lsp")
  (princ)
)


;MADE BY ZATTONI


(defun c:detec (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do circulo verde: ")
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Local_detec"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (devolve_info)
)


(defun c:alar (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do circulo rosa: ")
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Local_alarme"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (devolve_info)
)


;MUDANÇA DE CORES


(defun c:blue ()
  (command "select" "auto" pause)
  (command "chprop" "p" "" "c" "5" "")
)

(defun c:green()
  (command "select" "auto" pause)
  (if (tblsearch "layer" "Contorno")
    (setvar "clayer" "Contorno")
    (progn
      (command "-layer" "_M" "Contorno" "_c" "1" "" "")
      (setvar "clayer" "Contorno")
    )
  )
  (command "chprop" "p" "" "c" "3" "LA" "Contorno" "")
)

(defun c:yellow ()
  (command "select" "auto" pause)
  (command "chprop" "p" "" "c" "2" "")
)

(defun c:red ()
  (command "select" "auto" pause)
  (command "chprop" "p" "" "c" "1" "")
)

(defun c:gray ()
  (guarda_info)
  (command "select" "auto" pause)
  (if (tblsearch "layer" "Layout")
    (setvar "clayer" "Layout")
    (progn
      (command "-layer" "_M" "Layout" "_c" "1" "" "")
      (setvar "clayer" "Layout")
    )
  )
  (command "chprop" "p" "" "c" "8" "LA" "Layout" "")
  (devolve_info)
)


;                                                                                ;

(defun c:v ()
  (setvar "osmode" 4271)
)
                                                                                                                   
(setq SCALE 1)               

(defun c:ESCALA ()

 (setq SCALE (getreal "Escala:"))

)

(defun c:sw()
	(command "dimlinear")
)

(defun c:ss()
	(command "_selectsimilar") 
)

(defun c:cr()
	(command "_.area" "_o")
)


;Atalho para desativar/ativar layers de raios 

(defun c:turnoffplaca()
(command "-layer" "OFF" "Raio Placas" "")
  )

(defun c:turnonplaca()
(command "-layer" "ON" "Raio Placas" "")
  )

(defun c:turnoffhid()
(command "-layer" "OFF" "Raio Hid" "")
  )

(defun c:turnonhid()
(command "-layer" "ON" "Raio Hid" "")
  )

(defun c:turnoffluz()
(command "-layer" "OFF" "Raio Iluminação" "")
  )

(defun c:turnonluz()
(command "-layer" "ON" "Raio Iluminação" "")
  )

(defun c:turnoffext()
(command "-layer" "OFF" "Raio Extintores" "")
  )

(defun c:turnonext()
(command "-layer" "ON" "Raio Extintores" "")
  )

;                                                                                                                                                       ;

(defun c:lockplaca()
(command "-layer" "LO" "Raio Placas" "")
  )

(defun c:unlockplaca()
(command "-layer" "U" "Raio Placas" "")
  )

(defun c:lockhid()
(command "-layer" "LO" "Raio Hid" "")
  )

(defun c:unlockhid()
(command "-layer" "U" "Raio Hid" "")
  )

(defun c:lockluz()
(command "-layer" "LO" "Raio Iluminação" "")
  )

(defun c:unlockluz()
(command "-layer" "U" "Raio Iluminação" "")
  )

(defun c:lockext()
(command "-layer" "LO" "Raio Extintores" "")
  )

(defun c:unlockext()
(command "-layer" "U" "Raio Extintores" "")
  )

;                                                                                                                                                       ;

 ;Insert Luva

(defun c:luva (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da luva: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/luva"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (princ)
  (devolve_info)
)





 ;Insert Registro gaveta

(defun c:registrolat (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do registro gaveta: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/registro_gaveta"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)


 ;Insert Registro gaveta superior

(defun c:valvula_sup (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do registro gaveta (superior): ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/valvula_sup"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Te

(defun c:te (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do te: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/te"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Válvula de retenção (Visão lateral)

(defun c:vrl (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da válvula de retenção (visão lateral): ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/retencao_lateral"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Joelho

(defun c:joelho (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da válvula do joelho: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Curva MF

(defun c:curvamf (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da curva macho fêmea: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/curvamf"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Válvula

(defun c:valvula (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da válvula: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/valvula"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert CAP

(defun c:cap (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da cap: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/cap"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)





 ;Insert Uniao

(defun c:uniao (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da união: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/uniao"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)





 ;Insert Joelho

(defun c:joelho_45 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do joelho: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho_45"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)





 ;Insert Niple

(defun c:niple (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da niple: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/niple"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)



 ;Insert Niple de redução

(defun c:niple_reducao (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do niple de redução: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/niple_reducao"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)



 ;Insert Manometro superior

(defun c:manometro_sup (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do manômetro: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/manometro_sup"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Joelho Acoplamento

(defun c:joelho_acoplamento (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do joelho: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho_acoplamento"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)



 ;Insert Joelho Acoplamento

(defun c:joelho_acoplamento (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do joelho: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho_acoplamento"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)





 ;Insert Joelho superior acoplamento

(defun c:joelho_sup_acoplamento (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do joelho com vista superior com acoplamento: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho_sup_acoplamento"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)



 ;Insert Bucha Redução

(defun c:bucha (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da bucha de redução: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/bucha_reducao"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Manometro

(defun c:manometro (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do manometro: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/manometro"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)




 ;Insert Pressostato

(defun c:pressostato (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do pressostato: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/pressostato"
	   "_s"		     SCALE	       "_non"
	   p1		     pause 
	  )
  (devolve_info)
)



 ;Insert Andre

(defun c:andre (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do André: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/corno"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (devolve_info)
)


;Insert Válvula de retencao (visao superior)

(defun c:vrs (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da válvula de retenção (visão superior): ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/retencao_superior"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)






;Insert Registro (visao superior)

(defun c:registrosup (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do registro (visão superior): ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/registro_superior"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)






;Insert Balao de pressao

(defun c:balao (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do balão de pressão: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/balao_pressao"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)



;Insert Joelho (Visao frontal)

(defun c:joelhofront (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do joelho (visão frontal): ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/joelho_frontal"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)



;Insert Flange

(defun c:flange (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da flange: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/flange"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)



;Insert Registro angular

(defun c:registroangular (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do registro angular: ")
  )
  (if (tblsearch "layer" "conexoes")
    (setvar "clayer" "conexoes")
    (progn
      (command "-layer" "_M" "conexoes" "_c" "1" "" "")
      (setvar "clayer" "conexoes")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "C:/autolisp/blocos/Conexoes/registro_angular"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (devolve_info)
)




;                                                                                                                                                       ;

; Somar comprimento de polylines

(defun c:soma_comprimento (/ comp compt ent i ss)
  (vl-load-com)
  (if (setq ss (ssget '((0 . "ELLIPSE,LWPOLYLINE,POLYLINE,SPLINE,LINE,ARC,CIRCLE"))))
    (progn
        (setq	compt 0.0)
    (repeat (setq i (sslength ss))
            (setq ent (ssname ss (setq i (1- i)))
		  comp (vlax-curve-getDistAtParam ent (vlax-curve-getEndParam ent))
		  compt (+ comp compt)
            )
      )
    (setq compt(/ compt 100))
    (princ (strcat "\nComprimento total: " (rtos compt) " Metros"))
    )
    )
  (princ)
  )


;Set layer contorno

(defun c:B ()
   (if (tblsearch "layer" "Contorno")
    (progn
    (setvar "clayer" "Contorno")
    (command "-layer" "_C" "3" "" "")
    (princ)
    )
    (progn
      (command "-layer" "_M" "Contorno" "_c" "1" "" "")
      (setvar "clayer" "Contorno")
      (command "-layer" "_C" "3" "" "")
      (princ)
    )
  )
 )

 ;Insert Placa E5'

(defun c:e5 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (E5): ")
  )
  (if (tblsearch "layer" "E5")
    (setvar "clayer" "E5")
    (progn
      (command "-layer" "_M" "E5" "_c" "1" "" "")
      (setvar "clayer" "E5")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_E5"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (devolve_info)
)


(defun c:nivel (/ p1)
(guarda_info)
(setvar "osmode" 0)
(setq
  p1 (getpoint "\nEntre com o ponto de inserção da cota de nível: ")
)
(if (tblsearch "layer" "nivel")
  (setvar "clayer" "nivel")
  (progn
    (command "-layer" "_M" "nivel" "_c" "1" "" "")
    (setvar "clayer" "nivel")
  )
)
(command "-insert"	     "c:/autolisp/blocos/cota_nivel"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )  
(explodir)
(devolve_info)  
)


    ;Inserir raio de placa

(defun c:raio (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq p1(getpoint "\Entre com o ponto de inserção do raio: "))
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
 )


  ;Insert Bloco Central do Alarme

(defun c:Central (/ p1)
  (guarda_info)
  (setvar "osmode" 512)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da Central: ")
  )
  (if (tblsearch "layer" "S1")
    (setvar "clayer" "S1")
    (progn
      (command "-layer" "_M" "S1" "_c" "1" "" "")
      (setvar "clayer" "S1")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/bloco_central"
	   "_s"		     SCALE	       "_non"
	   p1		     
	  )
  (devolve_info)
)

					;Insert Placa S2 948x474

(defun c:s2GG (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint
	 "\nEntre com o ponto de inserção da placa (S2 948x474): "
       )
  )
  (if (tblsearch "layer" "S2GG")
    (setvar "clayer" "S2GG")
    (progn
      (command "-layer" "_M" "S2GG" "_c" "1" "" "")
      (setvar "clayer" "S2GG")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"		 "c:/autolisp/blocos/bloco_placa_s2GG"
	   "_s"			 SCALE
	   "_non"		 p1
	   "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "3000")
  (devolve_info)
)





					;Insert Placa S1 948x474

(defun c:s1GG (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint
	 "\nEntre com o ponto de inserção da placa (S1 948x474): "
       )
  )
  (if (tblsearch "layer" "S1GG")
    (setvar "clayer" "S1GG")
    (progn
      (command "-layer" "_M" "S1GG" "_c" "1" "" "")
      (setvar "clayer" "S1GG")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"		 "c:/autolisp/blocos/bloco_placa_s1GG"
	   "_s"			 SCALE
	   "_non"		 p1
	   "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "3000")
  (devolve_info)
)



					;Insert Placa S12 948x474

(defun c:s12GG (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint
	 "\nEntre com o ponto de inserção da placa (S12 948x474): "
       )
  )
  (if (tblsearch "layer" "S12GG")
    (setvar "clayer" "S12GG")
    (progn
      (command "-layer" "_M" "S12GG" "_c" "1" "" "")
      (setvar "clayer" "S12GG")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"		 "c:/autolisp/blocos/bloco_placa_s12GG"
	   "_s"			 SCALE
	   "_non"		 p1
	   "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "3000")
  (devolve_info)
)








                     ;Insert Placa S3 948x474

(defun c:s3GG (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S3 948x474): ")
  )
  (if (tblsearch "layer" "S3GG")
    (setvar "clayer" "S3GG")
    (progn
      (command "-layer" "_M" "S3GG" "_c" "1" "" "")
      (setvar "clayer" "S3GG")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/bloco_placa_s3GG"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "3000")
  (devolve_info)
)






                     ;Insert Placa S12 200x400

(defun c:s12G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S12 200x400): ")
  )
  (if (tblsearch "layer" "S12G")
    (setvar "clayer" "S12G")
    (progn
      (command "-layer" "_M" "S12G" "_c" "1" "" "")
      (setvar "clayer" "S12G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S12_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)

                     ;Insert Placa S1 200x400

(defun c:s1G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S1 200x400): ")
  )
  (if (tblsearch "layer" "S1G")
    (setvar "clayer" "S1G")
    (progn
      (command "-layer" "_M" "S1G" "_c" "1" "" "")
      (setvar "clayer" "S1G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S1_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)



                     ;Insert Placa S2 200x400

(defun c:s2G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S2 200x400): ")
  )
  (if (tblsearch "layer" "S2G")
    (setvar "clayer" "S2G")
    (progn
      (command "-layer" "_M" "S2G" "_c" "1" "" "")
      (setvar "clayer" "S2G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S2_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)




                     ;Insert Placa S3 200x400

(defun c:s3G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S3 200x400): ")
  )
  (if (tblsearch "layer" "S3G")
    (setvar "clayer" "S3G")
    (progn
      (command "-layer" "_M" "S3G" "_c" "1" "" "")
      (setvar "clayer" "S3G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S3_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)






                     ;Insert Placa S8 200x400

(defun c:s8G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S8 200x400): ")
  )
  (if (tblsearch "layer" "S8G")
    (setvar "clayer" "S8G")
    (progn
      (command "-layer" "_M" "S8G" "_c" "1" "" "")
      (setvar "clayer" "S8G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S8_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)



                     ;Insert Placa S9 200x400

(defun c:s9G (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S9 200x400): ")
  )
  (if (tblsearch "layer" "S9G")
    (setvar "clayer" "S9G")
    (progn
      (command "-layer" "_M" "S9G" "_c" "1" "" "")
      (setvar "clayer" "S9G")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Placa_S9_grande"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)


                     ;Insert Placa S1

(defun c:s1 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S1): ")
  )
  (if (tblsearch "layer" "S1")
    (setvar "clayer" "S1")
    (progn
      (command "-layer" "_M" "S1" "_c" "1" "" "")
      (setvar "clayer" "S1")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_S1"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)



		 ;Insert Placa S2

(defun c:s2 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S2): ")
  )
  (if (tblsearch "layer" "S2")
    (setvar "clayer" "S2")
    (progn
      (command "-layer" "_M" "S2" "_c" "1" "" "")
      (setvar "clayer" "S2")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert" "c:/autolisp/Bloco_S2" "_s" SCALE "_non" p1 "0")
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)

                   ;IMPOSTO É ROUBO


					;Insert Bloco Alarme

(defun c:alarme (/ p1)
  (guarda_info)
  (setvar "osmode" 512)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção do Alarme: ")
  )
  (if (tblsearch "layer" "Bloco_hidrante")
    (setvar "clayer" "Bloco_hidrante")
    (progn
      (command "-layer" "_M" "Bloco_hidrante" "_c" "1" "" "")
      (setvar "clayer" "Bloco_hidrante")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/bloco_alarme"
	   "_s"		     SCALE	       "_non"
	   p1		     pause
	  )
  (if (tblsearch "layer" "Raio Hid")
    (setvar "clayer" "Raio Hid")
    (progn
      (command "-layer" "_M" "Raio Hid" "_c" "2" "" "")
      (setvar "clayer" "Raio Hid")
    )
  )
  (command "_circle" p1 "3000")
  (devolve_info)
)

					;Insert Placa S3

(defun c:s3 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S3): ")
  )
  (if (tblsearch "layer" "S3")
    (setvar "clayer" "S3")
    (progn
      (command "-layer" "_M" "S3" "_c" "1" "" "")
      (setvar "clayer" "S3")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_S3"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)

					;insert Placa S8

(defun c:s8 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S8): ")
  )
  (if (tblsearch "layer" "S8")
    (setvar "clayer" "S8")
    (progn
      (command "-layer" "_M" "S8" "_c" "1" "" "")
      (setvar "clayer" "S8")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_S8"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)






					;insert Placa S9

(defun c:s9 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S9): ")
  )
  (if (tblsearch "layer" "S9")
    (setvar "clayer" "S9")
    (progn
      (command "-layer" "_M" "S9" "_c" "1" "" "")
      (setvar "clayer" "S9")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_S9"
	   "_s"		     SCALE	       "_non"
	   p1		     "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)





					;insert Placa S10

(defun c:s10 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S10): "
       )
  )
  (if (tblsearch "layer" "S10")
    (setvar "clayer" "S10")
    (progn
      (command "-layer" "_M" "S10" "_c" "1" "" "")
      (setvar "clayer" "S10")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	      "c:/autolisp/blocos/Bloco_S10"
	   "_s"		      SCALE		 "_non"
	   p1		      "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)


					;insert Placa S11

(defun c:s11 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S11): "
       )
  )
  (if (tblsearch "layer" "S11")
    (setvar "clayer" "S11")
    (progn
      (command "-layer" "_M" "S11" "_c" "1" "" "")
      (setvar "clayer" "S11")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	      "c:/autolisp/blocos/Bloco_S11"
	   "_s"		      SCALE		 "_non"
	   p1		      "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)







					;insert Placa S12

(defun c:s12 (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq
    p1 (getpoint "\nEntre com o ponto de inserção da placa (S12): "
       )
  )
  (if (tblsearch "layer" "S12")
    (setvar "clayer" "S12")
    (progn
      (command "-layer" "_M" "S12" "_c" "1" "" "")
      (setvar "clayer" "S12")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	      "c:/autolisp/blocos/Bloco_S12"
	   "_s"		      SCALE		 "_non"
	   p1		      "0"
	  )
  (if (tblsearch "layer" "Raio Placas")
    (setvar "clayer" "Raio Placas")
    (progn
      (command "-layer" "_M" "Raio Placas" "_c" "2" "" "")
      (setvar "clayer" "Raio Placas")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)








					;insert Seta de Rota de Fuga - Com Rotação a ser escolhida

(defun c:fu (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1 (getpoint
	     "\nEntre com o ponto de inserção da seta e fuga: "
	   )
  )
  (if (tblsearch "layer" "Fuga")
    (setvar "clayer" "Fuga")
    (progn
      (command "-layer" "_M" "Fuga" "_c" "1" "" "")
      (setvar "clayer" "Fuga")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_Fuga"
	   "_s"		       SCALE		   "_non"
	   p1		       pause
	  )
  (devolve_info)
)









					;insert 30 LED - Com Rotação a ser escolhida

(defun c:LE (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1 (getpoint
	     "\nEntre com o ponto de inserção do bloco 30-LED: "
	   )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_30LEDH"
	   "_s"		       SCALE		   "_non"
	   p1		       pause
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)







					;insert 30 LED - Horizontal

(defun c:LH (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco 30-LED (Horizontal): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_30LEDH"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)








					;insert 30 LED - Vertical

(defun c:LV (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco 30-LED (Vertical): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_30LEDV"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "700")
  (devolve_info)
)









					;insert Bloco LED Com a Rotação a ser escolhida

(defun c:Bl (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1 (getpoint
	     "\nEntre com o ponto de inserção do bloco de LED: "
	   )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_LED_C"
	   "_s"		       SCALE		   "_non"
	   p1		       pause
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)








					;insert Bloco LED Virado Para Cima

(defun c:BlC (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de LED (Virado Para Cima): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_LED_C"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)








					;insert Bloco LED Virado Para Baixo

(defun c:BlB (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de LED (Virado Para Baixo): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_LED_B"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)








					;insert Bloco LED Virado Para Esquerda

(defun c:BlE (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de LED (Virado Para Esquerda): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_LED_E"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)









					;insert Bloco LED Virado Para Direita

(defun c:BlD (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de LED (Virado Para Direita): "
	 )
  )
  (if (tblsearch "layer" "LED")
    (setvar "clayer" "LED")
    (progn
      (command "-layer" "_M" "LED" "_c" "1" "" "")
      (setvar "clayer" "LED")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_LED_D"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
	  )
  (if (tblsearch "layer" "Raio Iluminação")
    (setvar "clayer" "Raio Iluminação")
    (progn
      (command "-layer" "_M" "Raio Iluminação" "_c" "1" "" "")
      (setvar "clayer" "Raio Iluminação")
    )
  )
  (command "_circle" p1 "1500")
  (devolve_info)
)









					;Insert Bloco Do Extintor ABC com a Placa E5

(defun c:ABC (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto de inserção do Extintor: ")
  )
  (if (tblsearch "layer" "Extint")
    (setvar "clayer" "Extint")
    (progn
      (command "-layer" "_M" "Extint" "_c" "1" "" "")
      (setvar "clayer" "Extint")
    )
  )
  (command "-insert"	      "c:/autolisp/blocos/Bloco_ABC"
	   "_s"		      SCALE		 "_non"
	   p1		      pause
	  )
  ;(setq re (getint "\nEnter com o raio do extintor (*100): "))
  (setq re 1500)
  (if (tblsearch "layer" "Raio Extintores")
    (setvar "clayer" "Raio Extintores")
    (progn
      (command "-layer" "_M" "Raio Extintores" "_c" "1" "" "")
      (setvar "clayer" "Raio Extintores")
    )
  )
  (command "_circle" p1 re)
  (setq	p2 (getpoint
	     "\nEntre com o ponto de inserção da placa do Extintor: "
	   )
  )
  (if (tblsearch "layer" "E5")
    (setvar "clayer" "E5")
    (progn
      (command "-layer" "_M" "E5" "_c" "1" "" "")
      (setvar "clayer" "E5")
    )
  )
  (command "-insert"	     "c:/autolisp/blocos/Bloco_E5"
	   "_s"		     SCALE	       "_non"
	   p2		     "0"
	  )
  (devolve_info)
)





 
                                  ;EXTINTOR BC


(defun c:BC (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto de inserção do Extintor: ")
  )
  (if (tblsearch "layer" "Extint")
    (setvar "clayer" "Extint")
    (progn
      (command "-layer" "_M" "Extint" "_c" "1" "" "")
      (setvar "clayer" "Extint")
    )
  )
  (command "-insert"	      "c:/autolisp/blocos/Bloco_BC"
	   "_s"		      SCALE		 "_non"
	   p1		      pause
	  )
  (setq re (getint "\nEnter com o raio do extintor (*100): "))
  ;(setq re 2000)
  (if (tblsearch "layer" "Raio Extintores")
    (setvar "clayer" "Raio Extintores")
    (progn
      (command "-layer" "_M" "Raio Extintores" "_c" "1" "" "")
      (setvar "clayer" "Raio Extintores")
    )
  )
  (command "_circle" p1 re)
  (setq	p2 (getpoint
	     "\nEntre com o ponto de inserção da placa do Extintor: "
	   )
  )
  (if (tblsearch "layer" "E5")
    (setvar "clayer" "E5")
    (progn
      (command "-layer" "_M" "E5" "_c" "1" "" "")
      (setvar "clayer" "E5")
    )
  )
  (command "-insert"	     "c:/autolisp/blocos/Bloco_E5"
	   "_s"		     SCALE	       "_non"
	   p2		     "0"
	  )
  (devolve_info)
)


					;Insert Bloco Do Extintor BC-CO2 com a Placa E5

(defun c:co2 (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto de inserção do Extintor: ")
  )
  (if (tblsearch "layer" "Extint")
    (setvar "clayer" "Extint")
    (progn
      (command "-layer" "_M" "Extint" "_c" "1" "" "")
      (setvar "clayer" "Extint")
    )
  )
  (command "-insert"	       "c:/autolisp/blocos/Bloco_BC_CO2"
	   "_s"		       SCALE		   "_non"
	   p1		       pause
	  )
  (setq re (getint "\nEnter com o raio do extintor (*100): "))
  (if (tblsearch "layer" "Raio Extintores")
    (setvar "clayer" "Raio Extintores")
    (progn
      (command "-layer" "_M" "Raio Extintores" "_c" "1" "" "")
      (setvar "clayer" "Raio Extintores")
    )
  )
  (command "_circle" p1 re)
  (setq	p2 (getpoint
	     "\nEntre com o ponto de inserção da placa do Extintor: "
	   )
  )
  (if (tblsearch "layer" "E5")
    (setvar "clayer" "E5")
    (progn
      (command "-layer" "_M" "E5" "_c" "1" "" "")
      (setvar "clayer" "E5")
    )
  )
  (command "-insert"	     "c:/autolisp/blocos/Bloco_E5"
	   "_s"		     SCALE	       "_non"
	   p2		     "0"
	  )
  (devolve_info)
)

					;Insert Bloco Do Hidrante

(defun c:hid ()
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 512)
  (setq	p1 (getpoint "\nEntre com o ponto de inserção do Hidrante: ")
  )
  (initget 1 "Simples Duplo S D")
  (setq tipo (getkword "Simples ou duplo? <S/D>: "))
  (initget 1 "Interno Externo I E")
  (setq onde (getkword "Externo ou Interno? <E/I>: "))
  (if (tblsearch "layer" "Bloco_hidrante")
    (setvar "clayer" "Bloco_hidrante")
    (progn
      (command "-layer" "_M" "Bloco_hidrante" "_c" "1" "" "")
      (setvar "clayer" "Bloco_hidrante")
    )
  )
  (if (or (= tipo "Simples") (= tipo "S"))
    (progn
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_Hidrante_Simples"
	       "_s"			SCALE
	       "_non"			p1
	       pause
	      )
      (if (or (= onde "Externo") (= onde "E"))
	(progn
	  (if (tblsearch "layer" "Etiqueta_Hid")
	    (setvar "clayer" "Etiqueta_Hid")
	    (progn
	      (command "-layer" "_M" "Etiqueta_Hid" "_c" "1" "" "")
	      (setvar "clayer" "Etiqueta_Hid")
	    )
	  )
	  (command
	    "-insert"
	    "c:/autolisp/blocos/Etiqueta_Hidrante_Externo_Simples"
	    "_s"
	    SCALE
	    "_non"
	    pause
	    ""
	   )
	  (explodir)
	  (if (tblsearch "layer" "Raio Hid")
	    (setvar "clayer" "Raio Hid")
	    (progn
	      (command "-layer" "_M" "Raio Hid" "_c" "2" "" "")
	      (setvar "clayer" "Raio Hid")
	    )
	  )
	  (command "_circle" p1 6000)
	)
	(progn
	  (if (tblsearch "layer" "Etiqueta_Hid")
	    (setvar "clayer" "Etiqueta_Hid")
	    (progn
	      (command "-layer" "_M" "Etiqueta_Hid" "_c" "1" "" "")
	      (setvar "clayer" "Etiqueta_Hid")
	    )
	  )
	  (command
	    "-insert"
	    "c:/autolisp/blocos/Etiqueta_Hidrante_Simples_Interno"
	    "_s"
	    SCALE
	    "_non"
	    pause
	    ""
	   )
	  (explodir)
	  (if (tblsearch "layer" "Raio Hid")
	    (setvar "clayer" "Raio Hid")
	    (progn
	      (command "-layer" "_M" "Raio Hid" "_c" "2" "" "")
	      (setvar "clayer" "Raio Hid")
	    )
	  )
	  (command "_circle" p1 3000)
	)
      )
    )
    (progn
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_Hidrante_Duplo"
	       "_s"		       SCALE
	       "_non"		       p1
	       pause
	      )
      (if (or (= onde "Externo") (= onde "E"))
	(progn
	  (setvar "clayer" "Etiqueta_Hid")
	  (command
	    "-insert"
	    "c:/autolisp/blocos/Etiqueta_Hidrante_Duplo_Externo"
	    "_s"			  SCALE
	    "_non"			  pause
	    ""
	   )
	  (explodir)
	  (if (tblsearch "layer" "Raio Hid")
	    (setvar "clayer" "Raio Hid")
	    (progn
	      (command "-layer" "_M" "Raio Hid" "_c" "2" "" "")
	      (setvar "clayer" "Raio Hid")
	    )
	  )
	  (command "_circle" p1 6000)
	)
	(progn
	  (setvar "clayer" "Etiqueta_Hid")
	  (command
	    "-insert"
	    "c:/autolisp/blocos/Etiqueta_Hidrante_Duplo_Interno"
	    "_s"			  SCALE
	    "_non"			  pause
	    ""
	   )
	  (explodir)
	  (if (tblsearch "layer" "Raio Hid")
	    (setvar "clayer" "Raio Hid")
	    (progn
	      (command "-layer" "_M" "Raio Hid" "_c" "2" "" "")
	      (setvar "clayer" "Raio Hid")
	    )
	  )
	  (command "_circle" p1 3000)
	)
      )
    )
  )
  (devolve_info)
  (princ)
)

					;Insert Bloco Detecção

(defun c:detector (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto do bloco do detector: ")
  )
  (if (tblsearch "layer" "Detecção")
    (setvar "clayer" "Detecção")
    (progn
      (command "-layer" "_M" "Detecção" "_c" "1" "" "")
      (setvar "clayer" "Detecção")
    )
  )
  (command "-insert"	       "c:/autolisp/blocos/Bloco_detector"
	   "_s"		       SCALE		   "_non"
	   p1		       "0"
  )
  (devolve_info)
)

					;Insert Bloco Aéreas

(defun c:aerea (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto do bloco 'Aerea': ")
  )
  (if (tblsearch "layer" "Aérea")
    (setvar "clayer" "Aérea")
    (progn
      (command "-layer" "_M" "Aérea" "_c" "1" "" "")
      (setvar "clayer" "Aérea")
    )
  )
  (command "-insert"	       "c:/autolisp/blocos/Bloco_Aerea"
	   "_s"		       SCALE		   "_non"
	   p1		       pause
	  )
  (devolve_info)
  (explodir)
)

					;Insert Hatch Example Área Fria

(defun c:Haex (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto do bloco: ")
  )
  (if (tblsearch "layer" "Aérea")
    (setvar "clayer" "Aérea")
    (progn
      (command "-layer" "_M" "Aérea" "_c" "1" "" "")
      (setvar "clayer" "Aérea")
    )
  )
  (command "-insert"	      "c:/autolisp/blocos/Hatch_Ref"
	   "_s"		      "1"		 "_non"
	   p1		      ""
	  )
  (explodir)
  (devolve_info)
)

					;Insert Hatch Example Implantação

(defun c:Haeximp (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1 (getpoint "\nEntre com o ponto do bloco: ")
  )
  (if (tblsearch "layer" "Aérea")
    (setvar "clayer" "Aérea")
    (progn
      (command "-layer" "_M" "Aérea" "_c" "1" "" "")
      (setvar "clayer" "Aérea")
    )
  )
  (command "-insert"	      "c:/autolisp/blocos/Hatch_Imp"
	   "_s"		      "1"		 "_non"
	   p1		      ""
	  )
  (explodir)
  (devolve_info)
)





					;insert Porta

(defun c:PO (/ p1 tam_por lado)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setq	p1 (getpoint "\nEntre com o ponto de inserção da porta: ")
  )
  (initget 1 "60 70 80 90 100 110 120")
  (setq tam_por (getkword "\nEntre com o tamanho da porta"))
  (initget 1 "E D")
  (setq lado (getkword "\nEntre com o lado da porta <E/D>: "))
  (if (tblsearch "layer" "Portas_bloco")
    (setvar "clayer" "Portas_bloco")
    (progn
      (command "-layer" "_M" "Portas_bloco" "_c" "253" "" "")
      (setvar "clayer" "Portas_bloco")
    )
  )
  (setvar "cecolor" "bylayer")


  (if (= tam_por "60")
    (if	(= lado "E")
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaE60"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaD60"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )

    )
  )

  (if (= tam_por "70")
    (if	(= lado "E")
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaE70"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaD70"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )

    )
  )

  (if (= tam_por "80")
    (if	(= lado "E")
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaE80"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaD80"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )

    )
  )

  (if (= tam_por "90")
    (if	(= lado "E")
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaE90"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )
      (command "-insert"	    "c:/autolisp/blocos/Bloco_PortaD90"
	       "_s"		    "1"
	       "_non"		    p1
	       pause
	      )

    )
  )

  (if (= tam_por "100")
    (if	(= lado "E")
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaE100"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaD100"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )

    )
  )

  (if (= tam_por "110")
    (if	(= lado "E")
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaE110"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaD110"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )

    )
  )

  (if (= tam_por "120")
    (if	(= lado "E")
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaE120"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )
      (command "-insert"
	       "c:/autolisp/blocos/Bloco_PortaD120"
	       "_s"		     "1"
	       "_non"		     p1
	       pause
	      )

    )
  )

  (explodir)

  (devolve_info)
  (princ)
)

(defun explodir () (command "_explode" "l"))

					;Inserir Seta escada

(defun c:seta ()
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setq p1 (getpoint "\nEntre com o ponto de inserção: "))
  (if (tblsearch "layer" "Parede")
    (setvar "clayer" "Parede")
    (progn
      (command "-layer" "_M" "Setas_bloco" "_c" "7" "" "")
      (setvar "clayer" "Parede")
    )
  )
  (command "-insert"	      "c:/autolisp/blocos/Bloco_seta"
	   "_s"		      "1"		 "_non"
	   p1		      pause
	  )
  (explodir)

  (initget 1 "S D")
  (setq orient (getkword "\nEntre com a orientação: <S/D>"))
  (if (= orient "S")
    (command "-insert"	       "c:/autolisp/blocos/Letra_S"
	     "_s"	       "1"		 "_non"
	     pause	       ""
	    )
    (command "-insert"	       "c:/autolisp/blocos/Letra_D"
	     "_s"	       "1"		 "_non"
	     pause	       ""
	    )
  )
  (explodir)
  (devolve_info)
  (princ)
)

					;insert Legenda da Escada

(defun c:legenda (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção da legenda da escada: "
	 )
  )
  (if (tblsearch "layer" "Legenda")
    (setvar "clayer" "Legenda")
    (progn
      (command "-layer" "_M" "Legenda" "_c" "1" "" "")
      (setvar "clayer" "Legenda")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Legenda_escada"
	   "_s"		       "1"		   "_non"
	   p1		       pause
	  )
  (explodir)
  (devolve_info)
)

					;insert Bloco Acesso (Planta de Risco)

(defun c:blac (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de acesso: "
	 )
  )
  (if (tblsearch "layer" "Bloco_acesso")
    (setvar "clayer" "Bloco_acesso")
    (progn
      (command "-layer" "_M" "Bloco_acesso" "_c" "1" "" "")
      (setvar "clayer" "Bloco_acesso")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_Acesso"
	   "_s"		       "1"		   "_non"
	   p1		       pause
	  )
  (devolve_info)
)


					;insert Bloco H (Planta de Risco)

(defun c:blh (/ p1)
  (guarda_info)
  (setvar "cecolor" "bylayer")
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de hidrante: "
	 )
  )
  (if (tblsearch "layer" "Bloco_H")
    (setvar "clayer" "Bloco_H")
    (progn
      (command "-layer" "_M" "Bloco_H" "_c" "1" "" "")
      (setvar "clayer" "Bloco_H")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	     "c:/autolisp/blocos/Bloco_H"
	   "_s"		     "1"	       "_non"
	   p1		     "0"
	  )
  (devolve_info)
)

					;insert Bloco Escada (Planta de Risco)

(defun c:bles (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setvar "cecolor" "bylayer")
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de escada (Planta de Risco): "
	 )
  )
  (if (tblsearch "layer" "Bloco_escada")
    (setvar "clayer" "Bloco_escada")
    (progn
      (command "-layer" "_M" "Bloco_escada" "_c" "1" "" "")
      (setvar "clayer" "Bloco_escada")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"	       "c:/autolisp/blocos/Bloco_escada"
	   "_s"		       "1"		   "_non"
	   p1		       "0"
	  )
  (devolve_info)
)

					;insert Bloco Escada (Planta de Risco)

(defun c:blres (/ p1)
  (guarda_info)
  (setvar "osmode" 0)
  (setq	p1
	 (getpoint
	   "\nEntre com o ponto de inserção do bloco de Reserva de Incêndio (Planta de Risco): "
	 )
  )
  (if (tblsearch "layer" "Bloco_Reserva")
    (setvar "clayer" "Bloco_Reserva")
    (progn
      (command "-layer" "_M" "Bloco_Reserva" "_c" "1" "" "")
      (setvar "clayer" "Bloco_Reserva")
    )
  )
  (setvar "cecolor" "bylayer")
  (command "-insert"		"c:/autolisp/blocos/Bloco_Reserva"
	   "_s"			"1"
	   "_non"		p1
	   "0"
	  )
  (devolve_info)
)



					;Guarda informacoes
(defun guarda_info ()
  (setq	laymo	(getvar "clayer")
	colormo	(getvar "cecolor")
	osmo	(getvar "osmode")
	decho   (getvar "cmdecho")
	blip    (getvar "blipmode")
	high    (getvar "HIGHLIGHT")
  )
)

					;Devolve informacoes
(defun devolve_info ()
  (setvar "clayer" laymo)
  (setvar "cecolor" colormo)
  (setvar "osmode" osmo)
  (setvar "cmdecho" decho)
  (setvar "blipmode" blip)
  (setvar "HIGHLIGHT" high)
)


(defun c:parx (/ #cont #dist pt1 pt2 #agl1 #ln1 #ln2 #ln2b #ln2a)
  (setvar "cmdecho" 0)
  (setq #cont 0)
  (if (not #esp)
    (setq #esp 0.15)
    )
  (setq #espa (getdist (strcat "\nEspessura <" (rtos #esp) ">: ")))
  (if #espa
    (setq #esp #espa)
    )
  (setq #dist (/ #esp 2))
  (setq	pt1 (getpoint "\nInicio: ")
	pt2 (getpoint pt1 "\nPonto: ")
	)
  (while (/= pt2 nil)
    (setq #agl1 (angle pt1 pt2))
    (command ".line"
	     (polar pt1 (+ #agl1 1.5707963) #dist)
	     (polar pt2 (+ #agl1 1.5707963) #dist)
	     ""
	     )
    (if	(= #cont 0)
      (setq #ln1 (entlast))
      (progn
	(setq #ln2 #ln1
	      #ln1 (entlast)
	      )
	(arrmt #ln1 #ln2)
	)
      )
    (command ".line"
	     (polar pt1 (- #agl1 1.5707963) #dist)
	     (polar pt2 (- #agl1 1.5707963) #dist)
	     ""
	     )
    (if	(= #cont 0)
      (setq #ln2a (entlast))
      (progn
	(setq #ln2b #ln2a
	      #ln2a (entlast)
	      )
	(arrmt #ln2a #ln2b)
	)
      )
    (setq pt1	pt2
	  pt2	(getpoint pt1 "\nPonto: ")
	  #cont	(1+ #cont)
	  )
    )
  (princ)
  )
(defun arrmt (la lb)
  (setq	pt3 (inters
	      (cdr (assoc 10 (entget la)))
	      (cdr (assoc 11 (entget la)))
	      (cdr (assoc 10 (entget lb)))
	      (cdr (assoc 11 (entget lb)))
	      nil
	      )
	)
  (command ".change" la "" pt3 ".change" lb "" pt3)
  (princ)
  )


					;Detalhe


					; Global variables: s#v, olderr.
(prompt "\nLoading functions")
					; details error function
(defun deterr (S / A L)
  (if (/= S "Function cancelled")
    (princ (strcat "\nError: " S))
  )
  (command nil)
  (command ".UNDO" "B")
  (foreach A s#v
    (if	(= (car A) "CLAYER")
      (command "LAYER" "S" (cadr A) "")
      (setvar (car A) (cadr A))
    )
  )
  (setq	*error*	olderr
	s#v	nil
	olderr	nil
  )
  (princ)
)
(princ ".")
					; sscross function
(defun sscross (/ S1 S2)
  (setq	S1 (ssget "C" P2 P3)
	S2 (ssget "W" P2 P3)
  )
  (if (/= (sslength S1) (sslength S2))
    (progn (command ".SELECT" S1 "R" S2 "") (ssget "p"))
  )					; if
)
(princ ".")
					; explode function
(setq osmo (getvar "osmode"))
(defun explode (EN / A C E I L R S E1 E2 E3 S1 S2)
  (setq S2 (ssadd))
  (while (setq EN (entnext EN))
    (setq E  (entget EN)
	  ET (cdr (assoc 0 E))
	  E1 (cdr (assoc 41 E))
	  E2 (cdr (assoc 42 E))
	  E3 (cdr (assoc 43 E))
    )
    (if	(= HL 1)
      (redraw EN 3)
    )
    (cond
      ((= ET "INSERT")
       (if (= (abs E1) (abs E2) (abs E3))
	 (if (or (< E1 0) (< E2 0) (< E3 0))
	   (progn
	     (setq A (entlast)
		   C (cdr (assoc 10 E))
		   I (cdr (assoc 2 E))
		   L (cdr (assoc 50 E))
		   R (car C)
		   S (cadr C)
	     )
	     (entdel EN)
	     (setq S1 (ssadd))
	     (command ".INSERT" (strcat "*" I) C (abs E1) 0)
	     (while (setq A (entnext A)) (setq S1 (ssadd A S1)))
	     (if (< E1 0)
	       (command ".MIRROR" S1 "" C (list R (+ 10 S)) "Y")
	     )
	     (if (< E2 0)
	       (command ".MIRROR" S1 "" C (list (+ 10 R) S) "Y")
	     )
	     (if (/= L 0)
	       (command ".ROTATE" S1 "" C (* (/ 180 pi) L))
	     )
	   )
	   (command ".EXPLODE" EN)
	 )
	 (ssadd EN S2)
       )
      )					; if
      ((member ET '("POLYLINE" "DIMENSION"))
       (command ".EXPLODE" EN)
      )
      ((ssadd EN S2))
    )					; cond
  )					; while
  (setq S1 (ssget "C" P2 P3))
  (command ".ERASE" S2 "R" S1 "")
)
(princ ".")
					; id function
(defun id (E / EN ET)
  (setq	EN (cdr (assoc -1 E))
	ET (cdr (assoc 0 E))
  )
  (if (= ET "ARC")
    (list EN ET (cdr (assoc 50 E)) (cdr (assoc 51 E)))
    (list EN ET)
  )					; if
)
(princ ".")
					; trim output function
(defun op (EN ET)
  (if
    (not
      (and (<= (- (car P2) 1E-6) (car ET) (+ (car P3) 1E-6))
	   (<= (- (cadr P2) 1E-6) (cadr ET) (+ (cadr P3) 1E-6))
      )
    )
     (progn (command (list EN ET)) T)
  )					; if
)
(princ ".")
					; trim function
(defun trim (/ I L EN ET EA SA S1 TM E C R D90 D270)
  (while OK
    (setq OK nil
	  I  0
	  S1 (sscross)
	  L  (if S1
	       (sslength S1)
	       0
	     )
    )
    (if	(> L 0)
      (command ".TRIM" C2 "")
    )
    (repeat L
      (setq EN (ssname S1 I)
	    E  (entget EN)
	    ET (cdr (assoc 0 E))
	    I  (1+ I)
      )
      (if (not (member (id E) TM))
	(progn (setq TM (cons (id E) TM))
	       (cond
		 ((= ET "LINE")
		  (op EN (cdr (assoc 10 E)))
		  (op EN (cdr (assoc 11 E)))
		 )
		 ((= ET "CIRCLE")
		  (setq	C  (cdr (assoc 10 E))
			R  (cdr (assoc 40 E))
			OK T
		  )
		  (cond
		    ((op EN (list (+ R (car C)) (+ 0.0 (cadr C)))))
		    ((op EN (list (+ 0.0 (car C)) (+ R (cadr C)))))
		    ((op EN (list (+ (- R) (car C)) (+ 0.0 (cadr C)))))
		    ((op EN (list (+ 0.0 (car C)) (+ (- R) (cadr C)))))
		  )
		 )			; cond
		 ((= ET "ARC")
		  (setq	C    (cdr (assoc 10 E))
			R    (cdr (assoc 40 E))
			SA   (cdr (assoc 50 E))
			EA   (cdr (assoc 51 E))
			OK   T
			D90  (/ pi 2)
			D270 (* pi 1.5)
		  )
		  (if (> SA EA)
		    (setq EA (+ EA (* pi 2)))
		  )
		  (cond
		    ((op EN (polar C SA R)))
		    ((op EN (polar C EA R)))
		    ((or (<= SA 0.0 EA) (<= SA (* pi 2) EA))
		     (op EN (polar C 0.0 R))
		    )
		    ((or (<= SA D90 EA) (<= SA 0.0 EA))
		     (op EN (polar C D270 R))
		    )
		    ((or (<= SA pi EA) (<= SA (* pi 3) EA))
		     (op EN (polar C pi R))
		    )
		    ((or (<= SA D270 EA) (<= SA (* pi 3.5) EA))
		     (op EN (polar C D270 R))
		    )
		  )
		 )			; cond
	       )
	)				; cond
      )
    )					; if
    (if	(> L 0)
      (command "")
    )
  )					; while
)
(princ ".")
					; main program
(defun C:DETAIL
       (/ A E I L R DT1 EN ET HL OK TM C1 C2 S1 P0 P1 P2 P3 P4 P5)
  (guarda_info)
  (setvar "cmdecho" 0)
  (setq st (tblsearch "style" "romans"))
  (if (= st nil)
    (command "style" "romans" "romans" "0.0" "1.0" "0.0" "n" "n" "n")
  )
  (setq st (strcase (cdr (assoc '3 (tblsearch "style" "romans")))))
  (if (= st "ROMANS")
    (setvar "textstyle" "romans")
    (command "style" "romans" "romans" "0.0" "1.0" "0.0" "n" "n" "n")
  )
  (setq tsz (cdr (assoc '40 (tblsearch "style" "romans"))))
  (if (/= tsz 0.0)
    (command "style" "romans" "romans" "0.0" "1.0" "0.0" "n" "n" "n")
  )
  (if (= txtsz nil)
    (setq txtsz 0.1875)
  )
  (setq
    txtsz1 (getdist
	     (strcat "\nEnter Desired Text Size <" (rtos txtsz) ">: ")
	   )
  )
  (if (/= txtsz1 nil)
    (setq txtsz txtsz1)
  )
  (setq ds (/ txtsz 0.1875))
  (setq	DT1	(* ds (getvar "DIMTXT"))
	HL	(getvar "HIGHLIGHT")
	olderr	*error*
	*error*	deterr
	A	'("HIGHLIGHT" "BLIPMODE" "OSMODE" "CLAYER" "ORTHOMODE")
	s#v	(mapcar '(lambda (L) (list L (getvar L))) A)
  )
  (setvar "CMDECHO" 0)
  (setvar "BLIPMODE" 0)
  (setvar "OSMODE" 0)
  (command ".UNDO" "M" ".LAYER" "S" "0" "ON" "0" "")
  (while (= OK nil)
    (initget 1)
    (setq P1 (getpoint "\nDigitize Detail Centerpoint: "))
    (setq clay (getvar "clayer"))
    (setq tlay (tblsearch "layer" "phan"))
    (if	(= tlay "phan")
      (setvar "clayer" "phan")
      (command "layer" "m" "phan" "c" "6" "" "lt" "phantom" "" "")
    )
    (princ "\nEncircle Details: ")
    (command ".CIRCLE" P1 PAUSE)
    (setvar "clayer" clay)
    (setq C1 (entlast)
	  R  (cdr (assoc 40 (entget C1)))
	  L  (sqrt (* (expt R 2) 2))
	  P2 (append (list (+ (car P1) R) (cadr P1)))
	  A  (angle P2 P1)
	  P2 (polar P1 (* A 1.25) L)
	  P3 (polar P1 (* A 0.25) L)
	  S1 (ssget "C" P2 P3)
    )
    (if	(> (sslength S1) 1)
      (setq OK T)
      (progn (setq OK nil)
	     (princ "\nNothing selected!")
	     (command ".ERASE" C1 "")
      )
    )					; if
  )					; while
  (setvar "ORTHOMODE" 0)
  (princ "\nLocate Details: ")
  (command ".COPY" C1 "" P1 PAUSE)
  (setq	P4 (getvar "LASTPOINT")
	C2 (entlast)
  )
  (setvar "HIGHLIGHT" 0)
  (command ".COPY" S1 "" P1 P4)
  (setvar "HIGHLIGHT" HL)
  (setq	P2 (polar P4 (* A 1.25) L)
	P3 (polar P4 (* A 0.25) L)
	EN C2
  )
  (princ "\nProcessing data...please wait.")
  (explode EN)
  (trim)
  (setq	S1 (sscross)
	L  (if S1
	     (sslength S1)
	     0
	   )
	I  0
  )
  (repeat L
    (setq EN (ssname S1 I)
	  E  (entget EN)
	  ET (cdr (assoc 0 E))
	  I  (1+ I)
    )
    (if	(member ET '("LINE" "CIRCLE" "ARC"))
      (entdel EN)
    )
  )
  ;(setvar "HIGHLIGHT" 0)
  (initget 6)
  (if (setq HL (getreal "\nScale factor <1.0000>: "))
    (command ".SCALE" "C" P2 P3 "" P4 HL)
  )
  (setq	P3 (polar P4 (* A 1.5) (cdr (assoc 40 (entget C2))))
	P4 (polar P3 (* A 1.5) (* DT1 2))
	P5 (polar P4 (* A 1.5) (* ds 0.350))
	TM (strcase (strcat "DETAIL " (getstring " Detail: ")))
	ET (strcat "SCALE: " (getstring " Scale: "))
  )
  (initget 1)
  (setq P2 (getpoint P1 "\nLocate Leader Text: "))
  (if (or (<= (angle P1 P2) (/ A 2)) (>= (angle P1 P2) (* A 1.5)))
    (progn (setq I  "ML"
		 P3 (polar P2 0.0 (* DT1 2))
		 P0 (polar P2 0.0 (* DT1 2.5))
	   )
    )
    (progn (setq I  "MR"
		 P3 (polar P2 A (* DT1 2))
		 P0 (polar P2 A (* DT1 2.5))
	   )
    )
  )					; if
  (setq tlay (tblsearch "layer" "dim"))
  (if (= tlay "DIM")
    (setvar "clayer" "dim")
    (command "layer" "m" "dim" "c" "3" "" "lt" "continuous" "" "")
  )
  (command ".PLINE"	 P1	P2     P3     ""     ".TRIM"
	   C1	  ""	 P1	""     ".TEXT"	     I	    P0
	   txtsz  "0"	 TM
	  )
  (setq st (tblsearch "style" "block"))
  (if (= st nil)
    (command "style" "block" "romanc" "0.0" "0.8" "0.0"	"n" "n"	"n")
  )
  (setq st (strcase (cdr (assoc '3 (tblsearch "style" "block")))))
  (if (= st "BLOCK")
    (setvar "textstyle" "block")
    (command "style" "block" "romanc" "0.0" "0.8" "0.0"	"n" "n"	"n")
  )
  (setq tsz (cdr (assoc '40 (tblsearch "style" "block"))))
  (if (/= tsz 0.0)
    (command "style" "block" "romanc" "0.0" "0.8" "0.0"	"n" "n"	"n")
  )
  (command ".TEXT" "M" P4 (* ds 0.250) "0" (strcat "%%U" TM))
  (command "textstyle" "romans")
  (command ".TEXT" "M" P5 txtsz "0" ET)
  (setvar "clayer" clay)
  (foreach A s#v
    (if	(= (car A) "CLAYER")
      (command ".LAYER" "S" (cadr A) "")
      (setvar (car A) (cadr A))
    )
  )
  (setq	*error*	olderr
	s#v	nil
	olderr	nil
  )
  (setvar "osmode" osmo)
  (devolve_info)
  (princ)
)					; end program
(princ "loaded.")
(princ)



					;Made by Zattoni!
                                        ;iMPOSTO É ROUBO

(prompt "\nComandos Carregados com Sucesso! - Made by Victor Zattoni")
(princ)
