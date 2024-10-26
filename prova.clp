;(defclass Obres
;    (is-a USER)
;    (pattern-match reactive)
;    (slot Nom
;        (type STRING)
;        (create-accessor read-write))
;;    (multislot Mirada_por ; Optionally, to reference who is looking at the work of art
;;        (type INSTANCE)
;;        (allowed-classes Visitant)  ; It references instances of the class "Visitant"
;;        (create-accessor read-write))
;    (multislot any_de_creacio
;        (type INTEGER)
;        (create-accessor read-write))
;    (multislot autor_quadre
;        (type STRING)
;        (create-accessor read-write))
;    (multislot sala
;        (type INTEGER)
;        (create-accessor read-write))
;    (multislot complexitat
;        (type STRING)
;        (create-accessor read-write))
;    (multislot dimensions
;        (type INTEGER)
;        (create-accessor read-write))
;    (multislot epoca
;        (type STRING)
;        (create-accessor read-write))
;    (multislot estil
;        (type STRING)
;        (create-accessor read-write))
;    (multislot rellevancia
;        (type STRING)
;        (create-accessor read-write))
;    (multislot tematica
;        (type STRING)
;        (create-accessor read-write))
;)

;(definstances instancies_obres
;    ;; Sala 1 - Època Antiga i Medieval
;    (Codi_d_Hammurabi
;        of Obres
;        (any_de_creacio -1792)
;        (epoca "Antiga")
;        (estil "Escultura")
;        (autor_quadre "Desconegut")
;        (sala 1)
;        (tematica "Legal")
;        (dimensions 17775)
;        (complexitat "Mitjana")
;        (rellevancia "Alta")
;    )
;)
;
;(make-instance Codi_d_Hammurabi 
;    of Obres
;    (any_de_creacio -1792)
;    (epoca "Antiga")
;    (estil "Escultura")
;    (autor_quadre "Desconegut")
;    (sala 1)
;    (tematica "Legal")
;    (dimensions 17775)
;    (complexitat "Mitjana")
;    (rellevancia "Alta")
;)

(deftemplate Obres
    (slot nom
        (type STRING))
    (slot any_de_creacio
        (type INTEGER))
    (slot epoca
        (type STRING))
    (slot estil
        (type STRING))
    (slot autor_quadre
        (type STRING))
    (slot sala
        (type INTEGER))
    (slot tematica
        (type STRING))
    (slot dimensions
        (type INTEGER))
    (slot complexitat
        (type STRING))
    (slot rellevancia
        (type STRING))
)

(deftemplate contador
    (slot valor (type INTEGER))
)

(defrule ini
    ;; Sala 1 - Època Antiga i Medieval
    =>
    (assert (mean_t 30))
    (assert (mean_d_t 20))
    (assert (Cantidad_obras 80))
    (assert (weight 5))
    (assert (temps-visita 1))
    (assert (epoca "Antiga"))
    (assert (preferencia-tematica "Legal"))
    (assert (estil "Escultura"))
    (assert (autor-preferit "Desconegut"))
    (assert (contador (valor 0)))
    (assert (Obres 
                (nom "Codi d'Hammurabi")
                (any_de_creacio -1792)
                (epoca "Antiga")
                (estil "Escultura")
                (autor_quadre "Desconegut")
                (sala 1)
                (tematica "Legal")
                (dimensions 17775)
                (complexitat "Mitjana")
                (rellevancia "Alta")
        )
    )

    (assert (Obres 
                (nom "Codi d'Hammurabi2")
                (any_de_creacio -1792)
                (epoca "Antiga")
                (estil "Escultura")
                (autor_quadre "Desconegut")
                (sala 1)
                (tematica "religios")
                (dimensions 17775)
                (complexitat "Mitjana")
                (rellevancia "Alta")
        )
    )

    (assert (Obres 
                (nom "Codi d'Hammurabi3")
                (any_de_creacio -1792)
                (epoca "Antiga")
                (estil "Escultura")
                (autor_quadre "Sanguessa")
                (sala 1)
                (tematica "religios")
                (dimensions 17775)
                (complexitat "Mitjana")
                (rellevancia "Alta")
        )
    )

    (assert (Obres 
                (nom "Codi d'Hammurabi4")
                (any_de_creacio -1792)
                (epoca "Antiga")
                (estil "quadre")
                (autor_quadre "Sanguessa")
                (sala 1)
                (tematica "religios")
                (dimensions 17775)
                (complexitat "Mitjana")
                (rellevancia "Alta")
        )
    )
)



;;     RESTRICCIO MAXIMA      ;;
(defrule matchcuadres_restrictiva1
    (declare (salience 0))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    (test (eq ?au ?auq))
    (test (eq ?t ?ot))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: 0" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva1
    (declare (salience 0))
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf True))
)



;;     RESTRICCIO MAXIMA -1     ;;
(defrule matchcuadres_restrictiva2
    (declare (salience -1))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    (test (eq ?au ?auq))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -1" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva2
    (declare (salience -1))
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf2 True))
)


;;     RESTRICCIO MAXIMA -2     ;;
(defrule matchcuadres_restrictiva3
    (declare (salience -2))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -2" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva3
    (declare (salience -2))
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf3 True))
)


;;     RESTRICCIO MAXIMA -3     ;;
(defrule matchcuadres_restrictiva4
    (declare (salience -3))

    ;   Agafem Obres com a fets
    ?obra <- (Obres (nom ?nom) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))
    (not (mirant ?nom))
    ;   Agafem preferencies
    ?fetep <- (epoca ?e)
    ?fettem <- (preferencia-tematica ?t)
    ?fetestil <- (estil ?esv)
    ?fetaut <- (autor-preferit ?au)

    ;   Agafem Comptador
    ?cont <- (contador (valor ?c))

    ;   Fem Matching amb print per verificar
    (test (eq ?e ?ep))
    =>
    (assert (mirant ?nom))
    (printout t ?nom " ha fet match! Nivell de Restriccio: -3" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

(defrule NoCuadrosSuficientes_restrictiva4
    (declare (salience -3))
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf4 True))
)
;(defrule match_peso
;    ...
;)
