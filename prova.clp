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
                (tematica "Legal")
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
                (autor_quadre "Desconegut")
                (sala 1)
                (tematica "religios")
                (dimensions 17775)
                (complexitat "Mitjana")
                (rellevancia "Alta")
        )
    )
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
    (printout t ?nom " ha fet match!" crlf)
    (modify ?cont (valor (+ ?c 1)))
)

;(defrule match_peso
;    ...
;)


(defrule NoCuadrosSuficientes
    ?cont <- (contador (valor ?c)) 
    ?factw <- (weight ?w) 
    ?facttv <- (temps-visita ?tv) 
    ?factmt <- (mean_t ?mt) 
    ?factmdt <- (mean_d_t ?mdt)
    
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf True))
)