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

(deffacts in-c
    (contador 0)
    (mean_t 30)         ; promedio de tiempo mirando la obra (s)
    (mean_d_t 20)       ; promedio de tiempo de desplazamiento entre el museo (s)
    (Cantidad_obras 80)
    (weight 5)

    (temps-visita 1)
    (epoca "Antiga")
    (preferencia-tematica "Legal")
    (estil "Escultura")
    (autor-preferit "Desconegut")
)

(defrule matchcuadres
    (declare (salience 0))

    ;   Agafem Obres
    ?obra <- (Obres (epoca ?ep) (estil ?es) (autor_quadre ?auq) (tematica ?ot) (rellevancia ?r) (sala ?s))

    ;   Agafem preferencies
    (epoca ?e) (preferencia-tematica ?t) (estil ?esv) (autor-preferit ?au)
    
    ;   Agafem Comptador
    (contador ?c)

    ;   Fem Matching
    (test (eq ?ep ?e))
    (test (eq ?es ?esv))
    (test (eq ?auq ?au))
    (test (eq ?ot ?t))
    =>
    (assert (mirant ?obra))
    (printout t ?obra ": ha fet match")
    (retract (contador ?c))
    (assert (contador (+ ?c 1)))
)

;(defrule match_peso
;    ...
;)


(defrule NoCuadrosSuficientes
    (contador ?c) (weight ?w) (temps-visita ?tv) (mean_t ?mt) (mean_d_t ?mdt)
    (test (< ?c (* (/ (- (* ?tv 3600) ?mdt) ?mt) 100)))
    =>
    (assert (nocuadsuf True))
)