;;; ---------------------------------------------------------
;;; ontologia_practica.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia_practica.ttl
;;; :Date 11/10/2024 18:04:18
;;; ---------------------------------------------------------
;;; ontologia_practica.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia_practica.ttl
;;; :Date 11/10/2024 18:04:18

(defclass Visitant
    (is-a USER)
    (pattern-match reactive)
    (multislot Mira_a  ; This is the "mira-a" relationship
        (type INSTANCE)
        (allowed-classes Obres)  ; It references instances of the class "Obres"
        (create-accessor read-write))
    (multislot autor_pref
        (type STRING)
        (create-accessor read-write))
    (multislot epoca_pref
        (type STRING)
        (create-accessor read-write))
    (multislot estil_pref
        (type STRING)
        (create-accessor read-write))
    (multislot primer_cop_o_no
        (type STRING)
        (create-accessor read-write))
    (multislot tematica_pref
        (type STRING)
        (create-accessor read-write))
)

(defclass Obres
    (is-a USER)
    (pattern-match reactive)
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
    (multislot sala
        (type INTEGER)
        (create-accessor read-write))
    (multislot tematica
        (type STRING)
        (create-accessor read-write))
)

(defclass Visitant_acompanyat
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot tipus_de_grup
        (type STRING)
        (create-accessor read-write))
)

(defclass Visitant_sol
    (is-a Visitant)
    (role concrete)
    (pattern-match reactive)
    (multislot tipus_de_comportament
        (type STRING)
        (create-accessor read-write))
)