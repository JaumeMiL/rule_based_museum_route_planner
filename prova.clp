(defclass Obres
    (is-a USER)
    (pattern-match reactive)
    (slot Nom
        (type STRING)
        (create-accessor read-write))
;    (multislot Mirada_por ; Optionally, to reference who is looking at the work of art
;        (type INSTANCE)
;        (allowed-classes Visitant)  ; It references instances of the class "Visitant"
;        (create-accessor read-write))
    (multislot any_de_creacio
        (type INTEGER)
        (create-accessor read-write))
    (multislot autor_quadre
        (type STRING)
        (create-accessor read-write))
    (multislot sala
        (type INTEGER)
        (create-accessor read-write))
    (multislot complexitat
        (type STRING)
        (create-accessor read-write))
    (multislot dimensions
        (type INTEGER)
        (create-accessor read-write))
    (multislot epoca
        (type STRING)
        (create-accessor read-write))
    (multislot estil
        (type STRING)
        (create-accessor read-write))
    (multislot rellevancia
        (type STRING)
        (create-accessor read-write))
    (multislot tematica
        (type STRING)
        (create-accessor read-write))
)

(definstances instancies_obres
    ;; Sala 1 - Època Antiga i Medieval
    (Codi_d_Hammurabi
        of Obres
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

(make-instance Codi_d_Hammurabi 
    of Obres
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

;(defrule in-c
;    (declare (salience 0))
;    =>
;    (assert (contador 0))
;    (assert (mean_t 30))         ; promedio de tiempo mirando la obra (s)
;    (assert (mean_d_t 20))       ; promedio de tiempo de desplazamiento entre el museo (s)
;    (assert (Cantidad_obras 80))
;    (assert (weight 5))
;    (assert (temps-visita 1))
;    (assert (epoca "Antiga"))
;    (assert (preferencia-tematica "Legal"))
;    (assert (estil "Escultura"))
;    (assert (autor-preferit "Desconegut"))
;)

(defrule matchcuadres
    (declare (salience 0))

    ;   Agafem Obres
    ?obra <- (object (is-a Obres) (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))

    ;   Agafem preferencies
    ?fetep <- (epoca ?e) 
    ?fettem <- (preferencia-tematica ?t) 
    ?fetestil <- (estil ?esv) 
    ?fetaut <- (autor-preferit ?au)
    
    ;   Agafem Comptador
    ?cont <- (contador ?c)

    ;   Fem Matching
    (test (printout t "Comparando epoca: " ?e " con " ?ep crlf))
    (test (printout t "Comparando estil: " ?esv " con " ?es crlf))
    (test (printout t "Comparando autor: " ?au " con " ?auq crlf))
    (test (printout t "Comparando tematica: " ?t " con " ?ot crlf))

    (test (eq ?e ?ep))
    (test (eq ?esv ?es))
    (test (eq ?au ?auq))
    (test (eq ?t ?ot))
    =>
    (assert (mirant ?obra))
    (printout t ?obra ": ha fet match")
    (retract ?cont)
    (assert (contador (+ ?c 1)))
)

;(defrule match_peso
;    ...
;)


;(defrule NoCuadrosSuficientes
;    (contador ?c) (weight ?w) (temps-visita ?tv) (mean_t ?mt) (mean_d_t ?mdt)
;    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
;    =>
;    (assert (nocuadsuf True))
;)